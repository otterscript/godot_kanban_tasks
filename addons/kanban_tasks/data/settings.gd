@tool
extends "kanban_resource.gd"

## Contains settings that are not bound to a board.


## Whether the first line of the description is shown on the board.
var show_description_preview: bool = true:
	set(value):
		show_description_preview = value
		changed.emit()

var warn_about_empty_deletion: bool = false:
	set(value):
		warn_about_empty_deletion = value
		changed.emit()


func to_json() -> Dictionary:
	return {
		"show_description_preview": show_description_preview,
		"warn_about_empty_deletion": warn_about_empty_deletion,
	}


func from_json(json: Dictionary) -> void:
	if json.has("show_description_preview"):
		show_description_preview = json["show_description_preview"]
	if json.has("warn_about_empty_deletion"):
		warn_about_empty_deletion = json["warn_about_empty_deletion"]
