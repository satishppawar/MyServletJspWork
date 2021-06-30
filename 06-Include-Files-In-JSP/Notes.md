# JSP File 


- For Adding Static Content 

```
<%@ include file="file.txt"%>

```
	
- For Adding Dynamic Content

```
	<jsp:include page="file2.txt" />
```

*NOTE* -

-  use declarative style `<%@%>` to include file for static content only as it will be efficient


- For dynamic content preferred style is using `<jsp:include>` because on refresh it will always make a fresh call to fetch and load content dynamically