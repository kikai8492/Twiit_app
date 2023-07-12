class TwiitsController < ApplicationController
  def index
    @twiits = Twiit.all
  end

  def new
    @twiit = Twiit.new
  end

  def create
    @twiit = Twiit.new(Twiit_params)
    if params[:back]
      render :new
    else
      if @twiit.save
        render :new
      else
        render :new
      end
    end
  end

  def show
  @twiit = Twiit.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def confirm
    @twiit = Twiit.new(twiit_params)
    render :new if @twiit.invalid?
  end

  private

  def twiit_params
    params.require(:twiit).permit(:content)
  end
end
