# frozen_string_literal: true

When('preencho os campos') do
  @pagina_iframe = PaginaPadrao.new
  @pagina_iframe.load

  # cria um bloco para manipular os elementos do iframe
  @pagina_iframe.preencher_campo do |iframe|
    iframe.nome.set 'vaneyck'
    iframe.ultimo_nome.set 'rosas'
  end
end
