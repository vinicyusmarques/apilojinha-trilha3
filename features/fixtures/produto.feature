#language: pt

Funcionalidade: Cadastrar produto 
    Como usuario quero cadastrar produtos na API

@cadprod
Cenario: Cadastrar produto na API
Dado o endpoint de produto para cadastro
E o usuario preenche as informações do produto 
Quando ele faz a requisição GET 
Entao é retornado os dados cadastrado com status code 201