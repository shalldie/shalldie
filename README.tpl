👋 Hi，我是 `xieshuang` ，写过 `.net`、`node`、`golang`，现在是个 `切图仔`，偶尔拯救世界。

以下内容通过 [GitHub Action](https://github.com/shalldie/shalldie/actions) 自动更新：

<table>
<tr>
<td valign="top" width="50%">

#### 📜 [Overview 概览](<%= data.url.about %>)

<!-- overview starts -->
-   🔭 正在努力工作
-   🤔 遇到感兴趣的都想去了解，最新的文章标签是：👇
-   <%= data.labels.map(lbl=> `[${lbl.name}](${lbl.url})`).join('、') %>
-   📫 可以通过邮箱联系我： hi.xieshuang@gmail.com
-   💬 看看我的 [个人博客](<%= data.url.index %>)，在 [留言板](<%= data.url.message %>) 告诉我点什么
<!-- overview ends -->

<img width="500" height="1">

</td>
<td valign="top" width="50%">

#### 📘 [Recent articles 最近写的东西](<%= data.url.article %>)

<!-- blog starts -->
<% for (var i = 0; i < data.list.length; i++) { %>
-   [<%= data.list[i].title %>](<%= data.list[i].url %>) - <%= data.list[i].publishTime %><% } %>
<!-- blog ends -->

<img width="500" height="1">

</td>
</tr>
</table>