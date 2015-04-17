class SubsController < ApplicationController

  def new
    @sub = Sub.new
    render :new
  end

  def create
    @sub = current_user.subs.new(sub_params)
    if @sub.save
      flash[:success] = "You created a topic"
      redirect_to sub_url(@sub)
    else
      render :new
    end
  end

  def show
    @sub = Sub.find(params[:id])
    render :show
  end

  def edit
    @sub = Sub.find(params[:id])
    render :edit
  end

  def update
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      flash[:success] = "You successfully changed the Sub"
      redirect_to sub_url(@sub)
    else
      render :edit
    end
  end

  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    flash[:success] = "Nuked"
    redirect_to subs_url
  end

  def index
    @subs = Sub.all
    render :index
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description)
  end


end
