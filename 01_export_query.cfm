
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>CFSUMMIT 2019 - Spreadsheet Magic with CFSpreadsheet</title>
  <meta name="description" content="CFSUMMIT 2019 - Spreadsheet Magic with CFSpreadsheet">
  <meta name="author" content="Kinetic InterActive">

  <link rel="stylesheet" href="css/default.css">

</head>

    <body>
    
    <cfhttp method="get" url="http://localhost/cfsummit/cfspreadsheet/csv/phoneBook.csv" name="csvData">


	<cfif isdefined('FORM.submit')>

		
		<cfspreadsheet 
            action="write" 
            filename = "#ExpandPath( 'files\' )#contacts.xls"   
            overwrite = "true"	   
            query = "csvData" />
		
		<cfspreadsheet 
            action="read" 
            src = "#ExpandPath( 'files\' )#contacts.xls"
		    <!---headerrow="1"--->
            query = "data" />
			
			<!---<cfset metadata = getMetadata(data)>
			<cfdump var="#metadata#" />--->
		
			<cfdump var="#data#" />
			
		<cfabort>
    			
    </cfif>
		
	<table id="demo" class="display" style="width:100%;" border=0>
		<thead>
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Company</th>
				<th>Email</th>
				<th>Address</th>
				<th>City</th>
				<th>Zip</th>
			</tr>
		</thead>
		<tbody>
			<cfoutput query="csvData">
			<tr>
				<td>#FirstName#</td>
				<td>#LastName#</td>
				<td>#Company#</td>
				<td>#Email#</td>				
				<td>#Address#</td>
				<td>#City#</td>
				<td>#Zip#</td>
			</tr>            
			</cfoutput>
		</tbody>
	</table>
	
	<form name="frmPhoneBook" action="" method="post">
        <input name="submit" type="Submit" value="Export To Excel" class="btn" /><br/><br/>
    </form>
	<a href="02_formatting_basic.cfm">Next</a>
		
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