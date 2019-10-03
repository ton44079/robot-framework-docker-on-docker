*** Setting ***
Resource  ../share.robot

*** Keywords ***
ต้องมี section เขื่อนไข
    Element Should Be Visible  id:condition-detail-panel
ต้องมี Section Core Value
    Element Should Be Visible  id:core_value_panel