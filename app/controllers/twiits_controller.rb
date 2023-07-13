class TwiitsController < ApplicationController
  def index
    @twiits = Twiit.all
  end

  def new
    @twiit = Twiit.new
  end

  def create
    @twiit = Twiit.new(twiit_params)
    if params[:back]
      render :new
    else
      if @twiit.save
        redirect_to twiits_path, notice: "投稿しました"
      else
        render :new
      end
    end
  end

  def show
    @twiit = Twiit.find(params[:id])
  end

  def edit
    @twiit = Twiit.find(params[:id])
  end

  def update
    @twiit = Twiit.find(params[:id])

    if @twiit.update(twiit_params)
      redirect_to twiits_path, notice:"ツイートを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @twiit = Twiit.find(params[:id])
    @twiit.destroy
    redirect_to twiits_path, notice:"削除しました。"
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
