/**
 * Created by Eiusan on 2015/3/25 0025.
 */
function drawContent(urlPram){
    debugger;
    if(!urlPram){
        urlPram="search?q=" + $("#reddit_form_search").val();
    }
    $("#searchButton").attr("disabled","true");
    //$("#searchButton").removeAttr("onclick");
    $("#searchButton").val("搜索中");
    $.post("/drawContent", {
        "searchMe" : urlPram
    }, function(data) {

        $("#contentDiv").html(data);
        //$("#searchButton").attr("onclick","drawContent()");
        $("#searchButton").removeAttribute("disabled");
        $("#searchButton").val("搜索");
    });
}