class MeetWithsController < ApplicationController
  def index
    @meet_withs = Meetwith.all
  end

  def new
    @meet_with = Meetwith.new
  end

  def create    
    @meet_with = Meetwith.create(meet_with_params)
    if @meet_with.save
         redirect_to root_path     
    else
        render :new
    end
  end

  def show
    @meet_with = Meetwith.find(params[:id])
  end

  def destroy
    @meet_with = Meetwith.find(params[:id])
    @meet_with.destroy
    redirect_to root_path
  end

  private
     def meet_with_params
      params.require(:meetwith).permit(:text, :title, :image).merge(user_id: current_user.id)
     end
end
