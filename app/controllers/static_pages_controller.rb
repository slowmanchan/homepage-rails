class StaticPagesController < ApplicationController
  def home
  end

  def about
  end


  def portfolio
  end

  def settings
    @comments = current_user.comments
  end
end
