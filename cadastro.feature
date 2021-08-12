            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha comprar

            Contexto:
            Dado que eu acesse a página de cadastro de novo usuário do portal da EBAC-SHOP

            Cenário: Cadastro realizado
            Quando eu digitar "Jorge" (nome) "Araujo" (sobrenome), além de colocar "24038348" (telefone)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP), "Brasil" (país)
            Então a compra poderá ser finalizada

            Cenário: Campo "nome" vazio
            Quando eu digitar "Araujo" (sobrenome), além de colocar "24038348" (telefone)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP), "Brasil" (país)
            Mas deixar em branco o campo de nome
            Então deve ser exibida uma mensagem de alerta

            Cenário: Campo "sobrenome" vazio
            Quando eu digitar "Jorge" (nome), além de colocar "24038348" (telefone)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP), "Brasil" (país)
            Mas deixar em branco o campo de sobrenome
            Então deve ser exibida uma mensagem de alerta

            Cenário: Campo "telefone" vazio
            Quando eu digitar "Jorge" (nome) "Araujo" (sobrenome)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP), "Brasil" (país)
            Mas deixar em branco o campo de telefone
            Então deve ser exibida uma mensagem de alerta

            Cenário: Campo "endereço" vazioEntão
            Então deve ser exibida uma mensagem de alerta

            Cenário: Campo "CEP" vazio
            Quando eu digitar "Jorge" (nome) "Araujo" (sobrenome), além de colocar "24038348" (telefone)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "Brasil" (país)
            Mas deixar em branco o campo de CEP
            Então deve ser exibida uma mensagem de alerta

            Cenário: Campo "país" vazio
            Quando eu digitar "Jorge" (nome) "Araujo" (sobrenome), além de colocar "24038348" (telefone)
            E preencher "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP)
            Mas deixar em branco o campo de páis
            Então deve ser exibida uma mensagem de alerta

            Cenário: Somente campo "telefone" preenchido
            Quando eu digitar "24038348" (telefone)
            Mas deixar em branco os campos restantes
            Então deve ser exibida uma mensagem de alerta

            Cenário: Somente os campos referente ao nome preenchidos
            Quando eu digitar "Jorge" (nome) "Araujo" (sobrenome)
            Mas deixar em branco os campos restantes
            Então deve ser exibida uma mensagem de alerta

            Cenário: Somente os campos referente ao endereço preenchidos
            Quando eu digitar "Rua das Amoras, 56" (endereço) - "Rio de Janeiro" (cidade), "24597-459" (CEP)
            Mas deixar em branco os campos restantes
            Então deve ser exibida uma mensagem de alerta

            Cenário: Cadastro com e-mail inválido
            Quando eu digitar "jorgeebac@gmai.cot"
            E os campos restantes da forma correta
            Então deve ser exibida uma mensagem "O formato do e-mail é inválido"

            Esquema do Cenário: Cadastro múltiplos de usuários
            Quando eu digitar <nome> <sobrenome>, além de colocar <telefone>
            E preencher <endereco> <cidade> <cep> <pais>
            Então a compra poderá ser finalizada

            | nome      | sobrenome  | telefone     | endereco             | cidade           | cep          | pais     |
            | "Jorge"   | "Araujo"   | "24037849" " | "Rua das Amoras, 56" | "Rio de Janeiro" | "45.629-596" | "Brasil" |
            | "Maicon"  | "Oliveira" | "25964586"   | "Rua Felizardo, 53"  | "São Paulo"      | "12.695-456" | "Brasil" |
            | "Mariana" | "Gouveia"  | "45294512"   | "Rua Tiradentes, 12" | "Minas Gerais"   | "23.563-110" | "Brasil" |