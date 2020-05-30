# frozen_string_literal: true

# page todos os arquivos que terminam com page.rb
# da um require em todos, ou seja, agora posso instanciar todos
# em um mesmo arquivo
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].sort.each do |file|
  require file
end

# modulo que pode ser usado em todo o projeto
module PageObjects
  def home
    # ||= serve para casa a classe ja esteja instanciado nao precise instanciar
    # de novo, e se nao tiver instanciada, instancia
    @home ||= MapeandoElementosPage.new
  end
end
