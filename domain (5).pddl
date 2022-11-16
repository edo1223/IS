(define
    (domain coins)

(:types
  robot - object
  number room - object
  container - object
  key - object
  vendor - object
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

(:predicates ; 
  (adds ?x - number ?y - number ?z - number); chislo x plus chislo y =z
  (adjacent ?x - room ?y - room); mojnoproiti iz komnatu x v komantu y //to est est put
  (room_floor_coins ?x - room ?y - number); v komnate xnaxoditsa y monet na polu  
  (robot_coins ?r - robot ?x - number); u robota R est  x monet 
  (robot_at ?r - robot ?x - room);R robot naxoditsa v komnate x

  (vendor_is_at ?v - vendor ?x - room) ;prodavec naxoditsa v x komnate  
  (vendor_sells_key ?v - vendor ?k - key ?n - number);prodavec V  prodaet  kluch K za N monet
  (robot_has_key ?r - robot ?k - key);   robot R imeet kluch  k
  (key_unlocks_door ?k - key ?x - room ?y - room); kluchotkrivaet put mejdu dvumia komnatami x /y 
  (room_has_container ?x - room ?c - container);konteinernaxoditsa v komnate 
  (container_has_coins ?c - container ?n - number); moneti naxodiatsa v konteinere
)

; esli robot R v current room i current room riadom s next room torobotbudet v next room
(:action move
  :parameters (
    ?r - robot
    ?current_room - room
    ?next_room - room
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (adjacent ?current_room ?next_room)
  )
  :effect (and 
    (not (robot_at ?r ?current_room))
    (robot_at ?r ?next_room)
  )
)
 
 ; esli na polu est moneti tomi podbiraem kakoeto kolichestvo 
(:action pick_up_coins_from_floor 
  :parameters (
    ?r - robot
    ?current_room - room
    ?room_floor_coins_before - number
    ?room_floor_coins_after - number
    ?coins_picked_up - number
    ?robot_coins_before - number
    ?robot_coins_after - number
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (room_floor_coins ?current_room ?room_floor_coins_before)
    (robot_coins ?r ?robot_coins_before)
    (adds ?robot_coins_before ?coins_picked_up ?robot_coins_after)
    (adds ?room_floor_coins_after ?coins_picked_up ?room_floor_coins_before)
  )
  :effect (and 
    (not (room_floor_coins ?current_room ?room_floor_coins_before))
    (room_floor_coins ?current_room ?room_floor_coins_after)
    (not (robot_coins ?r ?robot_coins_before))
    (robot_coins ?r ?robot_coins_after)
  )
)

; deistvie kotoroe ukazivaet na tochto robotzabiraet moneti s konteinera
(:action withdraw_from_container
  :parameters (
    ?r - robot
    ?current_room - room
    ?container - container
    ?container_coins_before - number
    ?container_coins_after - number
    ?coins_withdrawn - number
    ?robot_coins_before - number
    ?robot_coins_after - number
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (room_has_container ?current_room ?container)
    (container_has_coins ?container ?container_coins_before)
    (robot_coins ?r ?robot_coins_before)
    (adds ?robot_coins_before ?coins_withdrawn ?robot_coins_after)
    (adds ?container_coins_after ?coins_withdrawn ?container_coins_before)
  )
  :effect (and 
    (not (container_has_coins ?container ?container_coins_before))
    (not (robot_coins?r  ?robot_coins_before))
    (container_has_coins ?container ?container_coins_after)
    (robot_coins ?r ?robot_coins_after)
  )
)
 
 ;zdes robot kladet moneti v konteiner 
(:action deposit_into_container
  :parameters (
    ?r - robot
    ?current_room - room
    ?container - container
    ?container_coins_before - number
    ?container_coins_after - number
    ?coins_withdrawn - number
    ?robot_coins_before - number
    ?robot_coins_after - number
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (room_has_container ?current_room ?container)
    (container_has_coins ?container ?container_coins_before)
    (robot_coins ?r ?robot_coins_before)
    (adds ?robot_coins_after ?coins_withdrawn ?robot_coins_before)
    (adds ?container_coins_before ?coins_withdrawn ?container_coins_after)
  )
  :effect (and 
    (not (container_has_coins ?container ?container_coins_before))
    (not (robot_coins ?r ?robot_coins_before))
    (container_has_coins ?container ?container_coins_after)
    (robot_coins ?r ?robot_coins_after)
  )
)

;kogda robot pokupaet kluch u prodavca 
(:action buy_key
  :parameters (
    ?r - robot
    ?current_room - room
    ?vendor - vendor
    ?key - key
    ?key_price - number
    ?robot_coins_before - number
    ?robot_coins_after - number
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (vendor_is_at ?vendor ?current_room)
    (vendor_sells_key ?vendor ?key ?key_price)
    (robot_coins ?r ?robot_coins_before)
    (adds ?robot_coins_after ?key_price ?robot_coins_before)
  )
  :effect (and 
    (not (robot_coins ?r ?robot_coins_before))
    (robot_coins ?r ?robot_coins_after)
    (robot_has_key ?r ?key)
  )
)

;etokogda robot otkrivaet dver kluchom
(:action unlock_door_from_left
  :parameters (
    ?r - robot
    ?current_room - room
    ?next_room - room
    ?key - key
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (key_unlocks_door ?key ?current_room ?next_room)
    (robot_has_key ?r ?key)
  )
  :effect (and 
    (adjacent ?current_room ?next_room)
    (adjacent ?next_room ?current_room)
  )
)

;
(:action unlock_door_from_right
  :parameters (
    ?r - robot
    ?current_room - room
    ?next_room - room
    ?key - key
  )
  :precondition (and 
    (robot_at ?r ?current_room)
    (key_unlocks_door ?key ?next_room ?current_room)
    (robot_has_key ?r ?key)
  )
  :effect (and 
    (adjacent ?current_room ?next_room)
    (adjacent ?next_room ?current_room)
  )
)


)
