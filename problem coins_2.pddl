(define (problem coins1)
(:domain coins)
(:objects
  rn - room
  rc - room
  rs - room
  re - room
  ree - room
  cn - container
  cs - container
  cee - container
  robbie - robot
  kn - key
  ks - key
  ke - key
  vendor - vendor
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

(adjacent re ree) (adjacent ree re) ;sosednie komnati
(adjacent rc rn) (adjacent rn rc)


(room_has_container rn cn) ; v komnate 
(room_has_container rs cs)
(room_has_container ree cee)

(room_floor_coins rc n2)
(room_floor_coins rn n2)


(container_has_coins cn n2)
(container_has_coins cs n5)
(container_has_coins cee n1)

(robot_coins robbie n0)
(robot_at robbie rc)

(vendor_is_at vendor rc) ; prodavec naxoditsa vkomante rc
(vendor_sells_key vendor ks n2)
(vendor_sells_key vendor ke n4)

(key_unlocks_door ks rc rs)
(key_unlocks_door ke rc re)

)

(:goal (and
  (container_has_coins cee n6) ; v konteineredoljno bit 6 monet
))
)
