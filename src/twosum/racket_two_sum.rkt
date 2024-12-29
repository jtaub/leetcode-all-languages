(define/contract (two-sum nums target)
  (-> (listof exact-integer?) exact-integer? (listof exact-integer?))

  (define (go num-to-index remaining_nums i)
    (define num (car remaining_nums))
    (match (hash-ref num-to-index num #f)
      [#f (
        go (
          hash-set num-to-index (- target num) i) 
          (cdr remaining_nums) 
          (+ i 1)
        )
      ]
      [j (list j i)]))

  (go (hash) nums 0))
