''' Used to quickly navigate the scene tree. '''

@tool
extends EditorPlugin

func execute():
	
	var editor : EditorInterface = get_editor_interface()
	
	var selection : EditorSelection = editor.get_selection()
	var selected_nodes : Array[Node] = selection.get_selected_nodes()
	
	if selected_nodes.is_empty():
		print("Selection is empty")
		return
	
	selection.clear()

	for node in selected_nodes:
		for child in node.get_children():
			selection.add_node(child)

