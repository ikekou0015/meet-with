class MeetWithChannel < ApplicationCable::Channel
  def subscribed
     stream_from "meet_with_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
