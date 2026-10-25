extends AnimatedSprite2D
@onready var clock = get_parent()
var weatherState: String

func _ready(): 
	weatherState = "sunny"

func _process(_delta):
	if weatherState == "clear":
		animation = "Clear"
	if weatherState == "meteor":
		animation = "Meteor"
	if weatherState == "sunny":
		animation = "Sunny"
	if weatherState == "wind":
		animation = "Wind"
	if weatherState == "ice":
		animation = "Ice_Volcano"
