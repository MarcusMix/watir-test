require 'watir'

# Abre o navegador Chrome
browser = Watir::Browser.new :chrome

# Navega para a URL especificada
browser.goto 'https://www.google.com'

sleep 5

# Insere uma consulta no campo de pesquisa
browser.text_field(name: 'q').set 'Watir'

# Clica no botão de pesquisa
browser.button(type: 'submit').click

# Espera até que os resultados da pesquisa apareçam
browser.div(id: 'search').wait_until(&:present?)

# Fecha o navegador
browser.close