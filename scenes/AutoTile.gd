tool
extends TileSet

func _is_tile_bound(drawn_id, neighbor_id):
	return get_tiles_ids().has(neighbor_id)
