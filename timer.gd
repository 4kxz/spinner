extends Label

var elapsed_time: float = 0

func _process(delta):
	elapsed_time += delta
	update_display()

func update_display():
	var minutes = int(elapsed_time / 60)
	var seconds = int(elapsed_time) % 60
	var milliseconds = int((elapsed_time - int(elapsed_time)) * 100)
	text = "%02d:%02d.%02d" % [minutes, seconds, milliseconds]
