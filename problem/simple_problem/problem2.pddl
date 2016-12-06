(define (problem amazon)

	(:domain automated-drone-delivery)

	(:objects drone1 drone2 - drone
			  package1 package2 - package
			  warehouse customer1 customer2 - location
	)

	(:init
		(at-drone drone1 warehouse)
		(at-drone drone2 warehouse)
		(at-package package1 warehouse)
		(at-package package2 warehouse)
		(drone-empty drone1)
		(drone-empty drone2)
		(is-warehouse warehouse)
		(= (move-time warehouse customer1) 5)
		(= (move-time customer1 warehouse) 5)
		(= (move-time warehouse customer2) 10)
		(= (move-time customer2 warehouse) 10)
		(= (move-time customer1 customer2) 15)
		(= (move-time customer2 customer1) 15)
		(= (load-time package1) 2)
		(= (load-time package2) 3)
	)

	(:goal (and
		(at-package package1 customer1)
		(at-package package2 customer2)
		(at-drone drone1 warehouse)
		(at-drone drone2 warehouse)
		)
	)
)