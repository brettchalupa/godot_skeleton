extends Control

func _input(event):
	if event.is_action_released("pause"):
		call_deferred("_resume")

func _resume():
	hide()
	get_parent().get_tree().paused = false

func pause():
	Sound.play_sfx($"../SelectSfx")
	show()
	$PauseOptions.focus()
