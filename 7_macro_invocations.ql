import cpp

from MacroAccess call
where call.getParentInvocation().getMacroName() in["ntohl", "ntohs","ntohll"]
select call