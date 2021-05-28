  Dado('o usuario preenche as informações do produto') do
    @body = @product.data_product
  end
  
  Quando('ele faz a requisição POST') do
    $response = @product.insertProduct($uri, @body)
    end

   Então('deverá ser retornado os dados do produto com status code {int}') do |int|
       @product.validationStatus($response, int)
    end