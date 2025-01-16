#lang racket
(define/contract (is-anagram-sort s t)
  (-> string? string? boolean?)
  
  (equal?
   (sort (string->list s) char<?)
   (sort (string->list t) char<?)))
  
(define/contract (is-anagram-hash s t)
  (-> string? string? boolean?)
  (equal? 
   (for/fold ([counts (hash)])
             ([c (string->list s)])
     (hash-update counts c add1 0))
   (for/fold ([counts (hash)])
             ([c (string->list t)])
     (hash-update counts c add1 0))))
  
(define/contract (is-anagram s t)
  (-> string? string? boolean?)
  ; Define a lambda function called char->count  
  (let ([char->count 
         (λ (str) ; the Lambda takes one parameter called str
           (for/fold ([counts (make-vector 26 0)]) ; Define a mutable vector called counts,
                     ([c (string->list str)]) ; and iterate over each char c in the lambda parameter str
             ; Define a variable called idx to store the difference between the current character and the letter 'a'
             ; We have to use char->integer to compare the integer values of characters.
             (let ([idx (- (char->integer c) (char->integer #\a))])
               ; Increment the vector
               (vector-set! counts idx (add1 (vector-ref counts idx)))
               counts)))])
    ; Call the lambda on each string and compare the results.
    (equal? (char->count s) (char->count t))))