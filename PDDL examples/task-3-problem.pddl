(define (problem pb1)
  (:domain air-cargo)
  (:objects 
  C1 C2 C3 C4 C5 C6
  C7 C8 C9 C10 C11 C12 C13 C14
    P1 P2 P3 P4 P5 P6 P7
    P8 P9 P10 P11 P12 P13 P14

    A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14)
  (:init

   (Cargo C1) (Cargo C2)
   (Cargo C3) (Cargo C4)
   (Cargo C5) (Cargo C6)
   (Cargo C7) (Cargo C8)
   (Cargo C9) (Cargo C10)
   (Cargo C11) (Cargo C12)
   (Cargo C13) (Cargo C14)
   
   (Plane P1) (Plane P2)
   (Plane P3) (Plane P4)
   (Plane P5) (Plane P6)
   (Plane P7) (Plane P8)
   (Plane P9) (Plane P10)
   (Plane P11) (Plane P12)
   (Plane P13) (Plane P14)
   
   (Airport A9) (Airport A10)
   (Airport A12) (Airport A13)
   (Airport A11) (Airport A14)
   (Airport A1) (Airport A2)
   (Airport A3) (Airport A4)
   (Airport A5) (Airport A6)
   (Airport A7) (Airport A8)
   
   
   (At C1 A7)   (At C2 A13)         (At P1 A1) (At P2 A2)
   (At C3 A8)   (At C4 A11)         (At P3 A3) (At P4 A4)
   (At C5 A14)  (At C6 A12)         (At P5 A5) (At P6 A6)
   (At C7 A1)   (At C8 A2)          (At P7 A7) (At P8 A8)
   (At C9 A3)   (At C10 A5)         (At P9 A9) (At P10 A10)
   (At C11 A4)  (At C12 A9)         (At P11 A12) (At P12 A13)
   (At C13 A6)  (At C14 A10)        (At P13 A11) (At P14 A14))

  (:goal
   (and     
        (At C1 A11)         (At C2 A6)
        (At C3 A12)    (At C4 A1)
        (At C5 A7)         (At C6 A14)
        (At C7 A5)         (At C8 A3)
        (At C9 A13)         (At C10 A8)
        (At C11 A2)         (At C12 A9)
        (At C13 A4)       (At C14 A10)
   )))