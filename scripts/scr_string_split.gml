my_string = argument0
explode = argument1
numbers = string_count(explode, my_string)
for (tempi = 0; tempi < numbers; tempi = (tempi + 1))
{
    pos = string_pos(explode, my_string)
    array[tempi] = string_copy(my_string, 1, (pos - 1))
    my_string = string_delete(my_string, 1, pos)
}
return array

