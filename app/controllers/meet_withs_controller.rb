class MeetWithsController < ApplicationController
  def index
    @users = User.order("created_at DESC")
  end

  def new
    @meet_withs = Meetwith.all
    @meet_with = Meetwith.new
  end

  def create    
    @meet_with = Meetwith.new(meet_with_params)
     @meet_with.save
      ActionCable.server.broadcast 'meet_with_channel', content: @meet_with
      redirect_to new_meet_with_path 
  end

  def destroy
    meet_with = Meetwith.find(params[:id])
    meet_with.destroy
    redirect_to new_meet_with_path 
  end

  private
     def meet_with_params
      params.require(:meetwith).permit(:text, :title, :image).merge(user_id: current_user.id)
     end
end
