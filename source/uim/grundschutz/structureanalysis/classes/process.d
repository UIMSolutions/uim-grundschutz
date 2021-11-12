module uim.grundschutz.structureanalysis.classes.process;

import uim.grundschutz;

class DBSIProcess : DBSIEntity {
  this() {
    super();
  }
}
auto BSIProcess() { return new DBSIProcess; }