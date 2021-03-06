class KittensController < ApplicationController
  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.json { render :json => @kittens }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitty_params)

    if @kitten.save
      flash.notice = "Hurrah. A kitty has been created."
      redirect_to @kitten
    else
      flash.now.notice = "Something went wrong...I don't know what."
      render :new
    end
  end

  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.json { render :json => @kitten }
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(kitty_params)

    flash.notice = "Kitty updated. Yay!"

    redirect_to @kitten
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    flash.notice = "Kitten deleted :-("

    redirect_to root_path
  end

  private

  def kitty_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
