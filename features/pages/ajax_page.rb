# frozen_string_literal: true

# teste
class AjaxPage < SitePrism::Page
  set_url '/buscaelementos/botoes'

  element :botao, '#teste'
  element :mensagem, '#div1'

  def clicar_botao
    # espera que o botao esteja na tela
    # para ser clicado
    # wait_for_botao
    botao.click
  end
end
