//Verifica se o mouse está em cima do botão
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

//Vai para a sala do jogo qunado o botão é pressionado
if hovering && mouse_check_button_pressed(mb_left){
	room_goto(1)
}