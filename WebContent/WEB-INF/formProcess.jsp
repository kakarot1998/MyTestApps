<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Information Form</title>
        <link type="text/css" rel="stylesheet" href="style/main.css" />
    </head>
    <body>
    
    		<h4>Vous avez renseigné les informations suivantes : </h4>
   			 <table>
				  <tr>
				  	 <c:forEach var="parametre" items="${paramValues}"> 
						   <th>	
						   		<b><c:out value="${ parametre.key }"/></b> 
						   </th>		         
			      	  </c:forEach>		    
				  </tr>
				  <tr>		    
					 <c:forEach var="parametre" items="${paramValues}"> 
						   <td>	
						   		<c:forEach var="value" items="${parametre.value}">
								            <c:out value="${ value }"/>   
								       	</c:forEach>
						   </td>						        				         
			      	  </c:forEach>   	    
				  </tr>
			  </table>	
  		
	         <br/> <br/>
	         
	         <h4>Vous vous nommez : <b><c:out value="${ param.nom }"/></b></h4>	
	         
	         
	
  			 <h4>Votre Email : <b> <c:out value="${ param.email }"/> </b></h4>
      		 
      		
	  	 
			 <h4>Vous maitrisez les langages de programmations suivants :</h4>
			 
	         	<c:choose>
					<c:when test="${ !empty paramValues.langages }">
						
							<c:forEach var="langages" items="${ paramValues.langages }"> 
								<b><c:out value="${ langages }"/></b>, 
							</c:forEach>	 
					</c:when>
						
					<c:otherwise>
						<b>Vous ne maitrisez aucun langage parmi la liste proposée.</b>
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${ !empty param.autre }">
						        
								<c:forTokens var="langages" items="${ param.autre }" delims=","> 
									<b><c:out value="${ langages }"/></b>,
								</c:forTokens>
					</c:when>
					<c:otherwise>
						<b>Vous ne maitrisez aucun autre langages.</b>>
					</c:otherwise>
				</c:choose>
			
	     
	</body>
</html>