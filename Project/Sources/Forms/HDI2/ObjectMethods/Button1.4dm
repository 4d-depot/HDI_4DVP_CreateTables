var $area : Text
var $data : Collection

$area:="ViewProAreaCharts"
VP IMPORT DOCUMENT($area; Folder:C1567(fk resources folder:K87:11).file("TableWithCharts.4vp").platformPath)


If (Form:C1466.trace)
	TRACE:C157
End if 

// Creates a collection with data to display
$data:=CreateData


// Sets the datacontext with the collection created above
VP SET DATA CONTEXT($area; New object:C1471("Data"; $data))

// Creates automaticaly the table
VP CREATE TABLE(VP Cell($area; 0; 0); Form:C1466.VPtableName; "Data")

// Column resizing
VP COLUMN AUTOFIT(VP Column($area; 0; 7))





