# frozen_string_literal: true

# primeiro mapeia os elementos que estao dentro do iframe
class PaginaIframe < SitePrism::Page
  element :nome, '#first_name'
  element :ultimo_nome, '#last_name'
end

# depois mapeia o iframe em si
class PaginaPadrao < SitePrism::Page
  set_url '/mudancadefoco/iframe'

  # herda os elementos que esta mapeandos dentro o iframe
  iframe :preencher_campo, PaginaIframe, '#id_do_iframe'
end
