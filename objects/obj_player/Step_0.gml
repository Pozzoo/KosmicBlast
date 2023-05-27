//Verificação de movimento do player
if keyboard_check(vk_up){
	if (speed <= 10){
	motion_add(image_angle, 0.1)
	}
} if keyboard_check_direct(vk_down){
	if (speed >= -10){
	motion_add(image_angle, -0.1)
	}
} if keyboard_check(vk_left){
	image_angle += 4;
} if keyboard_check(vk_right){
	image_angle -= 4;
}


move_wrap(true, true, 5);

//Verificação do tiro principal
if keyboard_check_pressed(vk_space){
	instance_create_layer(x, y, "instances", obj_bullet)
}
//Verificação do foguete
if keyboard_check_pressed(vk_control){
	if (obj_game.rocketWasShot == false){
	instance_create_layer(x, y, "instances", obj_rocket)
	obj_game.rocketWasShot = true;
	//cooldown do foguete
	var _callback = function()
		{
		obj_game.rocketWasShot = false;	
		}
	call_later(5, time_source_units_seconds, _callback);
	}
}