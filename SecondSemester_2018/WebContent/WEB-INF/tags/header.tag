<%@ tag body-content="empty" pageEncoding="euc-kr"%>
<%@ tag trimDirectiveWhitespaces="true"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="level" type="java.lang.Integer"%>
<%
	// title은 required값이 true이기 때문에 반듯이 값이 있아야 한다.
	String headStartTag = null;
	String headEndTag = null;
	if(level == null){
		headStartTag="<h1>";
		headEndTag="</h1>";
	}
	else if(level == 1){
		headStartTag="<h1>";
		headEndTag="</h1>";
	}
	else if(level == 2){
		headStartTag="<h2>";
		headEndTag="</h2>";
	}
	else if(level == 3){
		headStartTag="<h3>";
		headEndTag="</h3>";
	}
%>
<%= headStartTag %>
${title }
<%=headEndTag %>
