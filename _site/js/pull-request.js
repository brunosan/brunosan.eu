////Idea taken from https://github.com/dfm
///https://raw.github.com/dfm/dfm.github.com/master/assets/comments.js

var prose_url = "http://prose.io/#brunosan/brunosan.eu/master/_posts/";
var github_url = "https://github.com/brunosan/brunosan.eu/edit/master/_posts/";

$(function() {

    $("#pull-request-btn").click(function () {
        var data = $(this).data();
        var path = data.title.split("/");
        var url = github_url + data.date + "-" + path[path.length-1] + ".md";
        window.location = url;
        return false;
    });
});

