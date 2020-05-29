# frozen_string_literal: true

# mapeia os elementos da sessao, ou seja,
# os elementos que sempre vai ter incomum na pagina
class Sessao < SitePrism::Section
  element :youtube, 'a[href="href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA""]'
  element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
end

# mapeia a sessao como um todo
class Pagina < SitePrism::Page
  set_url '/buscaelementos/radioecheckbox'
  # herda os elementos que se repetem
  # mapeia aonde esses elementos estao na pagina
  section :navbar, Sessao, '.nav-wrapper'
end
