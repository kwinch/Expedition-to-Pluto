extends Sprite2D
	
var speed: float = 200.0
var rotation_speed: float = 180.0

var rotating_left: bool = false
var rotating_right: bool = false

func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	position += direction * speed * delta
	
	if Input.is_key_pressed(KEY_COMMA) or Input.is_key_pressed(KEY_Q):
		rotation_degrees -= rotation_speed * delta

	if Input.is_key_pressed(KEY_PERIOD) or Input.is_key_pressed(KEY_E):
		rotation_degrees += rotation_speed * delta

	if rotating_left:
		rotation_degrees -= rotation_speed * delta

	if rotating_right:
		rotation_degrees += rotation_speed * delta
		
func _on_rotate_clockwise_button_up():
	rotating_right = false

func _on_rotate_clockwise_button_down():
	rotating_right = true

func _on_rotate_counter_clockwise_button_up():
	rotating_left = false

func _on_rotate_counter_clockwise_button_down():
	rotating_left = true

		
