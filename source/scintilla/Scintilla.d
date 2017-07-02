module geany_d_binding.scintilla.Scintilla;

import geany_d_binding.scintilla.types;

extern(System) @nogc nothrow:

struct SCNotification
{
	Sci_NotifyHeader nmhdr;
	Sci_Position position;
	/* SCN_STYLENEEDED, SCN_DOUBLECLICK, SCN_MODIFIED, SCN_MARGINCLICK, */
	/* SCN_NEEDSHOWN, SCN_DWELLSTART, SCN_DWELLEND, SCN_CALLTIPCLICK, */
	/* SCN_HOTSPOTCLICK, SCN_HOTSPOTDOUBLECLICK, SCN_HOTSPOTRELEASECLICK, */
	/* SCN_INDICATORCLICK, SCN_INDICATORRELEASE, */
	/* SCN_USERLISTSELECTION, SCN_AUTOCSELECTION */

	int ch;
	/* SCN_CHARADDED, SCN_KEY, SCN_AUTOCCOMPLETED, SCN_AUTOCSELECTION, */
	/* SCN_USERLISTSELECTION */
	int modifiers;
	/* SCN_KEY, SCN_DOUBLECLICK, SCN_HOTSPOTCLICK, SCN_HOTSPOTDOUBLECLICK, */
	/* SCN_HOTSPOTRELEASECLICK, SCN_INDICATORCLICK, SCN_INDICATORRELEASE, */

	int modificationType;	/* SCN_MODIFIED */
	const char *text;
	/* SCN_MODIFIED, SCN_USERLISTSELECTION, SCN_AUTOCSELECTION, SCN_URIDROPPED */

	Sci_Position length;		/* SCN_MODIFIED */
	Sci_Position linesAdded;	/* SCN_MODIFIED */
	int message;	/* SCN_MACRORECORD */
	uptr_t wParam;	/* SCN_MACRORECORD */
	sptr_t lParam;	/* SCN_MACRORECORD */
	Sci_Position line;		/* SCN_MODIFIED */
	int foldLevelNow;	/* SCN_MODIFIED */
	int foldLevelPrev;	/* SCN_MODIFIED */
	int margin;		/* SCN_MARGINCLICK */
	int listType;	/* SCN_USERLISTSELECTION */
	int x;			/* SCN_DWELLSTART, SCN_DWELLEND */
	int y;		/* SCN_DWELLSTART, SCN_DWELLEND */
	int token;		/* SCN_MODIFIED with SC_MOD_CONTAINER */
	Sci_Position annotationLinesAdded;	/* SCN_MODIFIED with SC_MOD_CHANGEANNOTATION */
	int updated;	/* SCN_UPDATEUI */
	int listCompletionMethod;
	/* SCN_AUTOCSELECTION, SCN_AUTOCCOMPLETED, SCN_USERLISTSELECTION, */
}

struct Sci_NotifyHeader
{
	/* Compatible with Windows NMHDR.
	 * hwndFrom is really an environment specific window handle or pointer
	 * but most clients of Scintilla.h do not have this type visible. */
	void *hwndFrom;
	uptr_t idFrom;
	uint code;
}
