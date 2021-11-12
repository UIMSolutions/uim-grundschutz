module uim.grundschutz.classes.entities.application;

@safe:
import uim.grundschutz;

class DBSIApplication : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_applications");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }


/*
	public static final String TYPE_ID = "anwendung"; //$NON-NLS-1$

	public static final String PROP_NAME = "anwendung_name"; //$NON-NLS-1$

	public static final String PROP_KUERZEL = "anwendung_kuerzel"; //$NON-NLS-1$

	public static final String PROP_PERSBEZ 		= "anwendung_persbez"; //$NON-NLS-1$
	public static final String PROP_PERSBEZ_JA 		= "anwendung_persbez_1"; //$NON-NLS-1$
	public static final String PROP_PERSBEZ_NEIN 	= "anwendung_persbez_2"; //$NON-NLS-1$
	@Deprecated
	public static final String PROP_BENUTZER_OLD = "anwendung_benutzer"; //$NON-NLS-1$
	@Deprecated
	public static final String PROP_EIGENTUEMER_OLD = "anwendung_eigentümer"; //$NON-NLS-1$

	public static final String PROP_TAG			= "anwendung_tag"; //$NON-NLS-1$

	public static final String PROP_ERLAEUTERUNG = "anwendung_erlaeuterung"; //$NON-NLS-1$

	public static final String PROP_PROZESSBEZUG				= "anwendung_prozessbezug"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_UNTERSTUETZEND = "anwendung_prozessbezug_1"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_WICHTIG 		= "anwendung_prozessbezug_2"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_WESENTLICH 	= "anwendung_prozessbezug_3"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_HOCHGRADIG 	= "anwendung_prozessbezug_4"; //$NON-NLS-1$


	private static final String PROP_VERARBEITETE_INFORMATIONEN = "anwendung_prozess_informationen"; //$NON-NLS-1$

	private static final String PROP_PROZESSBESCHREIBUNG = "anwendung_prozess"; //$NON-NLS-1$

	private static final String PROP_DRINGLICHKEIT_BEGRUENDUNG = "anwendung_prozessbezug_begruendung"; //$NON-NLS-1$
	
	public static final String PROP_VERTRAULICHKEIT = "anwendung_vertraulichkeit"; //$NON-NLS-1$
	public static final String PROP_VERTRAULICHKEIT_NORMAL = "anwendung_vertraulichkeit_normal"; //$NON-NLS-1$
    public static final String PROP_VERTRAULICHKEIT_HOCH = "anwendung_vertraulichkeit_hoch"; //$NON-NLS-1$
    public static final String PPROP_VERTRAULICHKEIT_SEHR_HOCH = "anwendung_vertraulichkeit_sehrhoch"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT = "anwendung_verfuegbarkeit"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_NORMAL = "anwendung_verfuegbarkeit_normal"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_HOCH = "anwendung_verfuegbarkeit_hoch"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_SEHR_HOCH = "anwendung_verfuegbarkeit_sehrhoch"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET = "anwendung_integritaet"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_NORMAL = "anwendung_integritaet_normal"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_HOCH = "anwendung_integritaet_hoch"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_SEHR_HOCH = "anwendung_integritaet_sehrhoch"; //$NON-NLS-1$
    
    public static final String PROP_ESA_ENTSCHEIDUNG_DURCH = "anwendung_ergaenzendeanalyse_entscheidung_durch"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_AM = "anwendung_ergaenzendeanalyse_entscheidung_am"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_BIS = "anwendung_ergaenzendeanalyse_entscheidung_bis"; //$NON-NLS-1$
*/
} 
auto BSIApplication() { return new DBSIApplication; }
auto BSIApplication(UUID id) { return new DBSIApplication(id); }
auto BSIApplication(string name) { return new DBSIApplication(name); }
auto BSIApplication(UUID id, string name) { return new DBSIApplication(id, name); }
auto BSIApplication(Json json) { return (new DBSIApplication(json)); }


