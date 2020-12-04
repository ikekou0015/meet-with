class RoomsController < ApplicationController
  
  def new
    @room = Room.new
    @rooms = Room.all
  end
  
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_messages_path(@room.id)
    else
      render :new
    end
  end
  
  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end
  
  private

  def room_params
    params.require(:room).permit( user_ids: [])
  end
end