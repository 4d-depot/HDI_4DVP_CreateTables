var $area : Text
var $data : Object

$area:="ViewProAreaInvoice"

If (Form:C1466.trace)
	TRACE:C157
End if 

// Creation of the object to bind to the datacontext
Form:C1466.currentInvoice:=Form:C1466.currentInvoice.next() || Form:C1466.currentInvoice.first()
$data:=Form:C1466.currentInvoice.toObject()
$data.Invoices:=Form:C1466.currentInvoice.link_Invoices.toCollection()

// Sets the datacontext with the object created above
// The table is automatically updated with the new data
VP SET DATA CONTEXT($area; $data)
