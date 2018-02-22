# 4 Year - Theory of Algorithms


## Problem Sheet: Turing machines
### 1. Consider the following Turing Machine.
```
State Input Write Move Next
q0      U      U    L   qa
q0      0      0    R   q0
q0      1      1    R   q1
q1      U      U    L   qf
q1      0      0    R   q1
q1      1      1    R   q0
```
Determine what happens when the Turing Machine is run with the following inputs initially on the tape.

```
(a) 0001

    0       0       0       1
q0      q0      q0      q0      q1
                                qf      Fail
```
```
(b) 0111

        0       1       1       1
    q0      q0      q1      q0      q1
                                    qf      Fail        
```
```
(c) 0110

        0       1       1       0
    q0      q0      q1      q0      q0
                                    qa      Accept        
```
```
(d) 0101010001

        0       1       0       1       0       1       0       0       0       1
    q0      q0      q1      q1      q0      q0      q1      q1      q1      q1      q0
                                                                                    qa      Accept
```
```
(e) 00000000000000111

    0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1
q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q0  q1  q0  q1
                                                                    qf      Fail    
```
```
(f) 00

        0       0
    q0      q0      q0
                    qa      Accept
```
```
(g)

    q0
    qa      Accept

```

### 2. Give the state table for a Turing Machine that appends a parity bit to a tape with a string of consecutive 0’s and 1’s.

### 3. Construct a Turing Machine to compute the sequence 0 t 1 t 0 t 1 t 0 t . . ., that is, 0 blank 1 blank 0 blank, etc.

### 4. Give the state table for a Turing Machine that multiplies a string of consecutive 0’s and 1’s by 2. The machine should treat the initial contents of the tape as a natural number written in binary form, with the least significant bit at the end. That is, if the contents of the tape are 01101, then the right-most 1 represents the number 1, the middle 1 represents the number 4 and the left-most 1 represents the number 8. Then the number on the tape is 8 + 4 + 1 = 13.

### 5. Give the state table for a Turing Machine that multiplies a string of consecutive 0’s and 1’s by 2. The machine should treat the initial contents of the tape as a natural number written in binary form, with the most significant bit at the end. That is, if the contents of the tape are 01101, then the right-most 1 represents the number 16, the middle 1 represents the number 4 and the left-most 1 represents the number 2.
Then the number of the tape is 2 + 4 + 16 = 22.

### 6. Give the state table for a Turing Machine that adds 1 to a string of consecutive 0’s and 1’s, where the least significant digit is on the right of the input.

### 7. Give the state table for a Turing Machine that subtracts 1 to a string of consecutive 0’s and 1’s, where the least significant digit is on the right of the input.


### 8. List all words of length at most three in  where  is:
```
(a) {0, 1}
(b) {a, b, c}
(c) {}
```

### 9. Design a Turing machine to recognise the language {0n1n | n  0}.

### 10. Design a Turing machine to recognise the language {wwR | w 2 {0, 1}} where wR is w reversed. For example, when w = 101011 then wR = 110101.

### 11. Design a Turing machine to recognise the language {aibjck | i, j, k 2 N0}




### References: 
- http://www.cs.bath.ac.uk/~ag248/CM10020/WorkedSolutions.pdf 


# Author

### Alexander Souza
- G00317835@gmit.ie
- alexpt2000@gmail.com
- https://github.com/alexpt2000gmit
- https://github.com/alexpt2000
- www.linkedin.com/in/alexander-souza-3a841539/