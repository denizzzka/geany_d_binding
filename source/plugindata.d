module geany_d_binding.plugindata;

import geany_d_binding.types;
import gtkc.gobjecttypes: GCallback;

extern(System) @nogc nothrow:

/** Callback array entry type used with the @ref plugin_callbacks symbol. */
struct PluginCallback
{
    /** The name of signal, must be an existing signal. For a list of available signals,
     *  please see the @link pluginsignals.c Signal documentation @endlink. */
    const(gchar)* signal_name;
    /** A callback function which is called when the signal is emitted. */
    GCallback   callback;
    /** Set to TRUE to connect your handler with g_signal_connect_after(). */
    gboolean    after;
    /** The user data passed to the signal handler. If set to NULL then the signal
     * handler will receive the data set with geany_plugin_register_full() or
     * geany_plugin_set_data() */
    gpointer    user_data;
}
