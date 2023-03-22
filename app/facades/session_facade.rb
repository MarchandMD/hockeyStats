class SessionFacade
  def authenticate(code)
    conn = Faraday.new(url: 'https://github.com', headers: { Accept: 'application/json' })

    response = conn.post("/login/oauth/access_token") do |req|
      req.params['code'] = code
      req.params['client_id'] = ENV.fetch('client_id')
      req.params['client_secret'] = ENV.fetch('client_secret')
    end

    data = JSON.parse(response.body, symbolize_names: true)
    access_token = data[:access_token]

    conn = Faraday.new(
      url: 'https://api.github.com',
      headers: {
        Authorization: "token #{access_token}"
      }
    )

    response = conn.get('/user')
    [JSON.parse(response.body, symbolize_names: true), access_token]
  end
end
