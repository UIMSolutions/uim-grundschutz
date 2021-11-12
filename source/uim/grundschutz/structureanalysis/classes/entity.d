module uim.grundschutz.structureanalysis.classes.entity;

import uim.grundschutz;

class DBSIEntity {
  this() {}

  mixin(OProperty!("UUID", "id"));
  mixin(OProperty!("string", "uid")); // Kennung
  mixin(OProperty!("string", "title")); // Title
  mixin(OProperty!("string", "responsible")); // Verantwortlicher
  mixin(OProperty!("string", "description")); // Beschreibung
}
auto BSIEntity() { return new DBSIEntity(); }