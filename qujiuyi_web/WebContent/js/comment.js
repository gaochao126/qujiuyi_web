var submiting = 0;
$("#commentNewsForm .subBtn").click(function(){
    if (submiting != 0){
        return;
    }
    submiting = 1;
    var li = $("hiddenLi").clone(true);
    $(".commentList").prepend(li);
    $.ajax({
        type     :   "POST",
        url      :   $("#commentNewsForm").attr("action"),
        data     :   $("#commentNewsForm").serialize(),
        dataType :   "json",
        success  :   function(data) {
            if (data.resultCode == 0) {
                alert("评论成功");
                var li = $("#hiddenLi").clone(true);
                li.find("#content").html($("#commentNewsForm").find("textarea").val());
                li.find(".userNameMod").html("压马路<i>&nbsp;&bull;&nbsp;刚刚</i>");
                $(".commentList").prepend("<li>" + li.html() + "</li>");
                $("#commentNewsForm").find("textarea").val('');
            } else if (data.resultCode == 1) {
                alert(data.resultDesc);
            } else if (data.resultCode == 2) {
                alert("请登录后再评论");
            }
            submiting = 0;
        }
    });
});