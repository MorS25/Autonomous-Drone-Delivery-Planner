(define (problem amazon)

	(:domain automated-drone-delivery)

	(:objects drone1 drone2 - drone
	
			  package1 package2 package3 package4 package5 package6  - package
			  
			  warehouse1 customer1 customer2 customer3 customer4 - location)

	(:init
		(at-drone drone1 warehouse1)
		(at-drone drone2 warehouse1)
		
		(at-package package1 warehouse1)
		(at-package package2 warehouse1)
		(at-package package3 warehouse1)
		(at-package package4 warehouse1)
		(at-package package5 warehouse1)
		(at-package package6 warehouse1)
		
		(drone-empty drone1)
		(drone-empty drone2)
		
		(is-warehouse warehouse1)
		(= (capacity) 100)
		(= (charge drone1) 100)
		(= (charge drone2) 100)
		
		(= (weight package1) 50)
		(= (weight package2) 50)
		(= (weight package3) 50)
		(= (weight package4) 50)
		(= (weight package5) 70)
		(= (weight package6) 70)
		
		(= (move-time warehouse1 customer1) 2)
		(= (move-time warehouse1 customer2) 3)
		(= (move-time warehouse1 customer3) 4)
		(= (move-time warehouse1 customer4) 5)

		(= (move-time customer1 warehouse1) 2)
		(= (move-time customer2 warehouse1) 3)
		(= (move-time customer3 warehouse1) 4)
		(= (move-time customer4 warehouse1) 5)

		(= (load-time) 1))

	(:goal (and
		(at-drone drone1 warehouse1)
		(at-drone drone2 warehouse1)
		
		(at-package package1 customer1)
		(at-package package2 customer1)
		(at-package package3 customer2)
		(at-package package4 customer2)
		(at-package package5 customer2)
		(at-package package6 customer2)
	))
)