extends TextureButton

@export var trigger_distance: float = 100.0

@onready var trigger_sprite: Sprite2D = get_node("/root/Node2D/Rover")

func _ready() -> void:
	hide()
	disabled = false

func _process(_delta: float) -> void:
	var distance = global_position.distance_to(
		trigger_sprite.global_position
	)

	if distance <= trigger_distance:
		show()

func _on_exit_volcano_pressed():
	disabled = true
