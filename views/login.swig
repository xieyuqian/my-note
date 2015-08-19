<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>MY-NOTE</title>
    <link href="//cdn.bootcss.com/semantic-ui/2.0.8/semantic.min.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      body {
        color: #6f7b8a;
        font-family: 'Arial';
        font-size: 13px;
      }
      body > .grid {
        height: 100%;
      }
      .image {
        margin-top: -100px;
      }
      .column {
        max-width: 450px;
      }
    </style>
    <script>
      $(document).ready(function () {
        $("#login :input").focus(function(){
          var classStr = $("#verify-message").attr("class");
          var firstChild = $("#verify-message:first-child");
          if(classStr.indexOf("visible") > 0){
            //console.log('test 01');
            $("#verify-message").removeClass("visible");
          } else if(firstChild) {
            $("#verify-message").addClass("hidden");
          }
        });
        $('.ui.form')
          .form({
            fields: {
              email: {
                identifier  : 'email',
                rules: [
                  {
                    type   : 'empty',
                    prompt : '请输入邮箱地址'
                  },
                  {
                    type   : 'email',
                    prompt : '邮箱地址格式有误'
                  }
                ]
              },
              password: {
                identifier  : 'password',
                rules: [
                  {
                    type   : 'empty',
                    prompt : '请输入密码'
                  },
                  {
                    type   : 'length[6]',
                    prompt : '密码至少需要6个字符'
                  }
                ]
              }
            }
          });
      });
    </script>
  </head>
  <body>
    <div class="ui middle aligned center aligned grid">
      <div class="column">
        <h2 class="ui teal image header">
          <img src="/images/tx.jpg" class="image">
          <div class="content">
            登录MY-NOTE
          </div>
        </h2>
        <form id="login" class="ui large form" action="/verifyUser" method="post">
          <div class="ui stacked segment">
            <div class="field">
              <div class="ui left icon input">
                <i class="user icon"></i>
                <input type="text" name="email" placeholder="邮箱地址">
              </div>
            </div>
            <div class="field">
              <div class="ui left icon input">
                <i class="lock icon"></i>
                <input type="password" name="password" placeholder="密码">
              </div>
            </div>
            <div id="loginBtn" class="ui fluid large teal submit button">登录</div>
          </div>

          <div id="verify-message" class="ui error {% if message %}visible{% endif %} message">{{message}}</div>

        </form>

        <div class="ui message">
          新用户? <a href="/register">注册</a>/<a href="/">首页</a>
        </div>
      </div>
    </div>
    <!--
    <script src="/js/dependencies/sails.io.js"></script>
    -->
    <script src="//cdn.bootcss.com/semantic-ui/2.0.8/semantic.min.js"></script>
  </body>
</html>
