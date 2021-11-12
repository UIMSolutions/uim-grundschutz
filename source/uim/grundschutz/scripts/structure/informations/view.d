module uim.grundschutz.scripts.structure.informations.view;

@safe:
import uim.grundschutz;
import uim.grundschutz.scripts.structure.informations;

auto viewInformation() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["viewForm", "entity_id", "entity_name", "entity_display", "entity_description", "messages"])~
    jsFunc("viewInformation", ["formId"], 
      "messages.innerHTML = '';"~
      jsConst("formData", "new FormData(viewForm)")~
      jsFetch(myApi~"/view", ["method": "'POST'", "body": "formData"], [
        "response => response.json()",  
        "result => "~jsBlock(
          jsLet("alerts", "readMessages(result.messages)")~"messages.innerHTML=alerts;"
          )],
          "(error) => { console.error('Error:', error); }"
        ));  
}

unittest {
  auto f = File("../../PUBLIC/js/apps/grundschutz/structure/informations/view.js", "w"); // open for writing
  f.write(viewInformation);
}
