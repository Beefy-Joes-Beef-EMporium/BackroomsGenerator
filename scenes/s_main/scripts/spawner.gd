extends Spatial
var RM1 = preload("res://rooms/RM1.tscn").instance()
var RM2 = preload("res://rooms/RM2.tscn").instance()
func _ready():
	$POS1.add_child(RM1)
	$POS2.add_child(RM2)
	$POS3.add_child(RM2)
	
