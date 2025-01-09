(define/contract (contains-duplicate nums)
  (-> (listof exact-integer?) boolean?)
  (let/cc return
    (for/fold ([seen (set)])
              ([n nums]
               #:break (and (set-member? seen n) 
                           (return #t)))
      (set-add seen n))
    #f))