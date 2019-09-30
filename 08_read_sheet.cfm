
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>CFSUMMIT - Integrating ColdFusion with Microsoft Office</title>
    	<link href="css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
    


	<cfif isdefined('FORM.submit')>
    
            <cfspreadsheet 
                action="read"
                src = "#ExpandPath( 'files\' )#salesByRep.xlsx"
                query = "qryWesternSales"
                columns = "1-16"
                columnnames = "SalesRep,District,Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec,Total,Avg"
                rows = "4-8"
                sheetname="Sales">
                
             <cfspreadsheet 
                action="read"
                src = "#ExpandPath( 'files\' )#salesByRep.xls"
                query = "qryEasternSales"
                columns = "1-16"
                columnnames = "SalesRep,District,Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec,Total,Avg"
                rows = "12-14"
                sheetname="Sales">
                
             <cfspreadsheet 
                action="read"
                src = "#ExpandPath( 'files\' )#salesByRep.xls"
                query = "qrySouthernSales"
                columns = "1-16"
                rows = "18-19"
                sheet="1">

            
            	<table>
                   
                    <tr><th colspan="16">Western Division</th></tr>
                     <tr>
                    	<th>SalesRep</th>
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
                        <th>Total</th>
                        <th>Avg</th>
                    </tr>
                    <cfoutput query="qryWesternSales">
                        <tr bgcolor="#IIf(CurrentRow Mod 2, DE('EEEEEE'), DE('FFFFFF'))#">
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
                            <td>#Total#</td>
                            <td>#Avg#</td>
                        </tr>
                    </cfoutput>
                    <tr><th colspan="16">Eastern Division</th></tr>
                     <tr>
                    	<th>SalesRep</th>
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
                        <th>Total</th>
                        <th>Avg</th>
                    </tr>
                    <cfoutput query="qryEasternSales">
                        <tr bgcolor="#IIf(CurrentRow Mod 2, DE('EEEEEE'), DE('FFFFFF'))#">
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
                            <td>#Total#</td>
                            <td>#Avg#</td>
                        </tr>
                    </cfoutput>
                    <tr><th colspan="16">Southern Division</th></tr>
                     <tr>
                    	<th>SalesRep</th>
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
                        <th>Total</th>
                        <th>Avg</th>
                    </tr>
                    <cfoutput query="qrySouthernSales">
                        <tr bgcolor="#IIf(CurrentRow Mod 2, DE('EEEEEE'), DE('FFFFFF'))#">
                            <td>#col_1#</td>
                            <td>#col_2#</td>
                            <td>#col_3#</td>
                            <td>#col_4#</td>
                            <td>#col_5#</td>
                            <td>#col_6#</td>
                            <td>#col_7#</td>
                            <td>#col_8#</td>
                            <td>#col_9#</td>
                            <td>#col_10#</td>
                            <td>#col_11#</td>
                            <td>#col_12#</td>
                            <td>#col_13#</td>
                            <td>#col_14#</td>
                            <td>#col_15#</td>
                            <td>#col_16#</td>
                        </tr>
                    </cfoutput>
                </table>
    
    </cfif>
    
    <cfform name="frmSales" action="" method="post">
        <cfinput name="submit" type="submit" value="Read File" class="btn" /><br/><br/>
        <a href="09_read_sheet_multiple.cfm">Next</a>
    </cfform>
    
    </body>
</html>