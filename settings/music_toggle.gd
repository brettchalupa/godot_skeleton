extends CheckButton

func _ready():
	set_pressed_no_signal(Global.play_music)

func _on_toggled(bpressed):
	Global.set_setting("play_music", bpressed)
