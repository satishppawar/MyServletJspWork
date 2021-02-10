# SimpleServletProject

## 1) Creating dynamic web project

- Creating a `dynamic web project`

> Target Runtime

> Dynamic web module version - 3.0

> Select source folder

> Context Name and Web Content Directory 


## 2) Application Context 

 - It is an identifier used to distinguish between multiple web applications deployed on application server (Tomcat).
 
 
- Tomcat may have many applications running on single instance simultaneously.
So call particular web applications we have to specify applications name.


 - eg. In case of  http:/localhost:8080/01_SimpleServetProject/, app context is  01_SimpleServetProject
 

- eg. In case of  http:/localhost:8080/, app context is  /

 
* More Examples :

> http://localhost:8080 ====> tomcat instance

> /SimpleServletProject ====> Application context root

and 

> http://localhost:8080/SimpleServletProject ===> call to web application
Here by default one of the files in welcome-file in web.xml is called.

## 3) Web Content Directory

 - It contains all web related content such as .html,.htm,.jsp,.js files


## 4) web.xml

- [Basic Servet PPT ](https://slideplayer.com/slide/4932916/ "Basic Servet") 


- `<display-name>01_SimpleServetProject</display-name>` - It is name of Servlet project


- STEP 0 Welcome files 

> Demo of Welcome file list - index.html



```
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://java.sun.com/xml/ns/javaee"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
	id="WebApp_ID" version="3.0">
	<display-name>01_SimpleServetProject</display-name>
	<!-- STEP 0 Welcome files-->
	<welcome-file-list>
		<welcome-file>index.html</welcome-file>
	</welcome-file-list>
	<!--STEP1 DEFINE THE SERVLET -->
	<servlet>
		<servlet-name>XmlServlet</servlet-name>
		<servlet-class>com.basic.servlet.XmlServlet</servlet-class>
		<init-param>
			<param-name>defualtName</param-name>
			<param-value>Satish Pawar</param-value>
		</init-param>
	</servlet>

	<!--STEP2 DO THE SERVLET URL MAPPING  -->
	<servlet-mapping>
		<servlet-name>XmlServlet</servlet-name>
		<url-pattern>/xmlServletpath</url-pattern>
	</servlet-mapping>
	
	<!-- STEP3 INITIALIZING JSP -->
	<servlet>
		<servlet-name>InitJSP</servlet-name>
		<jsp-file>/initpage.jsp</jsp-file>
		<init-param>
			<param-name>defaultUser</param-name>
			<param-value>Default User Name</param-value>
		</init-param>
	</servlet>
	
	<servlet-mapping>
		<servlet-name>InitJSP</servlet-name>
		<url-pattern>/initpage.jsp</url-pattern>
	</servlet-mapping>
</web-app>
```

-----

## 5) Implementing Servlet

- What is Servlet? 

> A servlet is a Java programming language class used to extend the capabilities of servers that host applications accessed by means of a request-response programming model.

> Although servlets can respond to any type of request, they are commonly used to extend the applications hosted by web servers. For such applications, Java Servlet technology defines HTTP-specific servlet classes.

> The javax.servlet and javax.servlet.http packages provide interfaces and classes for writing servlets. 

> All servlets must implement the Servlet interface, which defines lifecycle methods. When implementing a generic service, you can use or extend the GenericServlet class provided with the Java Servlet API. The HttpServlet class provides methods, such as doGet and doPost, for handling HTTP-specific services.

###### 5.1) Implementation and execution of SimpleServlet
 
- Implementation and execution of XmlServlet

> Create a deployment descriptor -> web.xml

> Create com.basic.servlet.XmlServlet class

> Override doGet

>> * request.getParameter - to get the request parameter such as userName=mahi .

>> * e.g http://localhost:8080/01_SimpleServetProject/xmlServletpath?userName=mahi


> Override doPost and implement form

>> Create a form /01_SimpleServetProject/WebContent/SimpleForm.html



###### 5.2) Implementation and execution of GenericServletDemo


## References

> https://docs.oracle.com/javaee/7/tutorial/servlets001.htm#BNAFE

> https://slideplayer.com/slide/5856851/

> https://slideplayer.com/slide/4819848/

> https://slideplayer.com/slide/6187208/

> https://slideplayer.com/slide/6960119/ 


