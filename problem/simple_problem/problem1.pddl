(define (problem amazon)

	(:domain automated-drone-delivery)

	(:objects drone1 - drone
			  package1 package2 package3 - package
			  customer1 customer2 customer3 - location
	)

	(:init
		(at-drone drone1 warehouse)
		(at-package package1 warehouse)
		(at-package package2 warehouse)
		(at-package package3 warehouse)
		(drone-empty drone1)
	)

	(:goal (and
		(at-package package1 customer1)
		(at-package package2 customer2)
		(at-package package3 customer3)
		(at-drone drone1 warehouse)
		)
	)
)