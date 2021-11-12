module uim.grundschutz.classes.entities.information;

@safe:
import uim.grundschutz;

class DBSIInformation : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_information");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIInformation() { return new DBSIInformation; }
auto BSIInformation(UUID id) { return BSIInformation.id(id); }
auto BSIInformation(string name) { return BSIInformation.name(name); }
auto BSIInformation(UUID id, string name) { return BSIInformation(id).name(name); }
auto BSIInformation(Json json) { return (new DBSIInformation(json)); }