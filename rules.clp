(defrule scotland
	?a0 <- (pytanie start)
=>
	(retract ?a0)
	(assert (pytanie "Are you in Scotland?"))
)

(defrule scotlandEnd
	?a0 <- (pytanie "Are you in Scotland?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Brew Dog"))
)

(defrule doublewide
	?a0 <- (pytanie "Are you in Scotland?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Do you sleep in a double-wide?"))
)

(defrule doublewideEnd
	?a0 <- (pytanie "Do you sleep in a double-wide?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Country Club Malt Liquor"))
)

(defrule mckenzie
	?a0 <- (pytanie "Do you sleep in a double-wide?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you Bob or Doug McKenzie?"))
)

(defrule mckenzieEnd
	?a0 <- (pytanie "Are you Bob or Doug McKenzie?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Elsinore"))
)

(defrule projects
	?a0 <- (pytanie "Are you Bob or Doug McKenzie?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Do you live in the projects?"))
)

(defrule projectsEnd
	?a0 <- (pytanie "Do you live in the projects?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Colt 45" "Steel Reserve"))
)

(defrule hockey
	?a0 <- (pytanie "Do you live in the projects?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you a hockey fan eh?"))
)

(defrule hockeyEnd
	?a0 <- (pytanie "Are you a hockey fan eh?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Molson" "Labalt Blue"))
)

(defrule stargate
	?a0 <- (pytanie "Are you a hockey fan eh?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Do you know how to access the Stargate?"))
)

(defrule stargateEnd
	?a0 <- (pytanie "Do you know how to access the Stargate?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Rheingold Beer" "Esslinger's Beer"))
)

(defrule hipster
	?a0 <- (pytanie "Do you know how to access the Stargate?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you doing that \"ironic\" hipster thing?"))
)

(defrule hipsterEnd
	?a0 <- (pytanie "Are you doing that \"ironic\" hipster thing?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Pabst Blue Ribbon Beer"))
)

(defrule driver
	?a0 <- (pytanie "Are you doing that \"ironic\" hipster thing?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you the designated driver?"))
)

(defrule driverEnd
	?a0 <- (pytanie "Are you the designated driver?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "O'Doul's"))
)

(defrule tailgateorfrat
	?a0 <- (pytanie "Are you the designated driver?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you at a tailgate or frat party?"))
)

(defrule wife
	?a0 <- (pytanie "Are you at a tailgate or frat party?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Is your wife nagging you about the beer gut?"))
)

(defrule wifeEndYes
	?a0 <- (pytanie "Is your wife nagging you about the beer gut?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Amstel Light" "Miller Lite" "Coors Light" "Bud Light"))
)

(defrule wifeEndNo
	?a0 <- (pytanie "Is your wife nagging you about the beer gut?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Amstel Beer" "Miller High Life" "Coors" "Budweiser"))
)

(defrule guiness
	?a0 <- (pytanie "Are you at a tailgate or frat party?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Is Guinness on tap?"))
)

(defrule guinessEnd
	?a0 <- (pytanie "Is Guinness on tap?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Guinness"))
)

(defrule summer
	?a0 <- (pytanie "Is Guinness on tap?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Is it summer?"))
)

(defrule change
	?a0 <- (pytanie "Is it summer?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you paying in change?"))
)

(defrule changeEndYes
	?a0 <- (pytanie "Are you paying in change?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Tequiza" "Model especial"))
)

(defrule changeEndNo
	?a0 <- (pytanie "Are you paying in change?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Corona Extra"))
)

(defrule french
	?a0 <- (pytanie "Is it summer?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Can you speak fluent French, in Russian?"))
)

(defrule frenchEnd
	?a0 <- (pytanie "Can you speak fluent French, in Russian?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Cerveza XX Dos Equis"))
)

(defrule dinner
	?a0 <- (pytanie "Can you speak fluent French, in Russian?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you having a dinner party?"))
)

(defrule dinnerEnd
	?a0 <- (pytanie "Are you having a dinner party?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Blue Moon" "Samuel Adams" "New Belgium" "Gordon Biersch"))
)

(defrule college
	?a0 <- (pytanie "Are you having a dinner party?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Did you just graduate college?"))
)

(defrule parents
	?a0 <- (pytanie "Did you just graduate college?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "... but did you move back in with your parents?"))
)

(defrule parrothhead
	?a0 <- (pytanie "Did you just graduate college?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you a Parrothead?"))
)

(defrule parrotheadEnd
	?a0 <- (pytanie "Are you a Parrothead?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Landshark"))
)

(defrule wordly
	?a0 <- (pytanie "Are you a Parrothead?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you trying to seem \"worldly\"?"))
)

(defrule wordlyEnd
	?a0 <- (pytanie "Are you trying to seem \"worldly\"?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Landshark"))
)

(defrule grocery
	?a0 <- (pytanie "Are you trying to seem \"worldly\"?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Did you bring in a reusable grocery bag?"))
)

(defrule groceryEnd
	?a0 <- (pytanie "Did you bring in a reusable grocery bag?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Landshark"))
)

(defrule drunk
	?a0 <- (pytanie "Did you bring in a reusable grocery bag?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Are you drunk?"))
)

(defrule drunkEnd
	?a0 <- (pytanie "Are you drunk?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Cerveza Tecate" "Moosehead Lager"))
)

(defrule lovebeer
	?a0 <- (pytanie "Are you drunk?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "Do you truly love beer?"))
)

(defrule lovebeerEnd
	?a0 <- (pytanie "Do you truly love beer?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Michelob Ultra" "Bass"))
)

(defrule alot
	?a0 <- (pytanie "Do you truly love beer?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (pytanie "...$500 love?"))
)

(defrule alotEndYes
	?a0 <- (pytanie "...$500 love?")
	?a1 <- (odpowiedz "Yes")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Some pipe"))
)

(defrule alotEndNo
	?a0 <- (pytanie "...$500 love?")
	?a1 <- (odpowiedz "No")
=>
	(retract ?a0)
	(retract ?a1)
	(assert (wyswietl "Alaskan Amber" "Ale Asylum" "Cantillon" "Stone Brewing" "Full Sail" "Dogfish Head" "Double Diamond" "Hair Dog" "Clipper City"))
)