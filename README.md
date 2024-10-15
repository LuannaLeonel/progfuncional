# AVALIACAO FINAL PROGRAMACAO FUNCIONAL

Problemas a serem resolvidos:


1. Dado um array ordenado e um número x, encontre um par (a,b) de números pertencentes ao array tal que (a + b) se aproxime o máximo possível de x.

Exemplos:
```
Input: arr[] = {10, 22, 28, 29, 30, 40}, x = 54

Output: 22 and 30

Input: arr[] = {1, 3, 4, 7, 10}, x = 15

Output: 4 and 10
``` 


2. Encontrar floor e ceil de um número x dentro de um array a. O número x pode não estar no array a. O floor(x) é o número do array a que é menor que x e que mais se aproxima de x (pode existir mais de um número menor que x, o floor é o maior deles). Dualmente, o ceil(x)  é o número do array a que é maior que x e que mais se aproxima de x (pode existir mais de um número maior do que x, o ceil é o menor deles).

3. Implementar uma pilha e seus algoritmos em Haskell. Use a lista de Haskell como estrutura sobrejacente e operações que não sejam acesso pelo índice.
4. Implementar uma Fila e seus algoritmos em Haskell. Use a lista de Haskell como estrutura sobrejacente e operações que não sejam acesso pelo índice.
5. Um aluno é representado como uma estrutura contando matrícula, um primeiro nome, um sobrenome, período de ingresso e CRA.
   - Implemente a estrutura que representa um aluno
   - Implemente uma função que calcula a média dos CRAs dos alunos (dispostos em uma lista) usando o operador de foldr (você não pode usar map)
   - Implemente uma função que realiza o groupBy dos alunos por CRA. Ou seja, dada uma lista de alunos, a função retorna uma lista de pares (cra, [Aluno]), agrupando alunos com um mesmo CRA em pares cujo primeiro elemento é o CRA e o segundo é uma lista de alunos.
