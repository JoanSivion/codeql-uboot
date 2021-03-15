import cpp

from FunctionCall call, Expr sizeArg
    where call.getTarget().getName() = "memcpy" and
    sizeArg = call.getArgument(2) and
    not sizeArg.isConstant() 
select call, sizeArg