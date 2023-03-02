extends CheckButton

func _ready():
	var is_fullscreen = false
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
		is_fullscreen = false
	else:
		is_fullscreen = true
		
	set_pressed_no_signal(is_fullscreen)
	
	if !OS.has_feature("pc"):
		hide()

func _on_toggled(bpressed):
	if bpressed:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
