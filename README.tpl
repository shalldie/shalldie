ð Hiï¼ææ¯ `xieshuang` ï¼åè¿ `.net`ã`node`ã`golang`ï¼ç°å¨æ¯ä¸ª `åå¾ä»`ï¼å¶å°æ¯æä¸çã

ä»¥ä¸åå®¹éè¿ [GitHub Action](https://github.com/shalldie/shalldie/actions) èªå¨æ´æ°ï¼

<table>
<tr>
<td valign="top" width="50%">

#### ð [Overview æ¦è§](<%= data.url.about %>)

<!-- overview starts -->
-   ð­ æ­£å¨åªåå·¥ä½
-   ð¤ éå°æå´è¶£çé½æ³å»äºè§£ï¼ææ°çæç« æ ç­¾æ¯ï¼ð
-   <%= data.labels.map(lbl=> `[${lbl.name}](${lbl.url})`).join('ã') %>
-   ð« å¯ä»¥éè¿é®ç®±èç³»æï¼ hi.xieshuang@gmail.com
-   ð¬ ççæç [ä¸ªäººåå®¢](<%= data.url.index %>)ï¼å¨ [çè¨æ¿](<%= data.url.message %>) åè¯æç¹ä»ä¹
<!-- overview ends -->

<img width="500" height="1">

</td>
<td valign="top" width="50%">

#### ð [Recent articles æè¿åçä¸è¥¿](<%= data.url.article %>)

<!-- blog starts -->
<% for (var i = 0; i < data.list.length; i++) { %>
-   [<%= data.list[i].title %>](<%= data.list[i].url %>) - <%= data.list[i].publishTime %><% } %>
<!-- blog ends -->

<img width="500" height="1">

</td>
</tr>
</table>