# frozen_string_literal: true

class MapeandoListas < SitePrism::Page
  set_url '/buscaelementos/table'

  # mapeia uma lista de elementos
  elements :lista, 'tr > td'
end
