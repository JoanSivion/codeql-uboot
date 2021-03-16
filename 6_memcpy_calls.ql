import cpp

from FunctionCall call, Expr sizeArg, Type t
    where call.getTarget().getName() = "memcpy" and
    sizeArg = call.getArgument(2) and
    not sizeArg.isConstant() and
    sizeArg.getUnspecifiedType().(IntegralType).isSigned() and
    t = sizeArg.getType()
select call, sizeArg, t