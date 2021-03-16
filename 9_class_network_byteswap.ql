import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap(){
        exists(
            MacroInvocation mi |mi.getMacro().getName() in ["ntohl", "ntohs","ntohll"]
            and this = mi.getExpr()
        )
    }
}


from NetworkByteSwap n
select n, "Network byte swap" 