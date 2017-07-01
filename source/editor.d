module geany_plugin_d_api.editor;

import geany_plugin_d_api.types;
import geany_plugin_d_api.document;
import geany_plugin_d_api.scintilla.ScintillaWidget: ScintillaObject;

extern(System) @nogc nothrow:

/** Editor-owned fields for each document. */
struct GeanyEditor
{
    GeanyDocument   *document;      /**< The document associated with the editor. */
    ScintillaObject *sci;           /**< The Scintilla editor @c GtkWidget. */
    gboolean         line_wrapping; /**< @c TRUE if line wrapping is enabled. */
    gboolean         auto_indent;   /**< @c TRUE if auto-indentation is enabled. */
    /** Percentage to scroll view by on paint, if positive. */
    gfloat           scroll_percent;
    GeanyIndentType  indent_type;   /* Use editor_get_indent_prefs() instead. */
    gboolean         line_breaking; /**< Whether to split long lines as you type. */
    gint             indent_width;
}

/** Whether to use tabs, spaces or both to indent. */
enum GeanyIndentType
{
    GEANY_INDENT_TYPE_SPACES,   /**< Spaces. */
    GEANY_INDENT_TYPE_TABS,     /**< Tabs. */
    GEANY_INDENT_TYPE_BOTH      /**< Both. */
}
