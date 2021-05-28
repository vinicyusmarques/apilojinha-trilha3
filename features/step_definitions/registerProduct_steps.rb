# Dado('o endpoint de {string} para cadastro') do |string| 
#     $uri = $url << string
#   end
  
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
    @product = Product.new
    $response = @product.insertProduct($uri, @body)
    end

   Então('deverá ser retornado os dados do produto com status code {int}') do |int|
       @product.validationStatus($response, int)
    end