class HomeController < ApplicationController
  def index
  end
  def book
      @apprtments = Apprtment.all

  end
end
