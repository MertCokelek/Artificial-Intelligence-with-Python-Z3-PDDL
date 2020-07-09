(define (problem wumpus-problem-1)
  (:domain wumpus-domain)
  (:objects 
  sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-1-5 sq-1-6 sq-1-7 
  sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-2-5 sq-2-6 sq-2-7 
  sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-3-5 sq-3-6 sq-3-7 
  sq-4-1 sq-4-2 sq-4-3 sq-4-4 sq-4-5 sq-4-6 sq-4-7 
  sq-5-1 sq-5-2 sq-5-3 sq-5-4 sq-5-5 sq-5-6 sq-5-7 
  sq-6-1 sq-6-2 sq-6-3 sq-6-4 sq-6-5 sq-6-6 sq-6-7 
  sq-7-1 sq-7-2 sq-7-3 sq-7-4 sq-7-5 sq-7-6 sq-7-7 

	    the-gold 
	    the-arrow
	    wumpus
	    wumpus2
	    wumpus3
	    agent 
	    wumpus4)
  (:init 
  
    ;;1. satır
    (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1)
	(adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2)
	(adj sq-1-3 sq-1-4) (adj sq-1-4 sq-1-3)
	(adj sq-1-4 sq-1-5) (adj sq-1-5 sq-1-4)
	(adj sq-1-5 sq-1-6) (adj sq-1-6 sq-1-5)
	(adj sq-1-6 sq-1-7) (adj sq-1-7 sq-1-6)
	
	    ;;1. sütun

    (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
    (adj sq-2-1 sq-3-1) (adj sq-3-1 sq-2-1)
    (adj sq-3-1 sq-4-1) (adj sq-4-1 sq-3-1)
    (adj sq-4-1 sq-5-1) (adj sq-5-1 sq-4-1)
    (adj sq-5-1 sq-6-1) (adj sq-6-1 sq-5-1)
    (adj sq-6-1 sq-7-1) (adj sq-7-1 sq-6-1)

    ;;2 satır

    (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
	(adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
	(adj sq-2-3 sq-2-4) (adj sq-2-4 sq-2-3)
	(adj sq-2-4 sq-2-5) (adj sq-2-5 sq-2-4)
	(adj sq-2-5 sq-2-6) (adj sq-2-6 sq-2-5)
	(adj sq-2-6 sq-2-7) (adj sq-2-7 sq-2-6)
	
	    ;;2. sütun

	(adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2)
    (adj sq-2-2 sq-3-2) (adj sq-3-2 sq-2-2)
    (adj sq-3-2 sq-4-2) (adj sq-4-2 sq-3-2)
    (adj sq-4-2 sq-5-2) (adj sq-5-2 sq-4-2)
    (adj sq-5-2 sq-6-2) (adj sq-6-2 sq-5-2)
    (adj sq-6-2 sq-7-2) (adj sq-7-2 sq-6-2)
    
    ;;3 row
    (adj sq-3-1 sq-3-2) (adj sq-3-2 sq-3-1)
	(adj sq-3-2 sq-3-3) (adj sq-3-3 sq-3-2)
	(adj sq-3-3 sq-3-4) (adj sq-3-4 sq-3-3)
	(adj sq-3-4 sq-3-5) (adj sq-3-5 sq-3-4)
	(adj sq-3-5 sq-3-6) (adj sq-3-6 sq-3-5)
	(adj sq-3-6 sq-3-7) (adj sq-3-7 sq-3-6)
	
	;;3 col
	(adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
    (adj sq-2-3 sq-3-3) (adj sq-3-3 sq-2-3)
    (adj sq-3-3 sq-4-3) (adj sq-4-3 sq-3-3)
    (adj sq-4-3 sq-5-3) (adj sq-5-3 sq-4-3)
    (adj sq-5-3 sq-6-3) (adj sq-6-3 sq-5-3)
    (adj sq-6-3 sq-7-3) (adj sq-7-3 sq-6-3)

    (adj sq-4-1 sq-4-2) (adj sq-4-2 sq-4-1)
	(adj sq-4-2 sq-4-3) (adj sq-4-3 sq-4-2)
	(adj sq-4-3 sq-4-4) (adj sq-4-4 sq-4-3)
	(adj sq-4-4 sq-4-5) (adj sq-4-5 sq-4-4)
	(adj sq-4-5 sq-4-6) (adj sq-4-6 sq-4-5)
	(adj sq-4-6 sq-4-7) (adj sq-4-7 sq-4-6)

	(adj sq-1-4 sq-2-4) (adj sq-2-4 sq-1-4)
    (adj sq-2-4 sq-3-4) (adj sq-3-4 sq-2-4)
    (adj sq-3-4 sq-4-4) (adj sq-4-4 sq-3-4)
    (adj sq-4-4 sq-5-4) (adj sq-5-4 sq-4-4)
    (adj sq-5-4 sq-6-4) (adj sq-6-4 sq-5-4)
    (adj sq-6-4 sq-7-4) (adj sq-7-4 sq-6-4)
    
    (adj sq-5-1 sq-5-2) (adj sq-5-2 sq-5-1)
	(adj sq-5-2 sq-5-3) (adj sq-5-3 sq-5-2)
	(adj sq-5-3 sq-5-4) (adj sq-5-4 sq-5-3)
	(adj sq-5-4 sq-5-5) (adj sq-5-5 sq-5-4)
	(adj sq-5-5 sq-5-6) (adj sq-5-6 sq-5-5)
	(adj sq-5-6 sq-5-7) (adj sq-5-7 sq-5-6)

	(adj sq-1-5 sq-2-5) (adj sq-2-5 sq-1-5)
    (adj sq-2-5 sq-3-5) (adj sq-3-5 sq-2-5)
    (adj sq-3-5 sq-4-5) (adj sq-4-5 sq-3-5)
    (adj sq-4-5 sq-5-5) (adj sq-5-5 sq-4-5)
    (adj sq-5-5 sq-6-5) (adj sq-6-5 sq-5-5)
    (adj sq-6-5 sq-7-5) (adj sq-7-5 sq-6-5)
    
	(adj sq-1-6 sq-2-6) (adj sq-2-6 sq-1-6)
    (adj sq-2-6 sq-3-6) (adj sq-3-6 sq-2-6)
    (adj sq-3-6 sq-4-6) (adj sq-4-6 sq-3-6)
    (adj sq-4-6 sq-5-6) (adj sq-5-6 sq-4-6)
    (adj sq-5-6 sq-6-6) (adj sq-6-6 sq-5-6)
    (adj sq-6-6 sq-7-6) (adj sq-7-6 sq-6-6)
    
    (adj sq-6-1 sq-6-2) (adj sq-6-2 sq-6-1)
    (adj sq-6-2 sq-6-3) (adj sq-6-3 sq-6-2)
    (adj sq-6-3 sq-6-4) (adj sq-6-4 sq-6-3)
    (adj sq-6-4 sq-6-5) (adj sq-6-5 sq-6-4)
    (adj sq-6-5 sq-6-6) (adj sq-6-6 sq-6-5)
    (adj sq-6-6 sq-6-7) (adj sq-6-7 sq-6-6)

	(adj sq-1-7 sq-2-7) (adj sq-2-7 sq-1-7)
    (adj sq-2-7 sq-3-7) (adj sq-3-7 sq-2-7)
    (adj sq-3-7 sq-4-7) (adj sq-4-7 sq-3-7)
    (adj sq-4-7 sq-5-7) (adj sq-5-7 sq-4-7)
    (adj sq-5-7 sq-6-7) (adj sq-6-7 sq-5-7)
    (adj sq-6-7 sq-7-7) (adj sq-7-7 sq-6-7)
    
    (adj sq-7-1 sq-7-2) (adj sq-7-2 sq-7-1)
    (adj sq-7-2 sq-7-3) (adj sq-7-3 sq-7-2)
    (adj sq-7-3 sq-7-4) (adj sq-7-4 sq-7-3)
    (adj sq-7-4 sq-7-5) (adj sq-7-5 sq-7-4)
    (adj sq-7-5 sq-7-6) (adj sq-7-6 sq-7-5)
    (adj sq-7-6 sq-7-7) (adj sq-7-7 sq-7-6)
    
	 (pit sq-1-2)
	 (pit sq-2-2)
	 (pit sq-4-2)
	 (pit sq-4-4)
	 (pit sq-3-4)
	 (pit sq-2-4)
	 (pit sq-1-4)
	 
	 (is-gold the-gold)
	 (at the-gold sq-7-7)
	 
	 (is-agent agent)
	 (at agent sq-1-1)
	 
	 (is-arrow the-arrow)
	 (have agent the-arrow)
	 
	 (is-wumpus wumpus)
	 (is-wumpus wumpus2)
	 (is-wumpus wumpus3)
	 (is-wumpus wumpus4)
	 
	 (at wumpus sq-2-3)
	 (at wumpus2 sq-4-3)
	 (at wumpus3 sq-3-2)
	 (at wumpus4 sq-2-5)
	 
	 (wumpus-in sq-2-3)
	 (wumpus-in sq-4-3)
	 (wumpus-in sq-3-2)
	 (wumpus-in sq-2-5)
	 )
	 
  (:goal (and (have agent the-gold) (at agent sq-1-1)))
  )
