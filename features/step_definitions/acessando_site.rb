# frozen_string_literal: true

When('acesso a url') do
  @home = PaginaInicial.new

  # carrega o url do page object
  # se nao colocar o load, nao abre o browser
  @home.load
end

Then('verifico se estou na pagina inicial') do
  expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end
