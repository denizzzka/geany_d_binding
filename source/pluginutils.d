module geany_d_binding.pluginutils;

import geany_d_binding.geanyplugin: GeanyPlugin;
import geany_d_binding.types;
import geany_d_binding.keybindings;

extern(System) @nogc nothrow:

GeanyKeyGroup* plugin_set_key_group(GeanyPlugin* plugin, const(gchar)* section_name, gsize count, GeanyKeyGroupCallback callback);
