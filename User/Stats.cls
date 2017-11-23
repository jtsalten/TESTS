Class User.Stats Extends %RegisteredObject
{
ClassMethod DistribucionY(pValores as %Integer=2, pLenSerie as %Integer=10, pIter as %Integer=10) {
	
	k valor
	for tCnt = 1:1:pIter {
		s y = 0, m=0
		for i = 1:1:pLenSerie {
			set y = y + $r(pValores)+1
		}
		set m=$FN((y/pLenSerie),,2)
		w !,"Valor m: "_m_" -- Num. Apariciones: "_$Increment(valor(m))
	}
	w !,"REPRESENTACION GRAFICA (invertida)",!
	set m= $order(valor(""))
	set divisor = valor(m) // tomamos el valor más pequeño como unidad
	while m'="" {
		for i=1:1:(valor(m)/divisor) {
		  write "="
		}
		w " "_m_" ("_valor(m)_" - "_(valor(m)/pIter)_"% )",!
		set m = $order(valor(m))	
	}
	quit
	
}
}