# frozen_string_literal: true

When('preencho o formulario') do
  @mapeando = MapeandoElementosPage.new
  @mapeando.load

  @mapeando.preencher_formulario
end
