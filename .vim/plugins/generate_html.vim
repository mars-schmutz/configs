"
"<This plugin generates html tags to new html files>
"

autocmd BufNewFile *.html call Generate_html()

function! Generate_html()
        call append("$", "<!DOCTYPE html>")
        call append("$", "<html lang='en'>")
        call append("$", "  <head>")
        call append("$", "      <meta charset='UTF-8'>")
        call append("$", "      <meta name='viewport' content='width=device-width, initial-scale=1.0'>")
        call append("$", "      <meta http-equiv='X-UA-Compatible' contents='ie=edge'>")
        call append("$", "      <title></title>")
        call append("$", "  </head>")
        call append("$", "  <body>")
        call append("$", "      ")
        call append("$", "  </body>")
        call append("$", "</html>")
endfunction
