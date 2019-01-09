class PagesController < ApplicationController

  skip_before_action :authorize, only:[:index]

  def index
  end

  def home
  end
end
