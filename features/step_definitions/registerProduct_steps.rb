Dado('o endpoint de produto para cadastro') do
    $uri_base = 'http://165.227.93.41/lojinha/produto'
  end
  
  Dado('o usuario preenche as informações do produto') do
    @body = {
                "produtonome": "iphone 12",
                "produtovalor": Faker::Commerce.price,
                "produtocores": [
                    Faker::Commerce.color
                ],
                "componentes": [
                    {
                        "componentenome": Faker::Commerce.material,
                        "componentequantidade": 1
                    },
                    {
                        "componentenome": Faker::Commerce.material,
                        "componentequantidade": 1
                    }
                ]
            }.to_json
  end
  
  Quando('ele faz a requisição POST') do
    $response = HTTParty.post($uri_base, 
        :body => @body,:headers => {"Content-Type" => 'application/json', 
            "token" => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQi'+
            'OiIyNzM4IiwidXN1YXJpb2xvZ2luIjoidmluaWN5dXMubWFycXVlcyIsInVzdWFyaW9'+
            'ub21lIjoiVmluaWN5dXMifQ.x2dkXWUgPB2eb9SvW5WqiQ7FCIXaZ7QtYUWMq23Rcvg'})
    end