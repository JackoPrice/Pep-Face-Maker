if ((room == rm_editor) && keyboard_check(vk_shift))
{
    if ((mouse_x < (x + 32)) && ((mouse_x > x) && ((mouse_y < (y + 32)) && (mouse_y > y))))
    {
        if mouse_check_button_pressed(1)
            image_index = (image_index - 1)
            show_debug_message("Tile index increased")
        if mouse_check_button_pressed(2)
            image_index = (image_index + 1)
            show_debug_message("Tile index decreased")
    }
}
