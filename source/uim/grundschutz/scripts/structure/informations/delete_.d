module uim.grundschutz.scripts.structure.informations.delete_;

@safe:
import uim.grundschutz;
import uim.grundschutz.scripts.structure.informations;

auto deleteInformation() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["deleteForm", "entity_id", "entity_name", "entity_display", "entity_description", "messages"])~
    jsFunc("deleteInformation", ["formId"], 
      "messages.innerHTML = '';"~
      jsConst("formData", "new FormData(deleteForm)")~
      jsFetch(myApi~"/delete", ["method": "'POST'", "body": "formData"], [
        "response => response.json()",  
        "result => "~jsBlock(
          jsIfElse("result.status=201", 
            "window.location.replace('/structure/informations');",
            jsLet("alerts", "readMessages(result.messages)")~
            "messages.innerHTML=alerts;")
          )],
          "(error) => { console.error('Error:', error); }"
        ));
}

unittest {
  auto f = File("../../PUBLIC/js/apps/grundschutz/structure/informations/delete.js", "w"); // open for writing
  f.write(deleteInformation);
}
