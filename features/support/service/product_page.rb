class Product
    include HTTParty
    include RSpec::Matchers

    def initialize
        # @body = body
        @token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQi'+
        'OiIyNzM4IiwidXN1YXJpb2xvZ2luIjoidmluaWN5dXMubWFycXVlcyIsInVzdWFyaW9'+
        'ub21lIjoiVmluaWN5dXMifQ.x2dkXWUgPB2eb9SvW5WqiQ7FCIXaZ7QtYUWMq23Rcvg'
    end

    def insertProduct(uri, body)
        @body = body
        HTTParty.post(
            uri, 
            :body => @body,
            :headers => {"Content-Type" => 'application/json', 
                            "token" => @token })
    end

    def validationStatus(response, statuscode)
        expect(response.code).to eq(statuscode)
    end

    def getProduct(uri)
        HTTParty.get(
            uri,
            :headers => {"Content-Type" => 'application/json', 
                            "token" => @token})
    end

    def data_product
        return {
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
end