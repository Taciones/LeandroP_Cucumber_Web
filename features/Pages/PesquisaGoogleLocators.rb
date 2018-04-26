#encoding: utf-8

require 'magic_encoding'

class PesquisaGoogleLocators
    
    def botao_calc(name)
        return $win.find(control_type: :button, name: name)
    end

    def input_caixa_pesquisa
        sleep 2
        return $browser.input(id: "lst-ib")
    end

    def div_estatis_result
        $browser.div(id: "resultStats")
    end

end