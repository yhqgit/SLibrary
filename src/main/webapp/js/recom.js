/**
 * Created by yhq on 2016/11/8.
 */
function getData(page, type) {
    $.ajax({
        url: "/Recommend/get",
        type: "GET",
        dataType: "json",
        data:{
            "page": page,
            "type": type
        },
        success: function (mydata) {
            for (var i=1; i<=5; i++)
                $("#rec" + i).hide();
            var p = mydata[0];
            $("#page_cnt").html("/ " + p["page_cnt"] + " ");
            for (var i=1; i<mydata.length; i++){
                var v = mydata[i];
                $("#book" + i).html(v["book_name"]);
                $("#reason" + i).html(v["reason"]);
                $("#rec" + i).show();
            }
            $("#pagination").show();
        },
        // when result is null
        error: function (mydata) {
            for (var i=1; i<=5; i++)
                $("#rec" + i).hide();
            $("#pagination").hide();
        }

    });
}

function getQueryString(name) {
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)
        return  unescape(r[2]);
    return null;
}

function jump(page){
    window.location.href="admin_recom.html?page=" + page + "";
}

function nextPage() {
    var page = getCurPage();
    page += 1;
    var pageCnt = getPageCnt();
    if (page > pageCnt)
        return ;
    jump(page);
}

function getCurPage() {
    var page = getQueryString("page");
    if (page == null)
        page = 1 + "";
    return parseInt(page);
}

function prePage() {
    var page = getCurPage();
    page -= 1;
    if (page < 1)
        return ;
    jump(page);
}

function jumpToInput() {
    var page = $("#page").val();
    var curPage = getCurPage();
    var pageCnt = getPageCnt();
    if (0 < page && page <= pageCnt && page != curPage){
        jump(page);
    }
}

function getPageCnt() {
    var pageCnt = $("#page_cnt").text().substr(2, 1);
    return parseInt(pageCnt);
}