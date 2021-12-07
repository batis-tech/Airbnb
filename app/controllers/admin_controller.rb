class AdminController < ApplicationController
  before_action :restrict, only: %i[ show edit update destroy index]
  def index
    @book =  Book.where(dateFrom: Date.today)
    @comingBook =  Book.where('dateFrom > ?', Date.today)
    @allBooks = Book.where(renter: current_hoster)
   @from = @allBooks.dateFrom
   # @book.each do |f|
   #  @list = Apprtment.where(id: f.apprtment_id)
   # end
  end
  def calendar
  @allBooks = Book.where(renter: current_hoster.id)

  # start_date = params.fetch(:dateFrom, Date.today).to_date
  # @meetings = Book.where(dateFrom: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end


  def restrict
    if @current_user == current_hoster
      authenticate_hoster!
    elsif @current_user == current_user
      root_path
    end
  end

end
