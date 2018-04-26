#language: pt
#encoding: utf-8

@executa_tudo_teste
Funcionalidade: Efetuar Pesquisa Google

Contexto:
  Dado que abra a pagina de pesquisa do Google "www.google.com.br"

@Efetuar_Pesquisa_Google
Cenário: Efetuar_Pesquisa_Google
  Dado preencher o campo de pesquisas "Automação de Testes"
  Quando clicar na tecla Enter
  Então será apresentado o resultado das buscas