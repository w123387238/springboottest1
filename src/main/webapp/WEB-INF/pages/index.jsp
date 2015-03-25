<%--
  Created by IntelliJ IDEA.
  User: Eiusan
  Date: 2015/3/25 0024
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RedditExam</title>
    <link href="http://reddit.easya.cc/assets/bootcss-37e86e79d6f83b8b0a120e1acfe93482.css" media="all" rel="stylesheet" />
    <link href="http://reddit.easya.cc/assets/application-e82b7b61f31d970bff8c5dbaae73562a.css" media="all" rel="stylesheet" />
    <script src="http://reddit.easya.cc/assets/application-a9542e54d5b08faaeadc81a54dc35ba7.js"></script>
    <script src="/script/exam1js.js"></script>
    <meta content="authenticity_token" name="csrf-param" />
</head>
<body>
<div class="container">
    <header class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#reddit-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://easya.cc" id="logo"> </a>
            </div>

            <nav class="collapse navbar-collapse" id="reddit-navbar">
                <ul class="nav navbar-nav">
                    <li class=""><a href='javascript:void(0);'>笔试题</a></li>
                    <li class="active"><a href='/example'>真·克隆·例子</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="container" id="contentDiv">
        <div class='row search'>
            <form accept-charset="UTF-8" action="/example" class="new_reddit_form" data-remote="true" id="new_reddit_form" method="post"><div style="display:none"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                <div class='col-md-3 col-sm-4 col-xs-6'>
                    <input class="form-control" id="reddit_form_search" name="reddit_form[search]" placeholder="留空可获取首页内容" type="text" />
                </div>
                <div class='col-md-1 col-sm-2 col-xs-2'>
                    <input class="btn btn-info" data-disable-with="提交中" id="searchButton" name="commit" onclick="drawContent()" value="搜索" />
                </div>
            </form>  <div class='col-md-1 col-sm-2 col-xs-3 pull-right'>
            <a class="btn btn-success" href="http://www.reddit.com" id="reddit_website" target="_blank">Reddit</a>
        </div>
        </div>

        <hr>

        <div class='row'>
            <div class="col-md-12 pager"></div>
            <div class="col-md-12" id='result'>
                <p>请点击搜索加载结果</p>
            </div>
            <div class="col-md-12 pager"></div>
        </div>

    </div>

    <div class='container'>
        <footer class='footer'>
            <div class='col-md-4 col-sm-4 col-xs-12 left'>
                <p>Copyright © 2015 长沙蓝拓电子商务有限公司</p>
            </div>
            <div class='col-md-4 col-sm-4 col-xs-12 middle'>
                <p><a href="https://github.com/wppurking/reddit_exam">GitHub.com</a></p>
            </div>
            <div class='col-md-4 col-sm-4 col-xs-12 right'>
                <p><a href="#">Back to top</a></p>
            </div>
        </footer>
    </div>
</body>
</html>
