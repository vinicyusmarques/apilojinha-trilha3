Dado('o endpoint de usuario para cadastro') do
    $uri_base = 'http://165.227.93.41/lojinha/usuario'
  end
  
  Dado('o usuario informe nome, usuario e senha') do
    @body = {
            "usuarionome": Faker::Name.name,
            "usuariologin": Faker::Name.name,
            "usuariosenha": "123789"
          }.to_json
  end
  
  Quando('ele faz uma requisição POST') do
    $response = HTTParty.post($uri_base, 
    :body => @body,
    :headers => {"Content-Type" => 'application/json'})
  end
  
  Então('é retornado os dados cadastrado com status code {int}') do |int|
    puts "response body #{$response.body}"
   resposta = $response.body
   #puts "response code #{$response.code}"
   expect($response.code).to eq(int)
  end