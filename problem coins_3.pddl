(define (problem coins1)
(:domain coins)
(:objects
  ree - room
  re - room
  rc - room
  rw - room
  rww - room

  cc - container
  robbie - robot
  shakey - robot
  ke - key
  kw - key
  ve - vendor
  vw - vendor
)

(:init
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

(adjacent rww rw) (adjacent rw rww)
(adjacent ree re) (adjacent re ree)


(room_has_container rc cc)

(room_floor_coins rww n5)
(room_floor_coins re n5)


(container_has_coins cc n0)

(robot_coins robbie n0)
(robot_coins shakey n0)
(robot_at robbie rww)
(robot_at shakey ree)

(vendor_is_at ve re)
(vendor_sells_key ve ke n2)

(vendor_is_at vw rw)
(vendor_sells_key vw kw n2)

(key_unlocks_door ke re rc)
(key_unlocks_door kw rc rw)

)

(:goal (and
  (container_has_coins cc n6) ;v centralnoi konteinere doljnobit 6monet
))
)