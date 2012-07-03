////Idea taken from https://github.com/dfm
///https://raw.github.com/dfm/dfm.github.com/master/assets/comments.js

var github_url = "http://prose.io/#brunosan/brunosan.eu/gh-pages/_posts/";
/// use github var github_url = "https://github.com/brunosan/brunosan.eu/edit/gh-pages/_posts/";

$(function() {

    $("#pull-request-btn").click(function () {
        var data = $(this).data();
        var path = data.title.split("/");
        var url = github_url + data.date + "-" + path[path.length-1] + ".md";
        window.location = url;
        return false;
    });
});

