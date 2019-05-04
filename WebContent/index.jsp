<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Information Form</title>
        <link type="text/css" rel="stylesheet" href="style/formsStyle.css" />
    </head>
    <body>
    
    
	     <div class="L">
			<form method="post" action="Main">
			  <fieldset class="M">
                    <legend>Information form</legend>
			
							<label for="nom">Entrer ici votre nom complet :</label>
							<br /> 
							<input class="M" type="text" name="nom" id="nom" tabindex="10" />
							<br /> 
					
							<label for="email">Entrer ici votre email :</label>
							<br /> 
							<input class="M" type="email" name="email" id="email" tabindex="20" />
							<br /> 
							
							<label for="langages">Choisir les langages de programmations que vous maitrisez ? </label>
							<br /> 
							<select name="langages" id="langages" multiple="multiple" tabindex="30">
								<option>Java</option>
								<option>Python</option>
								<option>C++</option>
								<option>C#</option>
								<option>Scala</option>
								<option>Perl</option>
								<option>Cobol</option>
							</select>
							<br /> 
						
							<label for="autre">Entrez ici les autres langages que vous maitrisez, séparés par des virgules :</label>
							<br /> 
							<textarea class="M" id="autre" name="autre" ></textarea>
							<br /> 
			
					</fieldset>
					<br />
	                <fieldset class="L" >
						  <input class="L" type="submit" value="Submit" />
		                  <input class="L" type="reset" value="Reset"/> 
	                </fieldset>	
			</form>
	</div>
</body>
</html>