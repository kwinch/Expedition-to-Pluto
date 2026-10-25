extends TextureButton

@export var trigger_distance: float = 100.0

@onready var trigger_sprite: Sprite2D = get_node("/root/Node2D/Rover")
@onready var clock: Label = get_node("/root/Node2D/Time Control/Clock")

func _ready() -> void:
	hide()
	disabled = false

func _process(_delta: float) -> void:
	var distance = global_position.distance_to(
		trigger_sprite.global_position
	)

	if distance <= trigger_distance:
		if clock.elapsed_time > 270800 && clock.elapsed_time < 290800:
			show()
		if clock.elapsed_time < 10000:
			show()
		if clock.elapsed_time > 551600:
			show()

func _on_exit_sunset_pressed():
	disabled = true
