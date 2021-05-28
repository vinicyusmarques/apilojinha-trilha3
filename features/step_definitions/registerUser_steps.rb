Dado('o endpoint de {string} para cadastro') do |string|
  $uri = $url << string
  end
  
  Dado('o usuario informe nome, usuario e senha') do
    
    @body = {
            "usuarionome": Faker::Name.name,
            "usuariologin": Faker::Name.name,
            "usuariosenha": "123456"
          }.to_json
    @register = User.new(@body)
  end
  
  Quando('ele faz uma requisição POST') do
    @response = @register.registerUser($uri)
  end
  
  Então('é retornado os dados cadastrado com status code {int}') do |int|
    @register.validationStatus(@response, int)
  end