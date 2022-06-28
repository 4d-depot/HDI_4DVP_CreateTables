//%attributes = {}
If (FORM Event:C1606.code=On VP Ready:K2:59)
	var $area : Text
	$area:="ViewProAreaColumns"
	//Creates the data context
	VP SET DATA CONTEXT($area; New object:C1471("Data"; Form:C1466.people))
	
	// Creates the table from the "data" attribut of the data context
	VP CREATE TABLE(VP Cell($area; 1; 1); Form:C1466.VPtableName; "Data")
	// columns resizing
	VP COLUMN AUTOFIT(VP Column($area; 1; Form:C1466.fields.length))
	
	OBJECT SET ENABLED:C1123(*; "Button"; True:C214)
End if 