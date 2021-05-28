class User
    include HTTParty
    include RSpec::Matchers

    def initialize (user, name, pass)
        @user = user
        @name = name
        @pass = pass 
    end

    def registerUser(uri)
        HTTParty.post(
            uri, 
            :body => data_user,
            :headers => {"Content-Type" => 'application/json'})
    end
    
    def validationStatus(response, statuscode)
        expect(response.code).to eq(statuscode)
    end

    def data_user
        return {
            "usuarionome": @user, 
            "usuariologin": @name,
            "usuariosenha": @pass
          }.to_json
    end
end