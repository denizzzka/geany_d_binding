module geany_plugin_d_api.pluginutils.d;

import geany_plugin_d_api.geanyplugin: GeanyPlugin;
import geany_plugin_d_api.types;
import geany_plugin_d_api.keybindings;

GeanyKeyGroup* plugin_set_key_group(GeanyPlugin* plugin, const(gchar)* section_name, gsize count, GeanyKeyGroupCallback callback);
