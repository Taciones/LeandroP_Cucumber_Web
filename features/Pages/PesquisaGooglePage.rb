#encoding: utf-8

require 'magic_encoding'

class PesquisaGooglePage < PesquisaGoogleLocators

    def navega(url)
        $browser.goto url
    end

    def preencher_campo_pesquisa(pesquisa)
        input_caixa_pesquisa.send_keys pesquisa
    end
    
    def tecla_enter
        $browser.send_keys :enter
    end

    def verifica_result(result)
        raise "Resultado apresentado <#{tela_result.name}> é diferente do informado <#{result}>" if tela_result.name != result
    end

    def valida_tela_resultado
        raise "Ocorreu uma falha ao retornar resultados" if !div_estatis_result.exists?
    end

end