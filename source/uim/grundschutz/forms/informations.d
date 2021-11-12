module uim.grundschutz.forms.informations;

@safe:
import uim.grundschutz;

class DBSIInformationForm : DAPPEntityForm {
  this() { super();
    this
    .formBody(BSIInformationFormBody);
  }
}
auto BSIInformationForm() { return new DBSIInformationForm; }
auto BSIInformationForm(string crudMode) { return BSIInformationForm.crudMode(crudMode); }
auto BSIInformationForm(string crudMode, string path) { return BSIInformationForm(crudMode).path(path); }

class DBSIInformationFormBody : DAPPEntityFormBody {
  this() { super();
    this
    .crudMode("create")
    .fields(["name", "display", "description"]); 
  }

  override DH5Obj formGroup(string field, bool readonly, STRINGAA reqParameters) {
    DBSIInformation Information;
    if (entity) Information = cast(DBSIInformation)entity;
    switch(field) {
      default: return super.formGroup(field, readonly, reqParameters); 
    }
  }
}
auto BSIInformationFormBody() { return new DBSIInformationFormBody(); }

unittest {
  assert(BSIInformationFormBody);
}
