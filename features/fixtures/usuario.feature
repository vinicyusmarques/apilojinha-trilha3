#language: pt

Funcionalidade: Cadastrar usuário 
    Quero me cadastrar como usuario
    Para ter acesso aos recursos da API

@caduser
Cenário: Cadastrar usuário para acessar API
Dado o endpoint de usuario para cadastro
E o usuario informe nome, usuario e senha
Quando ele faz uma requisição POST
Entao é retornado os dados cadastrado com status code 201

# Cenário: Cadastrar usuário existente na API
# Dado que o usuario "informe nome, usuario e senha"
# Quando é feito a requisição POST no endpoint usuario
# Então é retornado a mensagem de que o usuário já existe

# Cenário: Cadastrar usuário com informações faltantes
# Dado que o usuario "não informe o nome, usuario ou senha"
# Quando é feito a requisição POST no endpoint usuario
# Então é alertado que a requisição teve conflito com servidor