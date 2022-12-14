(define (problem coins1)
(:domain coins)
(:objects
  r1 - room ; komanti 
  r2 - room
  r3 - room
  r4 - room
  r5 - room
  c1 - container
  c2 - container
  c3 - container
  c4 - container
  c5 - container
  robbie - robot
  k_null - key
  v_null - vendor
)


(:init
;pravilo slojenie chisel
(adds n0 n0 n0)
(adds n0 n1 n1)
(adds n0 n2 n2)
(adds n0 n3 n3)
(adds n0 n4 n4)
(adds n0 n5 n5)
(adds n0 n6 n6)
(adds n0 n7 n7)
(adds n0 n8 n8)
(adds n0 n9 n9)
(adds n0 n10 n10)
(adds n1 n0 n1)
(adds n1 n1 n2)
(adds n1 n2 n3)
(adds n1 n3 n4)
(adds n1 n4 n5)
(adds n1 n5 n6)
(adds n1 n6 n7)
(adds n1 n7 n8)
(adds n1 n8 n9)
(adds n1 n9 n10)
(adds n1 n10 n10)
(adds n2 n0 n2)
(adds n2 n1 n3)
(adds n2 n2 n4)
(adds n2 n3 n5)
(adds n2 n4 n6)
(adds n2 n5 n7)
(adds n2 n6 n8)
(adds n2 n7 n9)
(adds n2 n8 n10)
(adds n2 n9 n10)
(adds n2 n10 n10)
(adds n3 n0 n3)
(adds n3 n1 n4)
(adds n3 n2 n5)
(adds n3 n3 n6)
(adds n3 n4 n7)
(adds n3 n5 n8)
(adds n3 n6 n9)
(adds n3 n7 n10)
(adds n3 n8 n10)
(adds n3 n9 n10)
(adds n3 n10 n10)
(adds n4 n0 n4)
(adds n4 n1 n5)
(adds n4 n2 n6)
(adds n4 n3 n7)
(adds n4 n4 n8)
(adds n4 n5 n9)
(adds n4 n6 n10)
(adds n4 n7 n10)
(adds n4 n8 n10)
(adds n4 n9 n10)
(adds n4 n10 n10)
(adds n5 n0 n5)
(adds n5 n1 n6)
(adds n5 n2 n7)
(adds n5 n3 n8)
(adds n5 n4 n9)
(adds n5 n5 n10)
(adds n5 n6 n10)
(adds n5 n7 n10)
(adds n5 n8 n10)
(adds n5 n9 n10)
(adds n5 n10 n10)
(adds n6 n0 n6)
(adds n6 n1 n7)
(adds n6 n2 n8)
(adds n6 n3 n9)
(adds n6 n4 n10)
(adds n6 n5 n10)
(adds n6 n6 n10)
(adds n6 n7 n10)
(adds n6 n8 n10)
(adds n6 n9 n10)
(adds n6 n10 n10)
(adds n7 n0 n7)
(adds n7 n1 n8)
(adds n7 n2 n9)
(adds n7 n3 n10)
(adds n7 n4 n10)
(adds n7 n5 n10)
(adds n7 n6 n10)
(adds n7 n7 n10)
(adds n7 n8 n10)
(adds n7 n9 n10)
(adds n7 n10 n10)
(adds n8 n0 n8)
(adds n8 n1 n9)
(adds n8 n2 n10)
(adds n8 n3 n10)
(adds n8 n4 n10)
(adds n8 n5 n10)
(adds n8 n6 n10)
(adds n8 n7 n10)
(adds n8 n8 n10)
(adds n8 n9 n10)
(adds n8 n10 n10)
(adds n9 n0 n9)
(adds n9 n1 n10)
(adds n9 n2 n10)
(adds n9 n3 n10)
(adds n9 n4 n10)
(adds n9 n5 n10)
(adds n9 n6 n10)
(adds n9 n7 n10)
(adds n9 n8 n10)
(adds n9 n9 n10)
(adds n9 n10 n10)
(adds n10 n0 n10)
(adds n10 n1 n10)
(adds n10 n2 n10)
(adds n10 n3 n10)
(adds n10 n4 n10)
(adds n10 n5 n10)
(adds n10 n6 n10)
(adds n10 n7 n10)
(adds n10 n8 n10)
(adds n10 n9 n10)
(adds n10 n10 n10)

(adjacent r1 r2) (adjacent r2 r1)
(adjacent r2 r3) (adjacent r3 r2)
(adjacent r3 r4) (adjacent r4 r3)
(adjacent r4 r5) (adjacent r5 r4)

;govorit o tom gde naxodiatsa konteineri
(room_has_container r1 c1)
(room_has_container r2 c2)
(room_has_container r3 c3)
(room_has_container r4 c4)
(room_has_container r5 c5)

;skolko monet vkajdoi komnate na polu
(room_floor_coins r1 n3)
(room_floor_coins r2 n1)
(room_floor_coins r3 n0)
(room_floor_coins r4 n4)
(room_floor_coins r5 n2)
 
 ;konteineri s monetami
(container_has_coins c1 n0)
(container_has_coins c2 n0)
(container_has_coins c3 n1)
(container_has_coins c4 n0)
(container_has_coins c5 n0)

(robot_coins robbie n0); s nachalo 0 monet
(robot_at robbie r1)

)

(:goal (and
  (container_has_coins c1 n2) ; v kajdom konteinere po 2 moneti
  (container_has_coins c2 n2)
  (container_has_coins c3 n2)
  (container_has_coins c4 n2)
  (container_has_coins c5 n2)

))
)
