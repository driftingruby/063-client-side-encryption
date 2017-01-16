class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

#     rsa_private_key = "-----BEGIN RSA PRIVATE KEY-----
# MIICXQIBAAKBgQCnqBHkA9aNdhT7nyHSfbj4hHw125xzLbS06Lpw6MsajVyzc/iV
# 99rxi/6Zdh6zZ4nINzyOtPjacngWiGEHSb51X7qSNNpTTYB7Ogjd2GJG5IvAvmZj
# rnX7p2TA9h+jzoJClNr06YH7g2DKtsya5ACUI2k7spHwqlemt2swHAcA0wIDAQAB
# AoGAHLiLEA+kQqmW4KAbMC7/b/tqN+O+QnDzAwbXYZ5PpOXQmqFkVXSXWkfMPsfg
# bIVxMg5cXmocM3fmoJ2OWaxFZxkD6LnPs8MqX4yt5WrMQXW3aMvjpQ3PxTgzKizM
# LzuRqjgZ+4EOxbFaLIacjTGUWkR8DXW6p7a7ySW9Bm2AXzkCQQDZ3OrRROQ1Udlo
# gdABpvrNlYRIKQsfcJiLbP7lLBIgZdotqAws0GOtLDpJPYjhalNnb0vjQsiG0DCQ
# mzb2rDjtAkEAxQFBA3xQ0PHwcGz9LWj/kPTbOgJP+YLd5k43IiistNEwM3qbsAg/
# P1lkeGNc72ACjnS0dfHixAWyc4+B+EGovwJBANRIEH4MtJjHwiG0q2uQurzrPVPa
# uj3ORrVEZTIEuTzcQbVPE13vR9CLUdffn6qVIeOdbMJqZl4GKewdcXb15RkCQE6E
# WW0SNwOP6cxlI+LdXj5f2KAeG9HOHrKTqdWrcGoAlb1uuG5IWyzca/avY3LkSSCN
# 0v7PERofSyhTofFX+fECQQDS7z97iqMUMHJViP0/DbG1ZkE9UYBAZo3eO+vLv/AX
# zIomfFkAsOiygMVKiwy+ze3qXwIpwhDbkdbm3SQZ2s3E
# -----END RSA PRIVATE KEY-----
# "

#     if params[:user] && params[:user][:social_security]
#       private_key = OpenSSL::PKey::RSA.new(rsa_private_key, Rails.application.secrets.rsa_login_password)
#       password = params[:user][:social_security]
#       string = private_key.private_decrypt(Base64.decode64(password))
#       @user.social_security = string
#     end
    


    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :social_security, :email)
    end
end
