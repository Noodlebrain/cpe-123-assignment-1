;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Assignment1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require rsound)
(require 2htdp/image)
(require 2htdp/universe)

(define (draw_world w)
  (overlay/xy
   (text "1. clap-1" 30 "black") 0 50
   (overlay/xy
    (text "2. c-hi-hat-1" 30 "black") 0 50
    (overlay/xy
     (text "3. chicken.wav" 30 "black") 0 50
     (overlay/xy
      (text "4. monkey.wav" 30 "black") 0 50
      (text "5. duck.wav" 30 "black"))))))

; plays a scaled clip based on the var passed in
(define (playc x)
  (cond [(= x 1) (play (rs-scale 0.5 clap-1))]
        [(= x 2) (play (rs-scale 0.5 c-hi-hat-1))]
        [(= x 3) (play (rs-read "chicken.wav"))]
        [(= x 4) (play (rs-read "monkey.wav"))]
        [(= x 5) (play (rs-read "duck.wav"))]))
                  
(define (key_handler w k)
  (cond [(and
          (and (not (equal? false (string->number k)))
               (< (string->number k) 6))
          (> (string->number k) 0))
         (playc (string->number k))]
        [else w]))

(big-bang 0
          [to-draw draw_world]
          [on-key key_handler])
         

