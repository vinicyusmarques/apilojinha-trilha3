#language: pt

Funcionalidade: Login na API
    Quero realizar login
    Para ter receber o token de autorização

@login
Cenario: Realizar login na API
Dado o endpoint de login da API
E o usuario informa os dados de autenticação
Quando ele faz a requisição POST na API
Então deverá receber token de autorização com status code 200