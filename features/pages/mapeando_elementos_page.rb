# frozen_string_literal: true

# Page para preencher o formulario
class MapeandoElementosPage < SitePrism::Page
  set_url '/users/new'

  # mapeando elemento
  # tem que colocar em uma variavel o elemento mapeado
  # por padrao busca por css
  # seria o find do capybara
  element :nome, '#user_name'

  def preencher_formulario
    # preencher com um valor no elemento mapeado
    # seria o set, fill_in ou send_keys do capybara
    nome.set 'vaneyck'
  end
end
