extends Area2D

export(String, FILE, "*.tscn") var next_world_scene
#export (Vector2) var spawn_pos

#func _process(_delta):
#	var areas = get_overlapping_areas()
#	for area in areas:
#		if area.name == "Player" && Input.is_action_just_pressed("ui_accept"):
#			get_tree().change_scene(next_world_scene)
#			Global.player_pos = spawn_pos

func _on_Entrance_body_entered(_area: Area2D) -> void:
	Global.from = get_parent().name 
	get_tree().change_scene(next_world_scene)
