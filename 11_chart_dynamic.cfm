
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>CFSUMMIT - Integrating ColdFusion with Microsoft Office</title>
    	<link href="css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>


	<cfif isdefined('FORM.submit')>
    
    
		<!--- Read spreadsheet ---> 
		<cfspreadsheet action="read" src="files/DynamicChartDemo.xlsx" name="sObj" /> 

		<cfscript>
        
        
            spreadsheetSetActiveSheet(sObj, "ChartData");
            
            spreadsheetSetCellValue(sObj, "Ted Williams", 2, 1);
            spreadsheetSetCellValue(sObj, "Wade Kawakami", 3, 1);
            spreadsheetSetCellValue(sObj, "Dennis Goulet", 4, 1);
            spreadsheetSetCellValue(sObj, "Kyle Getham", 5, 1);
            spreadsheetSetCellValue(sObj, "Chris Robinson", 6,1);
            spreadsheetSetCellValue(sObj, "Robert Toya", 7, 1);
                    
            spreadsheetSetCellValue(sObj, 23, 2, 2);
            spreadsheetSetCellValue(sObj, 23, 3, 2);
            spreadsheetSetCellValue(sObj, 11, 4, 2);
            spreadsheetSetCellValue(sObj, 12, 5, 2);
            spreadsheetSetCellValue(sObj, 28, 6, 2);
            spreadsheetSetCellValue(sObj, 43, 7, 2);
			
			
			wb = sObj.getWorkBook();
			
			startCellColRef="A";
			startCellRowRef="2";
			endCellColRef="A";
			endCellRowRef="7";
			sheetName = "ChartData";

            NameReference = wb.getName("Associates");
            referenceString = sheetName&"!$"&startCellColRef&"$"&startCellRowRef&":$"&endCellColRef&"$"&endCellRowRef;
			NameReference.setRefersToFormula(referenceString);
			
			startCellColRef="B";
			startCellRowRef="2";
			endCellColRef="B";
			endCellRowRef="7";
			sheetName = "ChartData";

            NameReference = wb.getName("Sales");
            referenceString = sheetName&"!$"&startCellColRef&"$"&startCellRowRef&":$"&endCellColRef&"$"&endCellRowRef;
			NameReference.setRefersToFormula(referenceString);
			
            
            spreadsheetSetActiveSheet(sObj, 'DynamicChart');
        
        </cfscript>

        
        <cfheader name="Content-Disposition" value="attachment; filename=chart.xlsx" />
        <cfcontent type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" variable="#SpreadSheetReadBinary(sObj)#" />
        
    </cfif>
    
    <cfform name="frmSales" action="" method="post">
        <cfinput name="submit" type="submit" value="Read File" class="btn" /><br/><br/>
        <a href="../msword/index.cfm">Next</a>
    </cfform>
    
    </body>
</html>