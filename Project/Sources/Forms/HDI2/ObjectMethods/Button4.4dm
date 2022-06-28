var $area : Text
var $data : Object
var $parameters : Object

$area:="ViewProAreaInvoice"

OBJECT SET ENABLED:C1123(*; "Button5"; True:C214)

VP NEW DOCUMENT($area)

If (Form:C1466.trace)
	TRACE:C157
End if 

// Inits table parameters
$parameters:=New object:C1471

$parameters.showFooter:=True:C214
$parameters.useFooterDropDownList:=True:C214
// Inits the columns of the table
$parameters.tableColumns:=New collection:C1472
$parameters.tableColumns.push(New object:C1471("dataField"; "Description"; "name"; "Description"))
$parameters.tableColumns.push(New object:C1471("dataField"; "Weight"; "name"; "Weight"))
$parameters.tableColumns.push(New object:C1471("dataField"; "Price"; "name"; "Price"))

// Creates the table
VP CREATE TABLE(VP Cells($area; 1; 9; $parameters.tableColumns.length; 1); "Invoices"; "Invoices"; $parameters)


// Creates the fields above the table
InitInvoiceTitles

// Creation of the object to bind to the datacontext
Form:C1466.currentInvoice:=Form:C1466.currentInvoice.first()
$data:=Form:C1466.currentInvoice.toObject()
$data.Invoices:=Form:C1466.currentInvoice.link_Invoices.toCollection()
// Sets the datacontext with the collection created above
VP SET DATA CONTEXT($area; $data)

VP COLUMN AUTOFIT(VP Column($area; 0; 4))



