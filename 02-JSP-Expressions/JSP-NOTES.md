# JSP Expressions

![altText][id] 

[id]: jsp-expression.png "JSP Expression"

## JSP Declaration and JSP Expression Element
```
<%= " Name is " +new String("Satish") %>
```

---

## JSP Scriplet element

```
<%
		int year;
		out.println("year is "+year)
	
%>
```

---

## JSP declarations element

- Below is example of declaration element

```
<%! public int age=20 ;%>
```

#### **NOTE** 

* In case of *declaration element* use of access specifiers where as in case of *Scriplet element* use of access specifiers is *not allowed*.

> Below code is invalid and gives error as `Illegal modifier for the variable age; only final is permitted`

```jsp
<%
		 public int age=20 ;
%>
```

* Declaration of Method is done using Declaration element

```
<!-- Declaration of Method using Declaration element-->
	<%!String message() {
		return "Hello from JSP!!!";
	}%>
```
* Calling Method is done using Expression element

```
	<%=message()%>
	
```