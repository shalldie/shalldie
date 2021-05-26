👋 Hi，我是 `xieshuang` ，写过 `.net`、`node`，现在是个 `切图仔`，偶尔拯救世界。以下内容通过 [GitHub Action](https://github.com/shalldie/shalldie/actions) 自动更新：

<table>
<tr>
<td valign="top" width="50%">

#### 📜 <a href="<%= data.host %>/about" target="_blank">Overview 概览</a>

<!-- overview starts -->
-   🔭 正在努力工作
-   🤔 遇到感兴趣的都想去了解，最新的文章标签是：👇
-   <%= data.labels.map(lbl=> `<a href="${lbl.url}" target="_blank">${lbl.name}</a>`).join('、') %>
-   📫 可以通过邮箱联系我： hi.xieshuang@gmail.com
-   💬 看看我的 [个人博客](<%= data.host %>)，在 [留言板](<%= data.host %>/message) 告诉我点什么
<!-- overview ends -->

<img width="500" height="1">

</td>
<td valign="top" width="50%">

#### 📘 <a href="<%= data.host %>" target="_blank">Recent articles 最近写的东西</a>

<!-- blog starts -->
<% for (var i = 0; i < data.list.length; i++) { %>
-   <a href="<%= data.list[i].url %>" target="_blank"><%= data.list[i].title %></a> - <%= data.list[i].publishTime %><% } %>
<!-- blog ends -->

<img width="500" height="1">

</td>
</tr>
</table>