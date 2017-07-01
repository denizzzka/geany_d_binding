module geany_plugin_d_api.keybindings;

import geany_plugin_d_api.types;
import gdk.Gdk: GdkModifierType, GDestroyNotify;
import gtk.Widget: GtkWidget;

extern(System) @nogc nothrow:

struct GeanyKeyGroup;

/** Represents a single keybinding action.
 *
 * Use keybindings_set_item() to set. */
struct GeanyKeyBinding
{
    guint key;              /**< Key value in lower-case, such as @c GDK_a or 0 */
    GdkModifierType mods;   /**< Modifier keys, such as @c GDK_CONTROL_MASK or 0 */
    gchar *name;            /**< Key name for the configuration file, such as @c "menu_new" */
    /** Label used in the preferences dialog keybindings tab.
     * May contain underscores - these won't be displayed. */
    gchar *label;
    /** Function called when the key combination is pressed, or @c NULL to use the group callback
     * (preferred). @see plugin_set_key_group(). */
    GeanyKeyCallback callback;
    GtkWidget *menu_item;   /**< Optional widget to set an accelerator for, or @c NULL */
    guint id;
    guint default_key;
    GdkModifierType default_mods;
    GeanyKeyBindingFunc cb_func;
    gpointer cb_data;
    GDestroyNotify cb_data_destroy;
};

/** Function pointer type used for keybinding group callbacks.
 *
 * You should return @c TRUE to indicate handling the callback. (Occasionally, if the keybinding
 * cannot apply in the current situation, it is useful to return @c FALSE to allow a later keybinding
 * with the same key combination to handle it). */
alias GeanyKeyGroupCallback = gboolean function(guint key_id);

/** Function pointer type used for keybinding callbacks, with userdata for passing context
 *
 * You should return @c TRUE to indicate handling the callback. (Occasionally, if the keybinding
 * cannot apply in the current situation, it is useful to return @c FALSE to allow a later keybinding
 * with the same key combination to handle it).
 *
 * @since 1.26 (API 226) */
alias GeanyKeyBindingFunc = gboolean function(GeanyKeyBinding* key, guint key_id, gpointer user_data);

/** Function pointer type used for keybinding callbacks. */
alias GeanyKeyCallback = void function(guint key_id);

GeanyKeyBinding* keybindings_set_item(
        GeanyKeyGroup* group,
        gsize key_id,
        GeanyKeyCallback callback,
        guint key,
        GdkModifierType mod,
        const(gchar)* name,
        const(gchar)* label,
        GtkWidget* menu_item
    );
