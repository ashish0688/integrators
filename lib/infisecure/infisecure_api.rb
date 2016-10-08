module InfisecureApi
  def call
  	begin
	  	infisecure_api_url = URI.parse(@lnis_api_url)
      header = {
      	'Content-Type' => 'application/json', 
      	'X-API-Key: ' => @lnis_auth_header,
      	'Content-Language' => 'en-US',
      	'Content-Encoding' => 'UTF-8'
      }
      https = Net::HTTP.new(infisecure_api_url.host,infisecure_api_url.port)
      req = Net::HTTP::Post.new(infisecure_api_url.path, header)
      p @lnis_sub_code
      p @lnisa2
      p @lnisa3
      p @lnisa4
      p @lnisa5
      p @lnisa6
      p @lnisa7
      p @lnisa8
      p @lnisa9
      p @lnisa10
      p @lnisa11
      p @lnisa12
      p @lnisa13
      p @lnisa14
      p @lnisa15

      req.body = {
      	lnisa1: @lnis_sub_code,
      	lnisa2: @lnisa2, 
      	lnisa3: @lnisa3,
      	lnisa4: @lnisa4,
      	lnisa5: @lnisa5,
      	lnisa6: @lnisa6,
      	lnisa7: @lnisa7,
      	lnisa8: @lnisa8,
      	lnisa9: @lnisa9,
      	lnisa10: @lnisa10,
      	lnisa11: @lnisa11,
      	lnisa12: @lnisa12,
      	lnisa13: @lnisa13,
      	lnisa14: @lnisa14,
      	lnisa15: @lnisa15
      }
      p req.body

      res = https.request(req)
    rescue Exception => e
	  	puts "---->>>> Exception found #{e} <<<<----"
      puts e.message  
      puts e.backtrace.inspect 
	  end 
  end
end