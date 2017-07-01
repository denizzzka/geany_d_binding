module geany_plugin_d_api.keybindings;

import geany_plugin_d_api.types;

struct GeanyKeyGroup;

alias GeanyKeyGroupCallback = gboolean function(guint key_id);
