module uim.grundschutz.scripts.structure.informations.create;

@safe:
import uim.grundschutz;
import uim.grundschutz.scripts.structure.informations;

auto createInformation() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsCreateEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps/grundschutz/structure/informations/create.js", "w"); // open for writing
  f.write(createInformation);
}
