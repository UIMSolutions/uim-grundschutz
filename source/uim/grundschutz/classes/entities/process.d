module uim.grundschutz.classes.entities.process;

@safe:
import uim.grundschutz;

class DBSIProcess : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_process");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIProcess() { return new DBSIProcess; }
auto BSIProcess(UUID id) { return BSIProcess.id(id); }
auto BSIProcess(string name) { return BSIProcess.name(name); }
auto BSIProcess(UUID id, string name) { return BSIProcess(id).name(name); }
auto BSIProcess(Json json) { return (new DBSIProcess(json)); }