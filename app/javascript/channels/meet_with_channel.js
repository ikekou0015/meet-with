import consumer from "./consumer"

consumer.subscriptions.create("MeetWithChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>${data.content.text.}</p>`;
    const meet_withs = document.getElementById('meet_with_text');
    const newMeet_with = document.getElementById('meet_with_text');
    meet_withs.insertAdjacentHTML('afterbegin', html);
    newMeet_with.value='';
    // Called when there's incoming data on the websocket for this channel
  }
});
