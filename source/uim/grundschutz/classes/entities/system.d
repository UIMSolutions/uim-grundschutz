module uim.grundschutz.classes.entities.system;

@safe:
import uim.grundschutz;

class DBSISystem : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_system");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSISystem() { return new DBSISystem; }
auto BSISystem(UUID id) { return BSISystem.id(id); }
auto BSISystem(string name) { return BSISystem.name(name); }
auto BSISystem(UUID id, string name) { return BSISystem(id).name(name); }
auto BSISystem(Json json) { return (new DBSISystem(json)); }