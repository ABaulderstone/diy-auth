class PagesController < ApplicationController
  before_action :authenticate_user, only: [:members_only]
  def home
    cookies[:count] = cookies[:count] ? cookies[:count].to_i + 1 : 1
    @count = cookies[:count]
  end

  def members_only

  end 
end
