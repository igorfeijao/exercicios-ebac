            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto da EBAC-SHOP

            Cenário: Produto inserido no carrinho
            Quando eu escolher o produto com o tamanho "M" e sendo "vermelho"
            E clicar para comprar uma quantidade de "5" produtos
            Então o produto será inserido no carrinho

            Cenário: Seleção de cor inexistente
            Quando eu escolher o produto com o tamanho "M"
            E clicar para comprar uma quantidade de "5" produtos
            Mas não informar a cor que desejo
            Então o produto não poderá ser inserido no carrinho

            Cenário: Seleção de tamanho inexistente
            Quando eu escolher o produto sendo "vermelho"
            E clicar para comprar uma quantidade de "5" produtos
            Mas não informar o tamanho que desejo
            Então o produto não poderá ser inserido no carrinho

            Cenário: Quantidade acima do limite por venda
            Quando eu escolher o produto com o tamanho "M"
            E sendo da cor "vermelho"
            Mas querer informar uma quantidade de "15" produtos
            Então o produto não poderá ser inserido no carrinho

            Cenário: Limpando as configurações do produto
            Quando eu escolher "5" unidades do produto sendo "vermelho" e do tamanho "M"
            E clicar no botão "limpar"
            Então a configuração do produto deve voltar ao estado original

            Esquema do Cenário: Configurar múltiplos produtos
            Quando eu escolher o produto com o tamanho <size> e sendo <cor>
            E clicar para comprar uma quantidade de <qtd> produtos
            Então o produto será inserido no carrinho

            Exemplos:
            | size | cor        | qtd |
            | "M"  | "vermelho" | "5" |
            | "XG" | "branco"   | "9" |
            | "P"  | "preto"    | "3" |
            | "G"  | "azul"     | "7" |

            Cenário: Configurar múltiplos produtos
            Dado que eu acesse a página de um produto da EBAC-SHOP
            Quando eu escolher o produto com as seguintes configurações:

            | size | cor        | qtd |
            | "M"  | "vermelho" | "5" |
            | "XG" | "branco"   | "9" |
            | "P"  | "preto"    | "3" |
            | "G"  | "azul"     | "7" |
            
            Então o produto será inserido no carrinho
