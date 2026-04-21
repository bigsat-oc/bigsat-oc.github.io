df = read.csv("./assets/docs/posters.csv", colClasses = "character")
writeLines(sprintf(
'<table id="%s">
  <tr>
    <td class="index" rowspan="3">
      %s
    </td>
    <td class="title">
      %s
    </td>
  </tr>
  <tr>
    <td class="speaker">
      %s (%s)
    </td>
  </tr>
  <tr>
    <td class="keywords">
      %s
    </td>
  </tr>
</table>',
  df$Index, df$Index, df$Abstract.Title, df$Name, df$Author.List, df$Abstract.Keywords
),"posters.html")

df = read.csv("./assets/docs/symposia.csv", colClasses = "character")
writeLines(sprintf(
  '<table id="%s">
  <tr>
    <td class="index" rowspan="3">
      <img src="assets/logo.png" style="width:100%%">
    </td>
    <td class="title">
      %s
    </td>
  </tr>
  <tr>
    <td class="speaker">
      %s (%s)
    </td>
  </tr>
  <tr>
    <td class="keywords">
      %s
    </td>
  </tr>
</table>',
  df$Index, df$Abstract.Title, df$Name, df$Author.List, df$Abstract.Keywords
),"symposia.html")

df = read.csv("./assets/docs/speedtalks.csv", colClasses = "character")
writeLines(sprintf(
  '<table id="%s">
  <tr>
    <td class="index" rowspan="3">
      <img src="assets/logo.png" style="width:100%%">
    </td>
    <td class="title">
      %s
    </td>
  </tr>
  <tr>
    <td class="speaker">
      %s (%s)
    </td>
  </tr>
  <tr>
    <td class="keywords">
      %s
    </td>
  </tr>
</table>',
  df$Index, df$Abstract.Title, df$Name, df$Author.List, df$Abstract.Keywords
),"speedtalks.html")

writeLines(sprintf('<img src="assets/%s" width="400px">', list.files(path = "./assets/gallery", full.names = FALSE, recursive = TRUE)), "gallery.html")
