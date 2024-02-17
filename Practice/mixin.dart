void main() {
  // Create an instance of 'Singer'.
  Singer singer = Singer();
  // singer.canPlayMusic = false;
  // Call the 'play' method, which is available through the 'Musical' mixin.
  singer.play(); // Output: Playing music
}

// Define a mixin named 'Musical'.
// Mixins are a way to reuse a class's code in multiple class hierarchies.
mixin Musical {
  // A boolean property to indicate if the class can play music.
  bool canPlayMusic = true;

  // A method to simulate playing music. This method can be used by any class that applies this mixin.
  void play() {
    if (canPlayMusic) {
      print("Playing music");
    } else {
      print("Cannot play music");
    }
  }
}

// A base class 'Performer' from which other performer types can inherit.
class Performer {}

// Define a 'Singer' class that extends 'Performer' and mixes in 'Musical'.
// This means 'Singer' inherits from 'Performer' and also gains the abilities defined in 'Musical'.
class Singer extends Performer with Musical {
  // Now, Singer has both the characteristics of a Performer and can play music, thanks to the Musical mixin.
}
