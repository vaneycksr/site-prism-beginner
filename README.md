# site-prism-beginner
Praticando padrão Page Object com site prism.


### Instalando a gem do site prism:
		
```shell    
	$ gem install site_prism
```

> No arquivo Gemfile:


	gem 'site_prism'


> Na pasta raiz do projeto:

```shell
	$ bundle install
```

> Criar a estrutura do projeto de acordo com o cucumber

```shell
	$ cucumber --init
```

> No arquivo env.rb
	
	require 'site_prism'

***OBS.: Criar uma pasta chamada pages dentro da pasta features que é onde irá ficar todos os page objects

### Executar os testes em vários ambientes

> Criar na pasta raiz um arquivo cucumber.yml que irá sobrescrever o cucumber padrão

> No novo arquivo, inserir as variáveis que foram configuradas para cada ambiente. Exemplo:
```shell
---

# define em qual ambiente os testes vao ser executados
# -p eh o profile, ou seja, o perfil no qual vai ser executado
default: --profile progress -p homolog
# pretty: --format pretty
progress: --format progress
homolog: AMBIENTE = homolog
producao: AMBIENTE = producao 
```
