var load_file, m_data, array, count, tempi, json, j_map, xx, yy, _depth, _img, index;
right_lvl = ".lvl"
up_lvl = ".lvl"
left_lvl = ".lvl"
down_lvl = ".lvl"
file = argument0
current_lvl = file
if file_exists(file)
{
    load_file = file_text_open_read(file)
    right_lvl = file_text_read_string(load_file)
    file_text_readln(load_file)
    up_lvl = file_text_read_string(load_file)
    file_text_readln(load_file)
    left_lvl = file_text_read_string(load_file)
    file_text_readln(load_file)
    down_lvl = file_text_read_string(load_file)
    file_text_readln(load_file)
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
                ds_map_destroy(j_map)
                with(instance_create(xx, yy, index))
                {
                    image_index = floor(_img)
                }
            }
        }
    }
    file_text_close(load_file)
}