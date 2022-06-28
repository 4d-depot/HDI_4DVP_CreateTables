//%attributes = {}
var $area : Text

$area:="ViewProAreaInvoice"

VP SET TEXT VALUE(VP Cell($area; 1; 1); "ID:")
VP SET TEXT VALUE(VP Cell($area; 1; 3); "Lastname:")
VP SET TEXT VALUE(VP Cell($area; 1; 4); "Firstname:")
VP SET TEXT VALUE(VP Cell($area; 1; 5); "Email:")
VP SET TEXT VALUE(VP Cell($area; 1; 6); "Phone:")

// Bind the document header from the data context
VP SET BINDING PATH(VP Cell($area; 2; 1); "ID")
VP SET BINDING PATH(VP Cell($area; 2; 3); "Lastname")
VP SET BINDING PATH(VP Cell($area; 2; 4); "Firstname")
VP SET BINDING PATH(VP Cell($area; 2; 5); "email")
VP SET BINDING PATH(VP Cell($area; 2; 6); "Phone")





VP COLUMN AUTOFIT(VP Column($area; 1; 7))

