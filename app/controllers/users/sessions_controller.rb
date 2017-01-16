class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # POST /resource/sign_in
  def create
    # self.resource = warden.authenticate!(auth_options)
    resource = User.find_by(email: params[:user][:email])
    if resource&.valid_password?(authenticate_encryptor)
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      redirect_to new_user_session_path, alert: 'Bad email or password.'
    end
  end

  private

  def authenticate_encryptor
    private_key = OpenSSL::PKey::RSA.new(PRIVATE_KEY)
    password = params[:user][:password]
    private_key.private_decrypt(Base64.decode64(password))
  end
end
