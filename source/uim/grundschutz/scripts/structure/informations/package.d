module uim.grundschutz.scripts.structure.informations;

@safe:
import uim.grundschutz;

auto myApi = "/api/v1/grundschutz/informations";
auto myUrl = "/structure/informations";

auto information() {  
  return "class BSIInformation {
    constructor(data) {}
  }";

}

unittest {
  auto f = File("../../PUBLIC/js/apps/grundschutz/structure/informations/information.js", "w"); // open for writing
  f.write(information);
}
