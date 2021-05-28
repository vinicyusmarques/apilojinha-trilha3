Dado('o endpoint de {string} para cadastro') do |string|
  $uri = $url << string
  end
  
  Dado('o usuario informe nome, usuario e senha') do
    @register = User.new(Faker::Name.name, Faker::Name.name, "123456")
  end
  
  Quando('ele faz uma requisição POST') do
    @response = @register.registerUser($uri)
  end
  
  Então('é retornado os dados cadastrado com status code {int}') do |int|
    @register.validationStatus(@response, int)
  end