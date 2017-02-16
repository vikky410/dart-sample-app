// Copyright (c) 2017, vikky410. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  querySelector('#enter').onClick.listen(clickedOnEnter);
}

Environment myEnvironment = new Environment("Vikas");

clickedOnEnter(e) {
  InputElement input = querySelector("#commands");
  input.style.borderColor = "green";

  String output = "";

  switch(input.value) {
    case 'left':
      output = "You are going left now";
      break;
    case 'right':
      output = "You are going right now";
      break;
    case 'up':
      output = "You are going up now";
      break;
    case 'down':
      output = "You are going down now";
      break;
    default:
      output = "Use left, right, up and down ...";
  }

  var outputHtml = "<div>${output}</div>";
  querySelector("#output").appendHtml(outputHtml);

  var interaction = myEnvironment.stumbleUpon();
  outputHtml = "<div>${interaction}</div>";
  querySelector("#output").appendHtml(outputHtml);
}

void updateCoordinates(int rel_x, int rel_y) {
  x += rel_x;
  y += rel_y;

  querySelector("coordinates").innerHtml = "place : $x, $y";
}


class Environment {
  String name;

  Environment(this.name);

  String stumbleUpon() {
    return "${this.name} you stumbles upon something";
  }
}
