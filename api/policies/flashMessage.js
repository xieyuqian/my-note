/**
 * 用于处理redirect跳转传递参数
 */

module.exports = function(req, res, next) {
  var err = req.session.error;
  delete req.session.error;
  res.locals.message = '';
  if (err) {
    res.locals.message = err;
  }
  next();
}
