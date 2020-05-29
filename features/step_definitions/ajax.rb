# frozen_string_literal: true

When('clico no botao') do
  @ajax = AjaxPage.new
  @ajax.load

  # @ajax.wait_for_botao
  @ajax.clicar_botao
end

Then('verifico se apareceu') do
  # @ajax.wait_for_mensagem
  expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end
