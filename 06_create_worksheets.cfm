
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>CFSUMMIT - Integrating ColdFusion with Microsoft Office</title>
    	<link href="css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
    
    <cfhttp method="get" url="http://localhost/cfsummit/cfspreadsheet/csv/sales.csv" name="csvData">
	<cfhttp method="get" url="http://localhost/cfsummit/cfspreadsheet/csv/phoneBook.csv" name="csvData2">

	<cfif isdefined('FORM.submit')>
    
        <cfset sObj = SpreadsheetNew("Sales") /> 
        
        <cfset spreadsheetaddrow(sObj,"SalesRep,District,Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec,Total,Avg")> 
        
        <cfoutput query="csvData" >
        	<cfset spreadsheetaddrow(sObj,"#SalesRep#,#District#,#Jan#,#Feb#,#Mar#,#Apr#,#May#,#Jun#,#Jul#,#Aug#,#Sep#,#Oct#,#Nov#,#Dec#")>
            <cfset spreadsheetSetCellFormula(sObj, "SUM(C#currentRow+1#:N#currentRow+1#)", #currentRow#+1, 15)>
            <cfset spreadsheetSetCellFormula(sObj, "O#currentRow+1#/12", #currentRow#+1, 16)>
        </cfoutput>

		<cfset rowDataStart=2>
        <cfset rowDataEnd=csvData.recordCount+1>
        
		<cfset spreadsheetSetCellValue(sObj, "Total:", rowDataEnd+1, 2)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(C#rowDataStart#:C#rowDataEnd#)", rowDataEnd+1, 3)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(D#rowDataStart#:D#rowDataEnd#)", rowDataEnd+1, 4)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(E#rowDataStart#:E#rowDataEnd#)", rowDataEnd+1, 5)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(F#rowDataStart#:F#rowDataEnd#)", rowDataEnd+1, 6)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(G#rowDataStart#:G#rowDataEnd#)", rowDataEnd+1, 7)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(H#rowDataStart#:H#rowDataEnd#)", rowDataEnd+1, 8)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(I#rowDataStart#:I#rowDataEnd#)", rowDataEnd+1, 9)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(J#rowDataStart#:J#rowDataEnd#)", rowDataEnd+1, 10)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(K#rowDataStart#:K#rowDataEnd#)", rowDataEnd+1, 11)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(L#rowDataStart#:L#rowDataEnd#)", rowDataEnd+1, 12)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(M#rowDataStart#:M#rowDataEnd#)", rowDataEnd+1, 13)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(N#rowDataStart#:N#rowDataEnd#)", rowDataEnd+1, 14)>
        <cfset spreadsheetSetCellFormula(sObj, "SUM(M#rowDataStart#:M#rowDataEnd#)", rowDataEnd+1, 15)>
        <cfset SpreadsheetFormatCell(sObj, {bold=TRUE, alignment="center", fgcolor="red", color="white"}, rowDataEnd+1,15)>
        
        <cfloop from="3" to="16" index="x">
			<cfset SpreadsheetFormatColumn(sObj,{dataformat = "$######,####0.00"},x)>
        </cfloop>
  
  		<cfset SpreadsheetFormatRow(sObj, {bold=TRUE, alignment="center", fgcolor="grey_50_percent", color="white"}, 1)> 
  		<cfset SpreadsheetFormatRow(sObj, {bold=TRUE}, rowDataEnd+1)> 
  
  
  
		<!--- get a handle on the underlying POI object --->
        <cfset objWorkbook = sObj.getWorkbook() />
        <cfset objSheet = objWorkbook.getSheetAt(objWorkbook.getActiveSheetIndex()) />
        
        <!--- get a handle on the conditional formatting property of the sheet --->
        <cfset objCF = objSheet.getSheetConditionalFormatting() />  
        
        <cfset ConditionalFormattingRule = objCF.createConditionalFormattingRule(5,"6000",javacast("null", "")) />
		<cfset PatternFormat = ConditionalFormattingRule.createPatternFormatting() />
        <cfset PatternFormat.setFillBackgroundColor(createObject('java', 'org.apache.poi.hssf.util.HSSFColor$LIGHT_GREEN').getIndex()) />
		
		<cfset regions = arrayNew(1) />
		<cfset regions[1] = createObject('java', 'org.apache.poi.ss.util.CellRangeAddress').init(1,100,15,15) />
		<!--- CellRangeAddress(firstrow, lastrow, firstcol, lastcol) --->
   
		<!--- Apply Conditional Formatting rule defined above to the regions --->
		<cfset objCF.addConditionalFormatting(regions, ConditionalFormattingRule) />										  
		
        
        <!--- Create a new sheet --->
        <cfset SpreadSheetCreateSheet(sObj, "Directory")> 
        <!--- Set the sheet as active --->
        <cfset SpreadSheetSetActiveSheet (sObj, "Directory")> 
        <!--- Add a new row to the sheet --->
        <cfset SpreadsheetAddRows(sObj,csvData2) />
        
											  
        <cfspreadsheet 
        	action="write" 
            overwrite="true"
            filename = "#ExpandPath( 'files\' )#sales.xls"  
            name="sObj" />
         
            
        <cfheader name="Content-Disposition" value="inline; filename=sales.xls">
		<cfcontent type="application/vnd.ms-excel" file="#ExpandPath( 'files\' )#sales.xls">
    
    </cfif>
    

			
	<table id="demo" class="display" style="width:100%;" border=0>
		<thead>
			<tr>
				<th>Sales Rep</th>
				<th>District</th>
				<th>Jan</th>
				<th>Feb</th>
				<th>Mar</th>
				<th>Apr</th>
				<th>May</th>
				<th>Jun</th>
				<th>Jul</th>
				<th>Aug</th>
				<th>Sep</th>
				<th>Oct</th>
				<th>Nov</th>
				<th>Dec</th>
			</tr>
		</thead>
		<tbody>
			<cfoutput query="csvData">
			<tr>
				<td>#SalesRep#</td>
				<td>#District#</td>
				<td>#Jan#</td>
				<td>#Feb#</td>				
				<td>#Mar#</td>
				<td>#Apr#</td>
				<td>#May#</td>
				<td>#Jun#</td>
				<td>#Jul#</td>				
				<td>#Aug#</td>
				<td>#Sep#</td>
				<td>#Oct#</td>
				<td>#Nov#</td>
				<td>#Dec#</td>
			</tr>            
			</cfoutput>
		</tbody>
	</table>

	<form name="frmSales" action="" method="post">
        <input name="submit" type="Submit" value="Export To Excel" class="btn" /><br/><br/>
    </form>
			
	<a href="07_update_worksheets.cfm">Next</a>	

    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="screen" />	
	<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script language="JavaScript">
	$(document).ready(function() {
	    $('#demo').DataTable();
	} );
	</script>
    </body>
</html>