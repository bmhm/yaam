<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Yet another alliance manager!</title>
	<link rel="stylesheet" type="text/css" href="yaam.css">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>

<body>
	<div align="center">		<form action="lost_pw.php" method="POST">
        <img border="0" src="bilder/logo.png" alt="Yaam! Logo">        <table width="520">
          {if isset($msg) }
          <tr>
            <td colspan="4" style="color: #fec22f;" align="center">{$msg}</td>
          </tr> 
          {/if}	
          <tr>
            <td colspan="4" align="center">Passwort anfordern</td>
          </tr>  
          <tr> 
          	<td class="none"></td>
            <td width="200">Nickname:</td>
            <td width="200" align="center"><input type="text" name="nick" size="20" maxlength="20"></td>
            <td class="none"></td>
          </tr>
          <tr>
          	<td class="none"> </td>
            <td height="30">E-Mailadresse:</td>
            <td align="center"><input type="text" name="email" size="20" maxlength="40"></td>
            <td class="none"> </td>
          </tr>
          <tr>
            <td align="right" height="30"  class="none"> </td>
            <td align="center" width="225" colspan="2">
            	<input type="submit" value="Anfordern"> &nbsp; &nbsp; <input type="reset" value="Löschen">
            </td>
				<td class="none">  </td>
          </tr>
				
        </table></form> 
     </div>
     
  </body>
</html>
