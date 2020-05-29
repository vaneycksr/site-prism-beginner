# frozen_string_literal: true

When('clico no elemento da sessao') do
  @pagina = Pagina.new
  @pagina.load

  # clicar em um dos elementos da sessao
  @pagina.navbar.medium.click
end
