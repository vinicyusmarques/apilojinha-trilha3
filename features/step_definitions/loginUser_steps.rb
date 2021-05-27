Dado('o endpoint de login da API') do
    $uri_base = 'http://165.227.93.41/lojinha/login'
  end
  
  Dado('o usuario informa os dados de autenticação') do
    @body = {
            "usuariologin": "vinicyus.teste",
            "usuariosenha": "vini123"
        }.to_json
  end

  Quando('ele faz a requisição POST na API') do
    $response = HTTParty.post($uri_base, 
        :body => @body,:headers => {"Content-Type" => 'application/json'})
  end
  
  Então('deverá receber token de autorização com status code {int}') do |int|
    puts "response body #{$response.body}"
    resposta = $response.body
    #puts "response code #{$response.code}"
    expect($response.code).to eq(int)
  end