(define (domain math)

;remove requirements that are not needed
(:requirements :strips :typing :equality)

(:types
  number variable room - object
)

; un-comment following line if constants are needed
(:constants
  n0 - number
  n1 - number
  n2 - number
  n3 - number
  n4 - number
  n5 - number
  n6 - number
  n7 - number
  n8 - number
  n9 - number
  n10 - number
)

(:predicates ;todo: define predicates here
  (adds ?x - number ?y - number ?z - number)
  (adjacent ?x - room ?y - room)
  (room_coins ?x - room ?y - number)
  (robot_coins ?x - number)
  (robot_at ?x - room)
)

; define actions here
(:action move
  :parameters (
    ?current_room - room
    ?next_room - room
    ?robot_initial_coins - number
    ?room_coins - number
    ?robot_final_coins - number
  )
  :precondition (and 
    (robot_at ?current_room)
    (adjacent ?current_room ?next_room)
    (room_coins ?next_room ?room_coins)
    (robot_coins ?robot_initial_coins)
    (adds ?robot_initial_coins ?room_coins ?robot_final_coins)
  )
  :effect (and 
    (not (robot_at ?current_room))
    (robot_at ?next_room)
    (not (robot_coins ?robot_initial_coins))
    (robot_coins ?robot_final_coins)
  )
)

)