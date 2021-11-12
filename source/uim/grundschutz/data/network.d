module uim.grundschutz.classes.entities.network;

@safe:
import uim.grundschutz;

class DBSINetwork : DOOPEntityVersion {
  this() {
    super(); this.pool("bsi_network");    
  }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }
} 
auto BSINetwork() { return new DBSINetwork; }
auto BSINetwork(UUID id) { return BSINetwork.id(id); }
auto BSINetwork(string name) { return BSINetwork.name(name); }
auto BSINetwork(UUID id, string name) { return BSINetwork(id).name(name); }
auto BSINetwork(Json json) { return (new DBSINetwork(json)); }