module uim.grundschutz.scripts.structure.informations.edit;

@safe:
import uim.grundschutz;

private:
auto myApi = "/api/v1/grundschutz/informations";
auto myUrl = "/structure/informations";

auto editInformation() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["entityForm", "entity_theme"])~
    jsEditEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps/grundschutz/structure/informations/edit.js", "w"); // open for writing
  f.write(editInformation);
}
