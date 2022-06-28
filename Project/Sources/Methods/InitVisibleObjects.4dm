//%attributes = {}
#DECLARE($VisiblePage2 : Boolean; $VisiblePage3 : Boolean; $VisiblePage4 : Boolean)

OBJECT SET VISIBLE:C603(*; "ViewProAreaInvoice"; $VisiblePage2)

OBJECT SET VISIBLE:C603(*; "ViewProAreaCharts"; $VisiblePage3)

OBJECT SET VISIBLE:C603(*; "ViewProAreaColumns"; $VisiblePage4)

OBJECT SET VISIBLE:C603(*; "trace"; $VisiblePage2 || $VisiblePage3 || $VisiblePage4)


