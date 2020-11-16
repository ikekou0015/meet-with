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


  private
     def meet_with_params
      params.require(:meetwith).permit(:text).merge(user_id: current_user.id)
     end
end
