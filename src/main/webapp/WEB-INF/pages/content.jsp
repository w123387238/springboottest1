<%--
  Created by IntelliJ IDEA.
  User: Eiusan
  Date: 2015/3/24 0024
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="//www.redditstatic.com/reddit.Uh_Qtxiovdk.css" media="all">
<!--[if gte IE 8]><!-->
<link rel="stylesheet" href="http://b.thumbs.redditmedia.com/ba_fm376ctS_mGlZGabqddmkhth3jqnccUyhKW7iGBo.css" title="applied_subreddit_stylesheet" type="text/css">
<!--<![endif]-->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="//www.redditstatic.com/reddit-init.zh.Sndt3gzUm3g.js"></script>
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
        <%--<div class='row'>
            <div class="col-md-12 pager"></div>
            <div class="col-md-12" id='result'>
                <p>请点击搜索加载结果${zaza}</p>
            </div>
            <div class="col-md-12 pager"></div>
        </div>--%>
${content}
    </div>
