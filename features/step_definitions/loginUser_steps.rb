Dado('o endpoint de {string} da API') do |string| 
    $uri = $url << string
  end
  
  Dado('o usuario informa os dados de autenticação {string} {string}') do |user, pass|
    @user = Login.new(user, pass)
  end

  Quando('ele faz a requisição POST na API') do
    @response = @user.loginPost($uri)
  end
  
  Então('deverá receber token de autorização com status code {int}') do |int|
    @user.validationStatus(@response, int)
  end