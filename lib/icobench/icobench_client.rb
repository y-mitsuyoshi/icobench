require 'uri'
require 'json'
require 'openssl'
require 'net/http'
require 'base64'

class IcobenchClient
  BASE_URL = 'https://icobench.com/api/v1/'
  SSL = true

  def initialize(private_key = nil, public_key = nil, params = {})
    @private_key = private_key
    @public_key = public_key
  end

  def icos
    url = "#{BASE_URL}icos/all"
    get_data(url)
  end
  
  def icos_filters
    url = "#{BASE_URL}icos/filters"
    get_data(url)
  end

  def trending
    url = "#{BASE_URL}icos/trending"
    get_data(url)
  end

  def ratings
    url = "#{BASE_URL}icos/ratings"
    get_data(url)
  end

  def profile(params)
    if params[:id]
      url = "#{BASE_URL}ico/#{params[:id]}"
      get_data(url)
    elsif params[:url]
      url = "#{BASE_URL}ico/#{params[:url]}"
    end
    get_data(url)
  end

  def stats
    url = "#{BASE_URL}other/stats"
    get_data(url)
  end

  def people_all
    url = "#{BASE_URL}people/all"
    get_data(url)
  end

  def people_expert
    url = "#{BASE_URL}people/expert"
    get_data(url)
  end

  def people_registered
    url = "#{BASE_URL}people/registered"
    get_data(url)
  end

  def get_data(url)
    uri = URI.parse(url)
    https = Net::HTTP.new(uri.host, uri.port)
    if SSL
      https.use_ssl = true
      https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end
    req = Net::HTTP::Post.new(uri.request_uri)
    req['X-ICObench-Key'] = @public_key
    req['X-ICObench-Sig'] = Base64.strict_encode64(OpenSSL::HMAC.digest('sha384', @private_key, '')).force_encoding("utf-8")
    https.set_debug_output $stderr
    res = https.request(req)
    JSON.parse(res.body)
  end
end
