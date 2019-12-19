;input:a_1_SYMARRAY output:a_12_SYMARRAY
(let ((a!1 (- (- (seq.len (element a_9_SYMARRAY)) 0) 1)) ;a!1=(- (- (seq.len (element a_9_SYMARRAY)) 0) 1)=(- (seq.len (element a_9_SYMARRAY)) 0)-1=(seq.len (element a_9_SYMARRAY))-0-1
      (a!3 (- (- (seq.len (element a_1_SYMARRAY)) 1) 1)))
(let ((a!2 (seq.++ (seq.extract (element a_9_SYMARRAY) 0 0)
            (seq.++ (seq.unit ret_3_SYMINT)
                (seq.extract (element a_9_SYMARRAY) (+ 0 1) a!1))))
      (a!4 (seq.++ (seq.extract (element a_1_SYMARRAY) 0 1)
            (seq.++ (seq.unit ret_5_SYMINT)
                (seq.extract (element a_1_SYMARRAY) (+ 1 1) a!3)))))
 (and
 ;n=array.length
 (= length_2_SYMINT (seq.len (element a_1_SYMARRAY)))
 ;j<n
 (< 1 length_2_SYMINT)
 ;key=array[j]
 (>= 1 0)
 (< 1 (seq.len (element a_1_SYMARRAY)))
 (= (seq.unit ret_3_SYMINT) (seq.at (element a_1_SYMARRAY) 1))
 ;array[i]>key
 (>= 0 0)
 (< 0 (seq.len (element a_1_SYMARRAY)))
 (= (seq.unit ret_4_SYMINT) (seq.at (element a_1_SYMARRAY) 0))
 (> ret_4_SYMINT ret_3_SYMINT)
 ;array[i+1]=array[i]
 (>= 0 0)
 (< 0 (seq.len (element a_1_SYMARRAY)))
 (= (seq.unit ret_5_SYMINT) (seq.at (element a_1_SYMARRAY) 0))
 (>= 1 0)
 (< 1 (seq.len (element a_1_SYMARRAY)))
 (= (seq.unit ret_8_SYMINT) (seq.at (element a_1_SYMARRAY) 1))
 (= (element a_9_SYMARRAY) a!4)
 ;array[i+1]=key
 (>= 0 0)
 (< 0 (seq.len (element a_9_SYMARRAY)))
 (= (seq.unit ret_11_SYMINT) (seq.at (element a_9_SYMARRAY) 0))
 (= (element a_12_SYMARRAY) a!2)
 ;j>=n
 (= length_13_SYMINT (seq.len (element a_12_SYMARRAY)))
 (>= 2 length_13_SYMINT))))