<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
<#--    user = Session.SPRING_SECURITY_CONTEXT.authentication-->
    isAdmin = user.isAdmin()
    name = user.getUsername()
    >
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    >
</#if>