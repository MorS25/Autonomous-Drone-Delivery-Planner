# Autonomous Drone Delivery Planner
This is a planner that will find a solution for delivering packages to the correct customer.
The planner works by defining a `Domain` that describes all the object types and their functionality and a `Problem` file that defines the state that you want the planner to solve.

## Domain
The domain the closed world that it will consider within.

* **Requirements**

	Depending on the problem to be solved, features provided in in the PDDL library can be included.

	Requirements in this planner are `Typing`, `fluents`, `durative-actions`.

* **Predicates**

	Used to check if an action is able to perform or to determine if the planner has reached the goal state.

	Predicates in this planner are `drone-empty`, `holding`, `at-drone`, `at-package`, `is-warehouse`.

* **Functions**

	Values or variables defined in the problem file and used while finding a solution.

	Functions in this planner are `load-time`, `move-time`, `weight`, `capacity`, `charge`.

* **Actions**

	Determines what the planner is available to do at a particular state.
	These can be defined as durative actions that require time to complete.

	Actions in this planner are `LOAD`, `UNLOAD`, `DELIVER`, `RETURN`, `RECHARGE`.

The objects that appear in this planner are `Drone`, `Warehouse` and `Customer`.

## Problem
The problem file defines the predicates and objects in that specific world.

* **Domain**

	Define which domain this problem is going to use.

* **Objects**

	All the objects that exists in the world.

* **Init**

	Defines all the predicates and the state of each object that appears in the closed world.

* **Goal**

	Defines when the planner has reached a goal state.

## How to run the planner
To run from Windows

	optic-clp.exe -N DOMAIN_FILE PROBLEM_FILE

To run from Mac

	java javaff.JavaFF DOMAIN_FILE PROBLEM_FILE

Note: `durative-action` is not available in javaFF

## Find more

This planner uses the Planning Domian Definition Language (PDDL).

https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language
