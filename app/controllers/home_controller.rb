class HomeController < ApplicationController
  before_action :set_apprtment, only: %i[ list ]

  before_action :book_params, only: %i[ confirm ]
  def index
    @q = Apprtment.ransack(params[:q])
  end

  def book
    @q = Apprtment.ransack(params[:q])
    @app = @q.result(distinct: true)
    @from =params[:from]
    @to =params[:to]
    @apprtment = Book.where('dateFrom <= ? AND dateTo >= ?', @to, @from)

    @apprtment.each do |f|
    f.apprtment_id
    @app = Apprtment.where.not(id: f.apprtment_id)
     end
     
  end


  def list
    @book = Book.new
  end


  def reserve
    @book = Book.new
   @from = params[:from]
   @to = params[:to]
   @price = params[:price]
   @user = current_user.id
   @apprtmentId = params[:source]
   @apprtment = Apprtment.find(params[:source])
   @totalDays = (@to.to_date - @from.to_date).to_i
     if   @totalDays < 1
       @totalDays = 1
     else
        @totalDays
     end
    @priceToInteger = params[:price].to_i
    @DayAndPrice = @totalDays * @priceToInteger
    @total = @DayAndPrice + 300
  end

  def confirm
    @book = Book.new(book_params)
    token = params[:stripeToken]
    charge = Stripe::Charge.create(
       amount: @book.price,
       currency: "usd",
       description: @book.apprtment_id,
       source: token
     )
   respond_to do |format|
     if @book.save
       format.html { redirect_to root_path, notice: 'booked was successfully created.' }
     else
       format.html { redirect_to list_path }
       format.json { render json: @book.errors, status: :unprocessable_entity }
     end
   end

   rescue Stripe::CardError => e
       flash.alert = e.message
       render action: :new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprtment
      @apprtment = Apprtment.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:user_id, :renter, :apprtment_id, :dateFrom, :dateTo, :price)
    end
end
