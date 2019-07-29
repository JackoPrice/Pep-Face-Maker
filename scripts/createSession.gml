mplay_init_ipx()
if mplay_session_create(argument1,argument2,argument3) == true
   {
 wd_message_set_text("Server creation was sucessful")
 wd_message_show(wd_mk_none,wd_mb_ok,wd_mb_none,wd_mb_none)
 room = titlescreen
 }
else
{
 wd_message_set_text("Server creation was unsucessful")
 if wd_message_show(wd_mk_error,wd_mb_ok,wd_mb_retry,wd_mk_none) = wd_mb_retry
   {
     createSession(argument1,argument2,argument3)
   }
 else
    {
        room = titlescreen
    }
}
