# frozen_string_literal: true

When('mapeio uma tabela') do
  @lista_de_elementos = MapeandoListas.new

  @lista_de_elementos.load

  # puts @lista_de_elementos.lista[2].text

  @lista_de_elementos.lista.each do |e|
    puts e.text
  end
end
