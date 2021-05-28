Dado('o endpoint de {string}') do |string|
  $uri = $url << string
end
  
  Quando('quando o usuario faz a requisição GET') do
    $response = @product.getProduct($uri)
  end
  
  Entao('é retornado todos os produtos cadastrados com status code {int}') do |int|
    @product.validationStatus($response, int)
  end

  Dado('o usuario informe o id {string} do produto') do |string|
    $uri << "/#{string}"
  end

  Quando('quando ele faz a requisição GET') do
    $response = @product.getProduct($uri)
  end