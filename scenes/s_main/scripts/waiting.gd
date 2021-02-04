extends Spatial
var AudioPlayer = preload("res://scenes/AudioArea.tscn").instance()
func _ready():
	yield(get_tree().create_timer(1.0), "timeout")
	self.add_child(AudioPlayer)
