class Login
    include HTTParty
    include RSpec::Matchers

    def initialize(body)
        @body = body      
    end

    def loginPost(uri)
        HTTParty.post(
            uri, 
            :body => @body,
            :headers => {"Content-Type" => 'application/json'})
    end
    
    def validationStatus(response, statuscode)
        expect(response.code).to eq(statuscode)
    end
end