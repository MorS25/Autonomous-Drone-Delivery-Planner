(define (domain automated-drone-delivery)
	
	(:requirements :typing)

	(:types drone package location)

	(:constants warehouse - location)

	(:predicates
		(drone-empty ?d - drone)
		(holding ?d - drone ?p - package)
		(at-drone ?d - drone ?l - location)
		(at-package ?p - package ?l - location)
	)

	(:action LOAD
		:parameters (?d - drone ?p - package ?l - location)
		:precondition (and (at-drone ?d ?l)
						(drone-empty ?d)
						(at-package ?p ?l))
		:effect (and (holding ?d ?p)
					 (not (drone-empty ?d))
					 (not (at-package ?p ?l)))
	)

	(:action UNLOAD
		:parameters (?d - drone ?p - package ?l - location)
		:precondition (and (at-drone ?d ?l)
						(holding ?d ?p))
		:effect (and (not (holding ?d ?p))
					 (drone-empty ?d)
					 (at-package ?p ?l))
	)

	(:action MOVE
		:parameters (?d - drone ?from ?to - location)
		:precondition (at-drone ?d ?from)
		:effect (and (at-drone ?d ?to)
					 (not (at-drone ?d ?from)))
	)
)