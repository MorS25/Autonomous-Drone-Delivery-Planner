(define (domain automated-drone-delivery)
	
	(:requirements :typing :durative-actions)

	(:types drone package location)

	(:predicates
		(drone-empty ?d - drone)
		(holding ?d - drone ?p - package)
		(at-drone ?d - drone ?l - location)
		(at-package ?p - package ?l - location)
		(is-warehouse ?l - location)
	)
	
	(:functions
	    (load-time)
	    (move-time ?from ?to - location))

	(:durative-action LOAD
		:parameters (?d - drone ?p - package ?l - location)
		:duration (= ?duration(load-time))
		:condition (and (over all (at-drone ?d ?l))
						(at start(drone-empty ?d))
						(at start(at-package ?p ?l)))
		:effect (and (at start(holding ?d ?p))
					 (at start(not (drone-empty ?d)))
					 (at end(not (at-package ?p ?l))))
	)

	(:durative-action UNLOAD
		:parameters (?d - drone ?p - package ?l - location)
		:duration (= ?duration(load-time))
		:condition (and (over all(at-drone ?d ?l))
						(at start(holding ?d ?p)))
		:effect (and (at start(not (holding ?d ?p)))
					 (at end(drone-empty ?d))
					 (at end(at-package ?p ?l)))
	)

	(:durative-action MOVE
		:parameters (?d - drone ?from ?to - location)
		:duration (= ?duration(move-time ?from ?to))
		:condition (at start(at-drone ?d ?from))
		:effect (and (at end(at-drone ?d ?to))
					 (at start(not (at-drone ?d ?from))))
	)
)