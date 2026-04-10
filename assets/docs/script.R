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
    <td class="index" rowspan="4">
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
    <td class="room">
      %s (%s)
    </td>
  </tr>
  <tr>
    <td class="keywords">
      %s
    </td>
  </tr>
</table>',
  df$Index, df$Index, df$Abstract.Title, df$Name, df$Author.List, df$Location, df$Stream, df$Abstract.Keywords
),"symposia.html")

df = read.csv("./assets/docs/speedtalks.csv", colClasses = "character")
writeLines(sprintf(
  '<table id="%s">
  <tr>
    <td class="index" rowspan="4">
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
    <td class="room">
      %s (%s)
    </td>
  </tr>
  <tr>
    <td class="keywords">
      %s
    </td>
  </tr>
</table>',
  df$Index, df$Index, df$Abstract.Title, df$Name, df$Author.List, df$Location, df$Stream, df$Abstract.Keywords
),"speedtalks.html")
