
extends Sprite2D
@onready var battery: AnimatedSprite2D = get_node("/root/Node2D/Time Control/Clock/Battery")

var speed: float = 200.0

# Allowed rectangular movement area
var min_bounds: Vector2 = Vector2(-5, 25)
var max_bounds: Vector2 = Vector2(1200, 1050)

var moving_right: bool = false
var moving_left: bool = false
var moving_up: bool = false
var moving_down: bool = false

func _process(delta: float) -> void:	
	if battery.power <= 0:
		return
		
	var direction := Vector2.ZERO

	if Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		direction.x += 1
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		direction.x -= 1
	if Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
		direction.y -= 1
	if Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
		direction.y += 1

	if moving_right:
		direction.x += 1
	if moving_left:
		direction.x -= 1
	if moving_up:
		direction.y -= 1
	if moving_down:
		direction.y += 1

	if direction != Vector2.ZERO:
		direction = direction.normalized()

	position += direction * speed * delta

	var half_size := get_rect().size / 2.0

	position.x = clampf(
		position.x,
		min_bounds.x + half_size.x,
		max_bounds.x - half_size.x
	)
	position.y = clampf(
		position.y,
		min_bounds.y + half_size.y,
		max_bounds.y - half_size.y
	)
	



func _on_right_button_down() -> void:
	moving_right = true

func _on_right_button_up() -> void:
	moving_right = false

func _on_left_button_down() -> void:
	moving_left = true

func _on_left_button_up() -> void:
	moving_left = false

func _on_forward_button_down() -> void:
	moving_up = true

func _on_forward_button_up() -> void:
	moving_up = false

func _on_backward_button_down() -> void:
	moving_down = true

func _on_backward_button_up() -> void:
	moving_down = false
