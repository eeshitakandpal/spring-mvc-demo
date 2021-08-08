<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Student Registration Form</title>
	</head>
	
	<body>
	
		<form:form action="processForm" modelAttribute="student">
		
		First Name: <form:input path="firstName"/>
		
		<br><br>
		Last Name: <form:input path="lastName"/>
		
		<br><br>
		
		Options: <form:select path="country">
				<form:options items = "${student.countryOptions}"/>
				<form:option value = "USA" label = "United States of America"/>
	
		</form:select>
		
		<br><br>
		
		Java <form:radiobutton path = "favoriteLanguage" value="Java"/>
		C# <form:radiobutton path = "favoriteLanguage" value="C#"/>
		Ruby <form:radiobutton path = "favoriteLanguage" value="Ruby"/>
		PHP <form:radiobutton path = "favoriteLanguage" value="PHP"/>
		
		<br><br>
		
		Linux <form:checkbox path = "operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path = "operatingSystems" value="Mac OS"/>
		Windows <form:checkbox path = "operatingSystems" value="Windows"/>
		
		
		<br><br>
		
		<input type="submit" value="Submit"/>
		
		</form:form>
		
		
	</body>


</html>

