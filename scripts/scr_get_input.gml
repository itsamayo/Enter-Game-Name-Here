///script_get_input
// For arrow key usage
//var up = keyboard_check(vk_up);
//var down = keyboard_check(vk_down);
//var left = keyboard_check(vk_left);
//var right = keyboard_check(vk_right);
//dash = keyboard_check_pressed(vk_space);

// For WASD usage
up = keyboard_check(ord('W'));
down = keyboard_check(ord('S'));
left = keyboard_check(ord('A'));
right = keyboard_check(ord('D'));
dash = keyboard_check_pressed(vk_space);
attack = mouse_check_button_pressed(mb_left);

// Get the axis
xaxis = (right - left);
yaxis = (down - up);


// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash = gamepad_button_check_pressed(0, gp_face1);
    attack = gamepad_button_check_pressed(0, gp_face3);
}
