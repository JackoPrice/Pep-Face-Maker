var load_file, bound_x, bound_y, width, height, m_data, array, count, tempi, json, j_map, xx, yy, _depth, _img, index;
right_lvl = ".lvl"
up_lvl = ".lvl"
left_lvl = ".lvl"
down_lvl = ".lvl"
file = argument0
current_lvl = file
show_debug_message("Beginning load subroutine for file " + file)
if file_exists(file)
{
    load_file = file_text_open_read(file)
    if (! file_text_eof(load_file))
    {
        m_data = file_text_read_string(load_file)
        array = scr_string_split(m_data, "|")
        count = array_length_1d(array)
        if (count > 0)
        {
            for (tempi = 0; tempi < count; tempi = (tempi + 1))
            {
                json = array[tempi]
                j_map = json_decode(json)
                xx = ds_map_find_value(j_map, "x")
                yy = ds_map_find_value(j_map, "y")
                _depth = ds_map_find_value(j_map, "depth")
                _img = ds_map_find_value(j_map, "image_index")
                index = asset_get_index(ds_map_find_value(j_map, "object_index"))
                show_debug_message("Loaded object '" + object_get_name(index) + "' with subimage '" + string(_img) + "', x position '" + string(xx) + "', y position '" + string(yy) + "', and depth '" + string(_depth) + "'")
                ds_map_destroy(j_map)
                with(instance_create(xx, yy, index))
                {
                    image_index = floor(_img)
                    depth = floor(_depth)
                }
            }
        }
    }
    file_text_close(load_file)
}
else
{
    show_debug_message("File " + file + " doesn't exist! Throwing error")
show_message("Level doesn't exist")
show_message("yet")
}
