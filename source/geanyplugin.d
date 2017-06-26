module geany_plugin_d_api.geanyplugin;

//~ import gtkc.gtktypes: gchar; //FIXME
alias gchar = char;

extern(System) @nogc nothrow:

struct GeanyPlugin
{
    PluginInfo  *info;  /**< Fields set in plugin_set_info(). */
    GeanyData   *geany_data;    /**< Pointer to global GeanyData intance */
    GeanyPluginFuncs *funcs;    /**< Functions implemented by the plugin, set in geany_load_module() */
    GeanyProxyFuncs  *proxy_funcs; /**< Hooks implemented by the plugin if it wants to act as a proxy
                                        Must be set prior to calling geany_plugin_register_proxy() */
    GeanyPluginPrivate *priv;    /* private */
}

struct PluginInfo
{
    /** The name of the plugin. */
    const gchar* name;
    /** The description of the plugin. */
    const gchar* description;
    /** The version of the plugin. */
    const gchar* _version;
    /** The author of the plugin. */
    const gchar* author;
}

struct GeanyData;
struct GeanyPluginFuncs;
struct GeanyProxyFuncs;
struct GeanyPluginPrivate;

void geany_load_module(GeanyPlugin* plugin);
