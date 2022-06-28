//%attributes = {}

var $p : Text

Form:C1466.trace:=False:C215

Form:C1466.people:=ds:C1482.People.all().toCollection().resize(900)

Form:C1466.currentInvoice:=ds:C1482.People.query("ID<100").first()

Form:C1466.fields:=New collection:C1472

// lists all the fields of the People table
For each ($p; Form:C1466.people[0])
	Form:C1466.fields.push(New object:C1471("Field"; $p; "Display"; True:C214))
End for each 

Form:C1466.VPtableName:="PeopleTable"

InitVisibleObjects(False:C215)

OBJECT SET ENABLED:C1123(*; "Button"; False:C215)
OBJECT SET ENABLED:C1123(*; "Button1"; False:C215)
OBJECT SET ENABLED:C1123(*; "Button4"; False:C215)
OBJECT SET ENABLED:C1123(*; "Button5"; False:C215)