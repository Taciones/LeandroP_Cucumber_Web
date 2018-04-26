#encoding: utf-8

require './features/Pages/PesquisaGooglePage'

pesq = PesquisaGooglePage.new

Dado(/^que abra a pagina de pesquisa do Google "([^"]*)"$/) do |url|
    pesq.navega(url)
    captura_browser
end

Dado(/^preencher o campo de pesquisas "([^"]*)"$/) do |pesquisa|
    pesq.preencher_campo_pesquisa(pesquisa)
    captura_browser
end

Quando(/^clicar na tecla Enter$/) do
    pesq.tecla_enter
    captura_browser
end

Então(/^será apresentado o resultado das buscas$/) do
    pesq.valida_tela_resultado
    captura_browser
end