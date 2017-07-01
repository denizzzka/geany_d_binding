module geany_plugin_d_api.sciwrappers;

import geany_plugin_d_api.types;
import geany_plugin_d_api.scintilla.ScintillaWidget;

extern(System) nothrow @nogc:

/** Gets the cursor position.
 * @param sci Scintilla widget.
 * @return Position. */
gint sci_get_current_position(ScintillaObject *sci);
