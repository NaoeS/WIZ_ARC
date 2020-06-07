module Auth
  class SessionsController < DeviseTokenAuth::SessionsController
    protected

    def render_create_success
      auth_json = {
        access_token: @token.token,
        client: @token.client,
        uid: @resource.uid
      }

      render json: {
        access_token: CGI.escape(Base64.encode64(JSON.dump(auth_json))),
        expired_at: Time.at(@token.expiry)
      }
    end
  end
end
