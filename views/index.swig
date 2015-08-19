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
    </style>
    <script>
      $(document).ready(function () {
        // show dropdown on hover
        $('.main.menu  .ui.dropdown').dropdown({
          on: 'hover'
        });
      });
    </script>
  </head>
  <body>
    <div class="ui borderless main menu">
      <div class="ui text container">
        <div class="header item">
          <!--
          <img class="logo" src="assets/images/logo.png">
          -->
          <a href="/">MY-NOTE</a>
        </div>
        <div class="ui right item">
          {% if session.userinfo %}
          <img class="ui avatar image" src="/images/tx.jpg">
          <div class="ui floating dropdown">
            {{session.userinfo.name}} <i class="dropdown icon"></i>
            <div class="menu">
              <div class="item"><i class="user icon">&nbsp;个人中心</i><div style="width:75px;"></div></div>
              <div class="item"><i class="setting icon">&nbsp;系统设置</i></div>
              <div class="item"><a href="/logout"><i class="sign out icon">&nbsp;退出</i></a></div>
            </div>
          </div>
          {% else %}
          <div class="ui buttons">
          <a href="/login" class="ui button">登录</a>
            <div class="or"></div>
            <a href="/register" class="ui positive button">注册</a>
          </div>
          {% endif %}
        </div>
      </div>
    </div>
    <div style="height: 20px;"></div>
    <div class="ui container">
      <div class="ui piled segment">
        <h2 class="ui header"><a href="/note/1">A header</a></h2>
        <img class="ui small left floated image" src="/images/test.jpg">
        <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at. Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in. Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
        <p>Audiam quaerendum eu sea, pro omittam definiebas ex. Te est latine definitiones. Quot wisi nulla ex duo. Vis sint solet expetenda ne, his te phaedrum referrentur consectetuer. Id vix fabulas oporteat, ei quo vide phaedrum, vim vivendum maiestatis in.</p>
        <p>Eu quo homero blandit intellegebat. Incorrupte consequuntur mei id. Mei ut facer dolores adolescens, no illum aperiri quo, usu odio brute at. Qui te porro electram, ea dico facete utroque quo. Populo quodsi te eam, wisi everti eos ex, eum elitr altera utamur at. Quodsi convenire mnesarchum eu per, quas minimum postulant per id.</p>
        <div class="metadata">
          <i class="wait icon"></i><span class="date">5 小时前</span>
        </div>
      </div>
      <div class="ui piled segment">
        <h2 class="ui header">A header</h2>
        <img class="ui small left floated image" src="/images/test.jpg">
        <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at. Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in. Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
        <p>Audiam quaerendum eu sea, pro omittam definiebas ex. Te est latine definitiones. Quot wisi nulla ex duo. Vis sint solet expetenda ne, his te phaedrum referrentur consectetuer. Id vix fabulas oporteat, ei quo vide phaedrum, vim vivendum maiestatis in.</p>
        <p>Eu quo homero blandit intellegebat. Incorrupte consequuntur mei id. Mei ut facer dolores adolescens, no illum aperiri quo, usu odio brute at. Qui te porro electram, ea dico facete utroque quo. Populo quodsi te eam, wisi everti eos ex, eum elitr altera utamur at. Quodsi convenire mnesarchum eu per, quas minimum postulant per id.</p>
        <div class="metadata">
          <i class="wait icon"></i><span class="date">1 天前</span>
        </div>
      </div>
      <div class="ui piled segment">
        <h2 class="ui header">A header</h2>
        <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at. Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in. Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
        <p>Audiam quaerendum eu sea, pro omittam definiebas ex. Te est latine definitiones. Quot wisi nulla ex duo. Vis sint solet expetenda ne, his te phaedrum referrentur consectetuer. Id vix fabulas oporteat, ei quo vide phaedrum, vim vivendum maiestatis in.</p>
        <p>Eu quo homero blandit intellegebat. Incorrupte consequuntur mei id. Mei ut facer dolores adolescens, no illum aperiri quo, usu odio brute at. Qui te porro electram, ea dico facete utroque quo. Populo quodsi te eam, wisi everti eos ex, eum elitr altera utamur at. Quodsi convenire mnesarchum eu per, quas minimum postulant per id.</p>
      </div>
      <div class="ui piled segment">
        <h2 class="ui header">A header</h2>
        <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at. Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in. Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
        <p>Audiam quaerendum eu sea, pro omittam definiebas ex. Te est latine definitiones. Quot wisi nulla ex duo. Vis sint solet expetenda ne, his te phaedrum referrentur consectetuer. Id vix fabulas oporteat, ei quo vide phaedrum, vim vivendum maiestatis in.</p>
        <p>Eu quo homero blandit intellegebat. Incorrupte consequuntur mei id. Mei ut facer dolores adolescens, no illum aperiri quo, usu odio brute at. Qui te porro electram, ea dico facete utroque quo. Populo quodsi te eam, wisi everti eos ex, eum elitr altera utamur at. Quodsi convenire mnesarchum eu per, quas minimum postulant per id.</p>
      </div>
    </div>
    <!--
    <script src="/js/dependencies/sails.io.js"></script>
    -->
    <script src="//cdn.bootcss.com/semantic-ui/2.0.8/semantic.min.js"></script>
  </body>
</html>
