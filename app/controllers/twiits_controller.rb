class TwiitsController < ApplicationController
  def index
    @twiit = Twiit.all
  end

  def new
    @twiit = Twiit.new
  end

  def create
    
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def confirm
    @twiit = Twiit.new(twiit_params)
    render :new if @blog.invalid?
  end
end
