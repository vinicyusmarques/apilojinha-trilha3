Dado('o endpoint para busca de produto') do
    $uri_base = 'http://165.227.93.41/lojinha/produto'
  end
  
  Quando('quando o usuario faz a requisição GET') do
    $response = HTTParty.get($uri_base,
        :headers => {"Content-Type" => 'application/json', 
                    "token" => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQi'+
                    'OiIyNzM4IiwidXN1YXJpb2xvZ2luIjoidmluaWN5dXMubWFycXVlcyIsInVzdWFyaW9'+
                    'ub21lIjoiVmluaWN5dXMifQ.x2dkXWUgPB2eb9SvW5WqiQ7FCIXaZ7QtYUWMq23Rcvg'})
  end
  
  Entao('é retornado todos os produtos cadastrados com status code {int}') do |int|
    puts "response body #{$response.body}"
    resposta = $response.body
    #puts "response code #{$response.code}"
    expect($response.code).to eq(int)
  end

  Dado('o usuario informe o ID do produto') do
    $urlId = $uri_base+'/13245'
  end

  Quando('quando ele faz a requisição GET') do
    $response = HTTParty.get($urlId,
        :headers => {"Content-Type" => 'application/json', 
                    "token" => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQi'+
                    'OiIyNzM4IiwidXN1YXJpb2xvZ2luIjoidmluaWN5dXMubWFycXVlcyIsInVzdWFyaW9'+
                    'ub21lIjoiVmluaWN5dXMifQ.x2dkXWUgPB2eb9SvW5WqiQ7FCIXaZ7QtYUWMq23Rcvg'})
  end
  
  Entao('é retornado os dados do produto com status code {int}') do |int|
    puts "response body #{$response.body}"
    resposta = $response.body
    #puts "response code #{$response.code}"
    expect($response.code).to eq(int)
  end