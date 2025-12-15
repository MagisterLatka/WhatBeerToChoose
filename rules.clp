(defrule wybranoYesPytanie
	?a0 <- (obecnePytanie ?p)
	(pytanie ?p ?r sep $?)
	(pytanie ?r $? sep $?)
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (obecnePytanie ?r))
)

(defrule wybranoNoPytanie
	?a0 <- (obecnePytanie ?p)
	(pytanie ?p $? sep ?r)
	(pytanie ?r $? sep $?)
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (obecnePytanie ?r))
)

(defrule wybranoYesOdpowiedz
	?a0 <- (obecnePytanie ?p)
	(pytanie ?p $?o sep $?)
	(not (pytanie $?o $? sep $?))
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wynik $?o))
)

(defrule wybranoNoOdpowiedz
	?a0 <- (obecnePytanie ?p)
	(pytanie ?p $? sep $?o)
	(not (pytanie $?o $? sep $?))
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wynik $?o))
)