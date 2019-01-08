class PagesController < ApplicationController

  before_action :authorize, only:[:home]

  def index
  end

  def home
  end
end
