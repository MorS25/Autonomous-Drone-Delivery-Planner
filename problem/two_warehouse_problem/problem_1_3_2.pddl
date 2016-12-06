(define (problem amazon)

	(:domain automated-drone-delivery)

	(:objects drone1 - drone
	
			  package1 package2 package3 - package
			  
			  warehouse1 warehouse2 customer1 customer2 - location)

	(:init
		(at-drone drone1 warehouse1)
		
		(at-package package1 warehouse1)
		(at-package package2 warehouse1)
		(at-package package3 warehouse2)
		
		(drone-empty drone1)
		
		(is-warehouse warehouse1)
		(is-warehouse warehouse2)
		(= (capacity) 100)
		(= (charge drone1) 100)
		
		(= (weight package1) 50)
		(= (weight package2) 50)
		(= (weight package3) 50)
		
		(= (move-time warehouse1 warehouse2) 22)
		
		(= (move-time warehouse1 customer1) 2)
		(= (move-time warehouse1 customer2) 3)
		
		(= (move-time customer1 warehouse1) 2)
		(= (move-time customer2 warehouse1) 3)
		
		(= (move-time warehouse2 customer1) 21)
		(= (move-time warehouse2 customer2) 20)
		
		(= (move-time customer1 warehouse2) 21)
		(= (move-time customer2 warehouse2) 20)

		(= (load-time) 1))

	(:goal (and
		(at-drone drone1 warehouse1)
		
		(at-package package1 customer1)
		(at-package package2 customer1)
		(at-package package3 customer2)
	))
)