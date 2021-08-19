            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto da EBAC-SHOP

            Cenário: Limpando as configurações do produto
            Quando selecionar as informações obrigatórias do produto
            E clicar no botão "limpar"
            Então a configuração do produto deve voltar ao estado original

            Esquema do Cenário: Configurar múltiplos produtos
            Quando eu escolher o produto com o tamanho <size> e sendo <cor>
            E clicar para comprar uma quantidade de <qtd> produtos
            Então a <mensagem> de aviso é exibida

            Exemplos:
            | size | cor        | qtd | mensagem                                                                  |
            | "M"  | "vermelho" | "5" | "Este produto foi inserido no carrinho"                                   |
            |      | "branco"   | "9" | "Este produto não pode ser inserido. Selecione o tamanho do seu produto." |
            | "P"  |            | "3" | "Este produto não pode ser inserido. Selecione a cor do seu produto."     |
            | "G"  | "azul"     |     | "Este produto não pode ser inserido. Selecione a quantidade de produtos." |

            Esquema do Cenário: Quantidade de produtos por venda
            Quando eu escolher as <quantidade> de produtos por venda
            Então a <mensagem> de aviso é exibida

            Exemplos:
            | quantidade | mensagem                                                                         |
            | "02"       | "Produtos inseridos no carrinho com sucesso."                                    |
            | "06"       | "Produtos inseridos no carrinho com sucesso."                                    |
            | "09"       | "Produtos inseridos no carrinho com sucesso."                                    |
            | "10"       | "Produtos inseridos no carrinho com sucesso."                                    |
            | "12"       | "Limite de produtos por venda ultrapassado! O limite são de apenas 10 produtos." |
            | "15"       | "Limite de produtos por venda ultrapassado! O limite são de apenas 10 produtos." |