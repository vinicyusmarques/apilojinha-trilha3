class Login
    include HTTParty
    include RSpec::Matchers

    def initialize(user, pass)
        @user = user
        @pass = pass
    end

    def loginPost(uri)
        HTTParty.post(
            uri, 
            :body => data_login,
            :headers => {"Content-Type" => 'application/json'})
    end
    
    def validationStatus(response, statuscode)
        expect(response.code).to eq(statuscode)
    end

    def data_login
        return body = {
            "usuariologin": @user,
            "usuariosenha": @pass
        }.to_json
    end
end