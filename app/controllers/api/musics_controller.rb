class Api::MusicsController < ApplicationController
  before_filter :restrict_access

  def index
    @music = Music.all
    respond_to do |format|
      format.json { render :json => @music }
    end
  end

  private
    def restrict_access
      authenticate_or_request_with_http_token do |token, options|
        ApiKey.exists?(access_token: token)
      end
    end
end