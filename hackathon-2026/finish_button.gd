extends Button
@onready var photos: ColorRect = get_node("/root/Node2D/Gallery/Camera/Gallery_Window")
@onready var samples: ColorRect = get_node("/root/Node2D/Samples/SampleCollection/Sample_Window")

func _ready(): 
	hide()

func _process(_delta):
	if photos.volcano == true:
		if photos.valley == true: 
			if photos.sunset == true: 
				if samples.microorganism == true: 
					if samples.ice == true: 
						if samples.rock == true: 
							show()
