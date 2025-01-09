(require racket/set)

(define/contract (contains-duplicate nums)
  (-> (listof exact-integer?) boolean?)

  (define/contract (go seen remaining)
    (-> any/c any/c boolean?)
    (match remaining
      ['() false ]
      [(cons num tail)
       (if (set-member? seen num) true (go (set-add seen num) tail)) 
       ]
      )
    )

  (go (set) nums)
  )