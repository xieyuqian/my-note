/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var validator = require('validator');
var crypto = require('crypto');

function addFlashErrorMessage(req, message) {
  req.session.error = message;
}

function encryptPassword(password) {
  var shasum = crypto.createHash('sha1');
  shasum.update(password);
  return shasum.digest('hex');
}

module.exports = {
  login: function(req, res, next){
    res.view('login');
  },
	register: function (req, res, next) {
    res.view('register');
  },
  logout: function (req, res, next) {
    req.session.userinfo=null;
    res.redirect('/login');
  },
  saveUser: function (req, res, next) {
    var email = req.param('email');
    if (!validator.isEmail(email)) {
      addFlashErrorMessage(req, '邮箱地址格式错误!');
      res.redirect('/register');
    }
    var password = req.param('password');
    if (!validator.isLength(password, 6, 30)) {
      addFlashErrorMessage(req, '密码输入错误!');
      res.redirect('/register');
    }
    var username = req.param('username');
    if (username.length > 30) {
      addFlashErrorMessage(req, '姓名输入错误!');
      res.redirect('/register');
    }
    User.create({email:email,password:password,name:username}).exec(function (err, created) {
      //console.log('error: ' + err);
      if(err) {
        addFlashErrorMessage(req, '系统出错，注册用户失败!');
        res.redirect('/register');
      } else {
        //console.log('created user with email: ' + created.email);
        res.redirect('/login');
      }
    });
  },
  verifyUser: function(req, res, next) {
    var email = req.param('email');
    var password = req.param('password');
    //console.log("email: " + email);
    //console.log("password: " + password);
    User.findOne({email:email}).exec(function (err, user) {
      //console.log(err);
      if (err) {
        addFlashErrorMessage(req, '用户名或密码错误!');
        res.redirect('/login');
      }
      if (!user) {
        addFlashErrorMessage(req, '用户名或密码错误!');
        res.redirect('/login');
      } else {
        var p1 = encryptPassword(password);
        console.log(p1)
        if (p1 !== user.password) {
          console.log('密码不相等');
          addFlashErrorMessage(req, '用户名或密码错误!');
          res.redirect('/login');
        } else {
          var userinfo = {};
          userinfo.id = user.id;
          userinfo.email = user.email;
          userinfo.name = user.name;

          //console.log(userinfo.email);
          req.session.userinfo=userinfo
          res.redirect('/');
        }
      }
    });
    //User.findOne({
    //  email:email
    //}, function (err, user) {
    //  console.log(err);
    //  if (err) {
    //    res.view('login', {state:'error', message:'用户名或密码错误!'});
    //  }
    //  if (!user) {
    //    res.view('login', {state:'error', message:'用户名或密码错误!'});
    //  }
    //});
    //req.session.user = {username:'谢晓峰',email:'xieyq@flyme.cn'}
    //res.redirect('/');
  },
  user: function (req, res, next) {
    res.view('register');
  }
};

