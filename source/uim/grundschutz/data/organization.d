module uim.grundschutz.classes.entities.organization;

@safe:
import uim.grundschutz;

class DBSIOrganization : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_organization");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSIOrganization() { return new DBSIOrganization; }
auto BSIOrganization(UUID id) { return BSIOrganization.id(id); }
auto BSIOrganization(string name) { return BSIOrganization.name(name); }
auto BSIOrganization(UUID id, string name) { return BSIOrganization(id).name(name); }
auto BSIOrganization(Json json) { return (new DBSIOrganization(json)); }