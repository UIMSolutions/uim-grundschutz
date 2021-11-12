module uim.grundschutz.structureanalysis.classes.information;

import uim.grundschutz;

class DBSIInformation : DBSIEntity {
  this() {
    super();
  }
}
auto BSIInformation() { return new DBSIInformation; }