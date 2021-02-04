extends Spatial
signal pickup
func _on_Area_area_entered(area):
	emit_signal("pickup")
