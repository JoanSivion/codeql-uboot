import cpp

from MacroInvocation call
where call.getMacro().getName() in ["ntohl", "ntohs","ntohll"]
select call.getExpr()