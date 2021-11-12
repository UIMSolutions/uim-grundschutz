module uim.grundschutz.classes.entities.department;

@safe:
import uim.grundschutz;

class DBSIDepartment : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_department");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIDepartment() { return new DBSIDepartment; }
auto BSIDepartment(UUID id) { return BSIDepartment.id(id); }
auto BSIDepartment(string name) { return BSIDepartment.name(name); }
auto BSIDepartment(UUID id, string name) { return BSIDepartment(id).name(name); }
auto BSIDepartment(Json json) { return (new DBSIDepartment(json)); }