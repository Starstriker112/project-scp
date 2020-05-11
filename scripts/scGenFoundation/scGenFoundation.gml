//general config
var spawn_layer = layer_get_id("Instances");
var tile_size = 64;


var xpos = irandom_range(5,(room_width/tile_size)-5)*tile_size;
var ypos = irandom_range(5,(room_height/tile_size)-5)*tile_size;

var width = irandom_range(5,7);
var height = irandom_range(5,7);

var newx = 0;
var newy = tile_size;

var max_xtile = xpos+(width*tile_size);
var max_ytile = ypos+(height*tile_size);


repeat(width+1)
{
instance_create_layer(xpos+newx,ypos,spawn_layer,oFoundation); //top
instance_create_layer(xpos+newx,max_ytile,spawn_layer,oFoundation); //bottom
newx += tile_size;
}

repeat(height-1)
{
instance_create_layer(xpos,ypos+newy,spawn_layer,oFoundation); //left
instance_create_layer(max_xtile,ypos+newy,spawn_layer,oFoundation); //right
newy += tile_size;
}


#region Make entrance for entering (disabled code)
/*
var xsection = choose("top","bottom");
var xdestroy = xpos+(irandom_range(2,width-2)*32);

if (xsection == "top")
{ instance_destroy(instance_position(xdestroy,ypos,oFoundation)); }
else
//"bottom"
{ instance_destroy(instance_position(xdestroy,max_ytile,oFoundation)); }



var ysection = choose("left","right");
var ydestroy = ypos+(irandom_range(2,height-2)*32);

if (ysection == "left")
{ instance_destroy(instance_position(xpos,ydestroy,oFoundation)); }
else //"right"
{ instance_destroy(instance_position(max_xtile,ydestroy,oFoundation)); }

var ydestroy = ypos+(irandom_range(2,height-2)*32);
*/
#endregion