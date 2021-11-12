module uim.grundschutz.classes.entities.information_domain;

@safe:
import uim.grundschutz;

class DBSIInformationDomain : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_information_domain");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIInformationDomain() { return new DBSIInformationDomain; }
auto BSIInformationDomain(UUID id) { return BSIInformationDomain.id(id); }
auto BSIInformationDomain(string name) { return BSIInformationDomain.name(name); }
auto BSIInformationDomain(UUID id, string name) { return BSIInformationDomain(id).name(name); }
auto BSIInformationDomain(Json json) { return (new DBSIInformationDomain(json)); }