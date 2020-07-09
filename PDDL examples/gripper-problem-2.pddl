(define (problem strips-gripper2)
(:domain gripper-domain)
(:objects rooma roomb roomc roomd roome
ball1 ball2 ball3 ball4 ball5
ball6 ball7 ball8 ball9 ball10
ball11 ball12 ball13 ball14
left right)
(:init 
(room rooma)
(room roomb)
(room roomc)
(room roomd)
(room roome)
(ball ball1)
(ball ball2)
(ball ball3)
(ball ball4)
(ball ball5)
(ball ball6)
(ball ball7)
(ball ball8)
(ball ball9)
(ball ball10)
(ball ball11)
(ball ball12)
(ball ball13)
(ball ball14)
(gripper left)
(gripper right)
(at-robby roomc)
(free left)
(free right)
(at ball1 roome)
(at ball2 roomc)
(at ball3 rooma)
(at ball4 roomb)
(at ball5 roomd)
(at ball6 rooma)
(at ball7 roomb)
(at ball8 roomc)
(at ball9 roomd)
(at ball10 roomb)
(at ball11 roomc)
(at ball12 rooma)
(at ball13 roomd)
(at ball14 roomb)
)
 (:goal (and (at ball1 rooma)
               (at ball2 roomb)
               (at ball3 roomc)
               (at ball4 roomd)
               (at ball5 roome)
               (at ball6 roomb)
               (at ball7 rooma)
               (at ball8 roomb)
               (at ball9 roome)
               (at ball10 roomc)
               (at ball11 rooma)
               (at ball12 roomd)
               (at ball13 roomb)
               (at ball14 roomc))))