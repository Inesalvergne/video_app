// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Initialize the Video.js player
console.log('hello');

var player = videojs('my-video', {
  controls: true,
  fluid: true,
});

// Configure Chromecast button
player.chromecast({
  customData: {
    title: 'Your Video Title',
    description: 'Your Video Description',
  },
});

player.controlBar.addChild('ChromecastButton', {});
