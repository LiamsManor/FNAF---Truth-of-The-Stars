///@description movements
//control
var up_key = keyboard_check(vk_up)
var down_key = keyboard_check(vk_down)
var left_key = keyboard_check(vk_left)
var right_key = keyboard_check(vk_right)
//movement
if(keyboard_check(vk_shift) or keyboard_check(ord("x"))) {
	move_speed = run_speed
} else{
	move_speed = walk_speed
}

yspeed = (down_key - up_key) * move_speed
xspeed = (right_key - left_key) * move_speed

//collision
if(place_meeting(x + xspeed, y, barrier)){
	xspeed = 0
}
if(place_meeting(x, y + yspeed, barrier)){
	yspeed = 0
}
x += xspeed
y += yspeed

//animate
if(xspeed > 0){
	sprite_index = Eclipse_Start_walkF
} else if(xspeed < 0){
	sprite_index = Eclipse_Start_walkF
}
if(yspeed > 0){
	sprite_index = Eclipse_Start_walkF
} else if(yspeed < 0){
	sprite_index = Eclipse_Start_walkF
}
if (xspeed !=0 or yspeed !=0){
	image_speed = 1
} else if (xspeed = 0 or yspeed = 0){
	image_speed = 0
}