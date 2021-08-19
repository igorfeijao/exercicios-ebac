            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha comprar

            Contexto:
            Dado que eu acesse a página de cadastro de novo usuário do portal da EBAC-SHOP

            Cenário: Todos os campos vazios
            Quando eu não preencher nenhum campo obrigatórios
            E clicar para concluir o cadastro
            Então deve ser exibida uma mensagem de alerta "Nenhum campo obrigatório preenchido."

            Esquema do Cenário: Cadastro múltiplos de usuários
            Quando eu digitar <nome> <sobrenome>, além de colocar <telefone>
            E preencher <endereco> <cidade> <cep> <pais>
            Então a seguinte <mensagem> aparece para o cliente

            | nome       | sobrenome      | telefone     | endereco                            | cidade          | cep        | pais     | mensagem                                                                  |
            | "Marlene"  | "Olivia"       | "6738343658" | "Rua São Mateus, 756"               | "Campo Grande"  | "79117210" | "Brasil" | "Sua compra poderá ser finalizada."                                       |
            |            | "Melissa"      | "6738129309" | "Rua Maria Moreira de Queiroz, 138" | "Três Lagoas"   | "79620174" | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Marcela"  |                | "8327535808" | "Rua Papa Leão XIII, 883"           | "João Pessoa"   | "58027853" | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Mariane"  | "da Conceição" |              | "Quadra 42 Comércio Local s/n"      | "Brasília"      | "72465425" | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Vinicius" | "Fernandes"    | "8238296178" |                                     | "Maceió"        | "57043382" | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Bryan"    | "Benjamin"     | "6137834731" | "Quadra QS 5 Rua 100"               | "Brasília"      |            | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Benjamin" | "Severino"     | "6529348676" | "Rua Jaciara, 615"                  | "Várzea Grande" | "78142540" |          | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            |            |                | "6136701483" |                                     |                 |            |          | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            | "Erick"    | "Barros"       |              |                                     |                 |            |          | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |
            |            |                |              | "Quadra 305 Norte Alameda 3"        | "Palmas"        | "77001352" | "Brasil" | "Sua compra não pode ser finalizada. Preencha todos campos obrigatórios." |

            Cenário: Cadastro com e-mail inválido
            Dado que eu preenche meu cadastro com os seguintes e-mails

            Exemplos:
            | email                                |
            | "nicoleyasmincosta@trincheira.co.br" |
            | "erickbarros@securitycontrol.combr"  |
            | "mariofarias@ce.com.b"               |

            Quando eu preencher o cadastro com os dados obrigatórios
            Então deve ser exibida uma mensagem "O formato do e-mail é inválido"