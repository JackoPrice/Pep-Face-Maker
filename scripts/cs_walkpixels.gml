//cs_walkpixels("Name",speed,pixels)
//Makes a character walk x pixels to the right
//speed = Speed in pixels per frame (Negative for left)
//pixels = How many pixels?
ds_list_add(list,"WalkPixels");
ds_list_add(list,argument0);
ds_list_add(list,argument1);
ds_list_add(list,abs(argument2));
