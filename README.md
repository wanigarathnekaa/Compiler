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

**Test Cases**
***20 Example Test Cases***

1. 1+3
Result: 4
2. 5-3
Result: 2
3. 4*2+5
Result: 13
4. 2+4-5
Result: 1
5. 8/2
Result: 4
6. (2+3)*5
Result: 25
7. (1 + (2 + 3)) * 4
Result: 24
8. 10-2+3
Result: 11
9. 5/0
Error: Division by zero
Result: 0
10. 2 + 3 * (4 - 1)
Result: 11
11. 3 + 5 * 2 - 8 / 4
Result: 11
12. ((2 + 3) * 4) / 2
Result: 10
13. 42
Result: 42
14. (3 * 2) + 5
Result: 11
15. 5 + (3 * 2)
Result: 11
16. 1 + 1
Result: 2
17. 2 * 2
Result: 4
18. 3 * (2 + (5 - 3) * 2)
Result: 18
19. 1+(1)
Result: 2
20. 5 + 3 STOP
Result: 8
Program terminates

**Guid Lines**
• upon arriving STOP, program should terminate.
• Tokens may be separated by any number of white spaces, tabs or new lines.
• Expressions are followed by + or – operator. Note that these are left associative and have
lower precedence than multiplication and division.
• Term is followed by * or / operator and they are left associative.
• If there is a parse error, you need to report the error.
        o Your error messages must contain the line number where the error was found.