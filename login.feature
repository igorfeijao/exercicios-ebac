            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "igor@gmail.com"
            E a senha "ebac@135"
            Então deve exibir uma mensagem de boas vindas "Olá, Igor. Login feito com sucesso!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "igor1@gmail.com.br"
            E a senha "ebac@135"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "igor@gmail.com"
            E a senha "ebac-123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                  | senha        | mensagem                                     |
            | "igor@gmail.com"         | "ebac@135"   | "Olá, Igor. Login feito com sucesso!"        |
            | "luisfelipe@hotmail.com" | "ebac@123"   | "Olá, Luis Felipe. Login feito com sucesso!" |
            | "fernanda@gmail.com"     | "ebac-fe123" | "Olá, Fernanda. Login feito com sucesso!"    |

            Cenário: Autenticar múltiplos usuários
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            E preencha os dados obrigatórios dos seguintes usuários:

            Exemplos:
            | usuario                  | senha        |
            | "igor@gmail.com"         | "ebac@135"   |
            | "luisfelipe@hotmail.com" | "ebac@123"   |
            | "fernanda@gmail.com"     | "ebac-fe123" |

            Então deve exibir uma mensagem de sucesso