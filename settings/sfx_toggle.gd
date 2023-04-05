extends CheckButton

func _ready():
	set_pressed_no_signal(Global.play_sfx)

func _on_toggled(bpressed):
	Global.set_setting("play_sfx", bpressed)
