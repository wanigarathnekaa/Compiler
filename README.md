# **Assignment 1 – Programming In-class assignment 2024**

**Group No : 01**

Members:

| Name                 | Index No | Email                       |
| -------------------- | -------- | --------------------------- |
| Kavisha Wanigarathne | 21002071 | kavisha.abhishake@gmail.com |
| Lasith Ranahewa      | 21001553 | lasithranahewa@gmail.com    |


Our code was tested on UNIX system (mac OSX)

**How to execute**

Run Makefile or below commands

    bison -t -d -v parser.y

    flex lexer.l

    g++ lex.yy.c parser.tab.c -ll


## Test Cases

Here are **20 example test cases** to demonstrate the functionality of our calculator:

1. **Input**: `1 + 3`  
   **Output**: `Result: 4`

2. **Input**: `5 - 3`  
   **Output**: `Result: 2`

3. **Input**: `4 * 2 + 5`  
   **Output**: `Result: 13`

4. **Input**: `2 + 4 - 5`  
   **Output**: `Result: 1`

5. **Input**: `8 / 2`  
   **Output**: `Result: 4`

6. **Input**: `(2 + 3) * 5`  
   **Output**: `Result: 25`

7. **Input**: `(1 + (2 + 3)) * 4`  
   **Output**: `Result: 24`

8. **Input**: `10 - 2 + 3`  
   **Output**: `Result: 11`

9. **Input**: `5 / 0`  
   **Output**: `Error: Division by zero error`  
   **Result**: `0`

10. **Input**: `2 + 3 * (4 - 1)`  
    **Output**: `Result: 11`

11. **Input**: `3 + 5 * 2 - 8 / 4`  
    **Output**: `Result: 11`

12. **Input**: `((2 + 3) * 4) / 2`  
    **Output**: `Result: 10`

13. **Input**: `42`  
    **Output**: `Result: 42`

14. **Input**: `(3 * 2) + 5`  
    **Output**: `Result: 11`

15. **Input**: `5 + (3 * 2)`  
    **Output**: `Result: 11`

16. **Input**: `1 + 1`  
    **Output**: `Result: 2`

17. **Input**: `2 * 2`  
    **Output**: `Result: 4`

18. **Input**: `3 * (2 + (5 - 3) * 2)`  
    **Output**: `Result: 18`

19. **Input**: `1 + (1)`  
    **Output**: `Result: 2`

20. **Input**: `5 + 3 STOP`  
    **Output**: `Result: 8`  
    **Output**: `Program terminates`

## Guidelines

- Upon encountering the `STOP` token, the program should terminate.
- Tokens can be separated by any number of white spaces, tabs, or new lines.
- Expressions are followed by `+` or `–` operators, which are left associative and have lower precedence than multiplication and division.
- Terms are followed by `*` or `/` operators, which are left associative.
- If there is a parse error, the program must report the error with the line number where the error was found.
