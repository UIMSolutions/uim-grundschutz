module uim.grundschutz.classes.entities.person;

@safe:
import uim.grundschutz;

class DBSIPerson : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_person");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIPerson() { return new DBSIPerson; }
auto BSIPerson(UUID id) { return BSIPerson.id(id); }
auto BSIPerson(string name) { return BSIPerson.name(name); }
auto BSIPerson(UUID id, string name) { return BSIPerson(id).name(name); }
auto BSIPerson(Json json) { return (new DBSIPerson(json)); }