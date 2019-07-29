var tempi, instance, index, index_write, instance_map;
lvl = get_string("Save level:", "")
lvl_edit = file_text_open_write(lvl + ".lvl")
show_debug_message("Beginning saving routine for " + lvl + ".lvl")
for (tempi = 0; tempi < instance_number(par_universal); tempi = (tempi + 1))
{
    instance = instance_find(par_universal, tempi)
    show_debug_message("Found instance " + string(instance))
    index = instance.object_index
    index_write = object_get_name(index)
    instance_map = ds_map_create()
    ds_map_add(instance_map, "x", instance.x)
    ds_map_add(instance_map, "y", instance.y)
    ds_map_add(instance_map, "depth", instance.depth)
    ds_map_add(instance_map, "image_index", instance.image_index)
    ds_map_add(instance_map, "object_index", index_write)
    show_debug_message("Saved object index '" + index_write + "' with subimage '" + string(instance.image_index) + "', x position '" + string(instance.x) + "', y position '" + string(instance.y) + "', and depth '" + string(instance.depth) + "'")
    json_instance = json_encode(instance_map)
    file_text_write_string(lvl_edit, json_instance)
    file_text_write_string(lvl_edit, "|")
    ds_map_destroy(instance_map)
}
file_text_close(lvl_edit)

