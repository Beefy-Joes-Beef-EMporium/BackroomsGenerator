extends Spatial
var RM1 = preload("res://rooms/RM1.tscn").instance()
var RM2 = preload("res://rooms/RM2.tscn").instance()
var RM3 = preload("res://rooms/RM3.tscn").instance()
var RM4 = preload("res://rooms/RM4.tscn").instance()
var RM5 = preload("res://rooms/RM5.tscn").instance()
var RM6 = preload("res://rooms/RM6.tscn").instance()
var random = RandomNumberGenerator.new()
func _ready():
	random.randomize()
	random = random.randi_range(0,5)
	print("the random number selected is: ", random)
	if random == 0:
		$POS1.add_child(RM2)
		$POS2.add_child(RM3)
		$POS3.add_child(RM4)
	if random == 1:
		$POS1.add_child(RM4)
		$POS2.add_child(RM1)
		$POS3.add_child(RM2)
	if random == 2:
		$POS1.add_child(RM3)
		$POS2.add_child(RM2)
		$POS3.add_child(RM1)
	if random == 3:
		$POS1.add_child(RM1)
		$POS2.add_child(RM4)
		$POS3.add_child(RM3)
	if random == 4:
		$POS1.add_child(RM2)
		$POS2.add_child(RM5)
		$POS3.add_child(RM3)
	if random == 5:
		$POS1.add_child(RM6)
		$POS2.add_child(RM4)
		$POS3.add_child(RM2)
	else:
		print("you in trouble")
