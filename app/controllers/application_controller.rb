class ApplicationController < ActionController::API
  before_action :split_tokens

  include DeviseTokenAuth::Concerns::SetUserByToken

  private

  def split_tokens
    return if request.headers['access-token'].nil?

    token = JSON.parse(Base64.decode64(CGI.unescape(request.headers['access-token'])))
    request.headers['access-token'] = token['access_token']
    request.headers['client'] = token['client']
    request.headers['uid'] = token['uid']
  end
end
