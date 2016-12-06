(define (problem amazon)

	(:domain automated-drone-delivery)

	(:objects drone1 drone2 drone3 drone4 drone5 drone6 drone7 - drone
	
			  package1 package2 package3 package4 package5 package6 package7 package8 package9 package10 
			  package11 package12 package13 package14 package15 package16 package17 package18 package19 package20 
			  package21 - package
			  
			  warehouse1 warehouse2 customer1 customer2 customer3 customer4 customer5 customer6 customer7 customer8 customer9 customer10 
			  customer11 customer12 customer13 customer14 - location)

	(:init
		(at-drone drone1 warehouse1)
		(at-drone drone2 warehouse1)
		(at-drone drone3 warehouse1)
		(at-drone drone4 warehouse1)
		(at-drone drone5 warehouse1)
		(at-drone drone6 warehouse2)
		(at-drone drone7 warehouse2)
		
		(at-package package1 warehouse1)
		(at-package package2 warehouse1)
		(at-package package3 warehouse1)
		(at-package package4 warehouse1)
		(at-package package5 warehouse1)
		(at-package package6 warehouse1)
		(at-package package7 warehouse1)
		(at-package package8 warehouse1)
		(at-package package9 warehouse1)
		(at-package package10 warehouse1)
		(at-package package11 warehouse1)
		(at-package package12 warehouse1)
		(at-package package13 warehouse1)
		(at-package package14 warehouse1)
		(at-package package15 warehouse1)
		(at-package package16 warehouse2)
		(at-package package17 warehouse2)
		(at-package package18 warehouse2)
		(at-package package19 warehouse2)
		(at-package package20 warehouse2)
		(at-package package21 warehouse2)
		
		(drone-empty drone1)
		(drone-empty drone2)
		(drone-empty drone3)
		(drone-empty drone4)
		(drone-empty drone5)
		(drone-empty drone6)
		(drone-empty drone7)
		
		(is-warehouse warehouse1)
		(is-warehouse warehouse2)
		(= (capacity) 100)
		(= (charge drone1) 100)
		(= (charge drone2) 100)
		(= (charge drone3) 100)
		(= (charge drone4) 100)
		(= (charge drone5) 100)
		(= (charge drone6) 100)
		(= (charge drone7) 100)
		
		(= (weight package1) 50)
		(= (weight package2) 50)
		(= (weight package3) 50)
		(= (weight package4) 50)
		(= (weight package5) 70)
		(= (weight package6) 70)
		(= (weight package7) 80)
		(= (weight package8) 50)
		(= (weight package9) 50)
		(= (weight package10) 50)
		(= (weight package11) 50)
		(= (weight package12) 70)
		(= (weight package13) 70)
		(= (weight package14) 80)
		(= (weight package15) 50)
		(= (weight package16) 50)
		(= (weight package17) 50)
		(= (weight package18) 50)
		(= (weight package19) 70)
		(= (weight package20) 70)
		(= (weight package21) 80)
		(= (weight package22) 50)
		
		(= (move-time warehouse1 warehouse2) 22)
		
		(= (move-time warehouse1 customer1) 2)
		(= (move-time warehouse1 customer2) 3)
		(= (move-time warehouse1 customer3) 4)
		(= (move-time warehouse1 customer4) 5)
		(= (move-time warehouse1 customer5) 6)
		(= (move-time warehouse1 customer6) 7)
		(= (move-time warehouse1 customer7) 8)
		(= (move-time warehouse1 customer8) 9)
		(= (move-time warehouse1 customer9) 10)
		(= (move-time warehouse1 customer10) 11)
		(= (move-time warehouse1 customer11) 12)
		(= (move-time warehouse1 customer12) 13)
		(= (move-time warehouse1 customer13) 14)
		(= (move-time warehouse1 customer14) 15)
		
		(= (move-time customer1 warehouse1) 2)
		(= (move-time customer2 warehouse1) 3)
		(= (move-time customer3 warehouse1) 4)
		(= (move-time customer4 warehouse1) 5)
		(= (move-time customer5 warehouse1) 6)
		(= (move-time customer6 warehouse1) 7)
		(= (move-time customer7 warehouse1) 8)
		(= (move-time customer8 warehouse1) 9)
		(= (move-time customer9 warehouse1) 10)
		(= (move-time customer10 warehouse1) 11)
		(= (move-time customer11 warehouse1) 12)
		(= (move-time customer12 warehouse1) 13)
		(= (move-time customer13 warehouse1) 14)
		(= (move-time customer14 warehouse1) 15)
		
		(= (move-time warehouse2 customer1) 21)
		(= (move-time warehouse2 customer2) 20)
		(= (move-time warehouse2 customer3) 19)
		(= (move-time warehouse2 customer4) 18)
		(= (move-time warehouse2 customer5) 17)
		(= (move-time warehouse2 customer6) 16)
		(= (move-time warehouse2 customer7) 15)
		(= (move-time warehouse2 customer8) 14)
		(= (move-time warehouse2 customer9) 13)
		(= (move-time warehouse2 customer10) 12)
		(= (move-time warehouse2 customer11) 11)
		(= (move-time warehouse2 customer12) 10)
		(= (move-time warehouse2 customer13) 9)
		(= (move-time warehouse2 customer14) 8)

		(= (move-time customer1 warehouse2) 21)
		(= (move-time customer2 warehouse2) 20)
		(= (move-time customer3 warehouse2) 19)
		(= (move-time customer4 warehouse2) 18)
		(= (move-time customer5 warehouse2) 17)
		(= (move-time customer6 warehouse2) 16)
		(= (move-time customer7 warehouse2) 15)
		(= (move-time customer8 warehouse2) 14)
		(= (move-time customer9 warehouse2) 13)
		(= (move-time customer10 warehouse2) 12)
		(= (move-time customer11 warehouse2) 11)
		(= (move-time customer12 warehouse2) 10)
		(= (move-time customer13 warehouse2) 9)
		(= (move-time customer14 warehouse2) 8)
		
		(= (load-time) 1))

	(:goal (and
		(at-drone drone1 warehouse1)
		(at-drone drone2 warehouse1)
		(at-drone drone3 warehouse1)
		(at-drone drone4 warehouse1)
		(at-drone drone5 warehouse1)
		(at-drone drone6 warehouse1)
		(at-drone drone7 warehouse1)
		
		(at-package package1 customer1)
		(at-package package2 customer1)
		(at-package package3 customer2)
		(at-package package4 customer2)
		(at-package package5 customer2)
		(at-package package6 customer2)
		(at-package package7 customer3)
		(at-package package8 customer4)
		(at-package package9 customer4)
		(at-package package10 customer5)
		(at-package package11 customer6)
		(at-package package12 customer7)
		(at-package package13 customer8)
		(at-package package14 customer9)
		(at-package package15 customer9)
		(at-package package16 customer10)
		(at-package package17 customer10)
		(at-package package18 customer11)
		(at-package package19 customer12)
		(at-package package20 customer13)
		(at-package package21 customer14)
	))
)