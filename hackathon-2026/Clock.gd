extends Label

var elapsed_time: float = 0.0
const MAX_TIME: float = 156.0 * 3600.0

func _process(delta: float) -> void:
	delta = delta * 480
	if elapsed_time < MAX_TIME:
		elapsed_time = minf(elapsed_time + delta, MAX_TIME)

	var total_minutes = int(elapsed_time / 60.0)
	var hours = total_minutes / 60
	var minutes = total_minutes % 60

	text = "%03d:%02d" % [hours, minutes]
	
	if elapsed_time > MAX_TIME:
		elapsed_time = 0.0
		
	if Input.is_key_pressed(KEY_0): 
		elapsed_time += 120
		
	if Input.is_key_pressed(KEY_9): 
		elapsed_time -= 120
