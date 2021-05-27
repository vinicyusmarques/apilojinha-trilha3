#language: pt

Funcionalidade: Cadastrar e Buscar produtos
    Como usuario quero cadastrar e buscar produtos na API

@cadprod
Cenario: Cadastrar produto na API
Dado o endpoint de produto para cadastro
E o usuario preenche as informações do produto 
Quando ele faz a requisição POST 
Entao é retornado os dados cadastrado com status code 201

@listaProd
Cenario: Buscar todos os produto na API
Dado o endpoint para busca de produto
Quando quando o usuario faz a requisição GET
Entao é retornado todos os produtos cadastrados com status code 200

@buscarProd
Cenario: Buscar produto na API
Dado o endpoint para busca de produto
E o usuario informe o ID do produto 
Quando quando ele faz a requisição GET
Entao é retornado os dados do produto com status code 200
