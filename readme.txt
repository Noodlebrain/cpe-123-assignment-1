The samples for this soundboard are sounds in the rsound library,
as well as ones used in prior labs. They were chosen for convenience's sake.

To write the program, we first used big-bang and gave it two handlers;
draw_world to draw the big-bang world (self-explanatory), and key_handler to handle
key presses. We first defined the function (playc x) that plays a specific
sound clip if passed an argument x = 1, 2, 3, 4, or 5.

Next, we defined key_handler, which first checks if the key pressed (k) is a number key, AND checks if 0 < k < 6, since we wanted sound to play if and only if the 1-5 keys were pressed. If both conditions pass, the (playc x) function is invoked, with k as the argument. Otherwise, nothing happens and the state of the big-bang world remains the same.

Lastly, we defined draw_world to display a list of the playable sounds onto the big-bang window.


