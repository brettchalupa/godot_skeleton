extends CheckButton

func _ready():
	set_pressed_no_signal(Global.fullscreen)
	
	if !OS.has_feature("pc"):
		hide()

func _on_toggled(bpressed):
	Global.set_setting("fullscreen", bpressed)
