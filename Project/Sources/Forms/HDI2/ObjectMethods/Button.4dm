If (FORM Event:C1606.code=On Clicked:K2:4)
	var $area : Text
	var $tableColumns : Collection
	var $column; $field : Object
	
	$area:="ViewProAreaColumns"
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	
	
	$tableColumns:=New collection:C1472
	// Creates the list of columns to display
	For each ($field; Form:C1466.fields.query("Display=true"))
		$column:=New object:C1471
		$column.dataField:=$field.Field
		$column.name:=$field.Field
		
		$tableColumns.push($column)
	End for each 
	
	// Remove the table if necessary
	VP REMOVE TABLE($area; Form:C1466.VPtableName)
	
	If ($tableColumns.length>0)
		// Creates a new table according to the columns list and the data attribut of the datacontext
		VP CREATE TABLE(VP Cells($area; 1; 1; $tableColumns.length; 1); Form:C1466.VPtableName; "Data"; New object:C1471("tableColumns"; $tableColumns))
		
		// Columns resizing
		VP COLUMN AUTOFIT(VP Column($area; 1; $tableColumns.length))
	End if 
End if 
