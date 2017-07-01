module geany_plugin_d_api.scintilla.ScintillaWidget;

import geany_plugin_d_api.types;
import gtkc.gtktypes: GtkContainer;

extern(System) @nogc nothrow:

struct ScintillaObject
{
    GtkContainer cont;
    void* pscin;
}
