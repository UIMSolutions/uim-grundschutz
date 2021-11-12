module uim.grundschutz.pages;

@safe:
import uim.grundschutz;

class DBSIAppPage : DAPPPage {
  this() { super(); 
    this.sessionRequired(true).siteRequired(true);
  }
}