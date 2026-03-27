<div align="center">

# ⚙️ Low-Level Performance Study  
### Efficiency, Resource Control & Memory Safety Across Programming Languages

📌 Repositório oficial do artigo científico:  
**"No Coração dos Sistemas: A Relevância da Programação de Baixo Nível para a Eficiência e Segurança em Aplicações Modernas"**

---

![Assembly](https://img.shields.io/badge/Assembly-x86__64-blue?style=for-the-badge)
![C](https://img.shields.io/badge/C-GCC-orange?style=for-the-badge)
![Rust](https://img.shields.io/badge/Rust-Memory_Safe-red?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-JVM-yellow?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-High_Level-green?style=for-the-badge)

![Status](https://img.shields.io/badge/status-active-success?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-lightgrey?style=flat-square)
![Platform](https://img.shields.io/badge/platform-Linux%20(Ubuntu%2022.04)-blue?style=flat-square)

---

📍 **Autor:** Guilherme  
🎓 **Instituição:** UEMG - Unidade Carangola  
📅 **Ano:** 2025  

</div>

---

## 📖 Sobre o Projeto

Este repositório contém os **códigos-fonte, estrutura experimental e dados de benchmark** utilizados no artigo científico:

> **"No Coração dos Sistemas: A Relevância da Programação de Baixo Nível para a Eficiência e Segurança em Aplicações Modernas"**

O estudo investiga o impacto do nível de abstração de linguagens de programação no:

- ⚡ **tempo de execução**
- 🧠 **consumo de memória**
- 🔒 **segurança de memória (Memory Safety)**
- 🏗️ **controle direto sobre hardware e recursos**

Foram comparadas linguagens representando diferentes níveis de abstração:

| Categoria | Linguagens |
|----------|-----------|
| 🧱 Baixo nível | Assembly, C |
| ⚙️ Intermediária moderna | Rust |
| 🌐 Alto nível | Java, Python |

---

## 🎯 Objetivos do Estudo

- Comparar **performance real** entre linguagens compiladas e interpretadas  
- Avaliar impacto do **overhead de runtime** (JVM, interpretadores, garbage collector)  
- Medir **consumo de RAM** em alocação intensiva  
- Discutir **vulnerabilidades clássicas de memória** (C) vs **segurança em tempo de compilação** (Rust)  
- Demonstrar relevância do baixo nível em cenários como:
  - IoT e sistemas embarcados  
  - kernels e drivers  
  - bibliotecas gráficas  
  - criptografia e aplicações críticas  

---

## 🧪 Metodologia Experimental

Foram executados 3 testes computacionais equivalentes em todas as linguagens:

| Teste | Objetivo | Métrica |
|------|----------|---------|
| Fibonacci recursivo (n=40) | Stress de CPU e recursão | Tempo médio (s) |
| Alocação de vetor (1.000.000 int) | Stress de heap / memória | Memória usada (MB) |
| Multiplicação de matrizes (100x100) | Operações aritméticas intensivas | Tempo médio (s) |

📌 Todos os testes foram executados **10 vezes**, coletando média e consistência estatística.

---

## 💻 Ambiente de Execução

Os benchmarks foram realizados no seguinte ambiente:

- **SO:** Ubuntu Linux 22.04 LTS (64 bits)  
- **CPU:** Intel Core i5 (10ª geração)  
- **RAM:** 8 GB DDR4  
- **Compiladores / Interpretadores:**
  - GCC 11+
  - NASM + LD (binutils)
  - Rustc 1.70+
  - OpenJDK 17+
  - Python 3.10+

---

# 📊 Resultados Experimentais

## ⏱️ Benchmark 1: Fibonacci Recursivo (n = 40)

| Linguagem | Tempo Médio (s) |
|----------|------------------|
| Assembly | **0.001** |
| C | 0.012 |
| Rust | 0.015 |
| Java | 0.630 |
| Python | **26.660** |

📌 Diferença aproximada:  
- Python foi **~22.000x mais lento** que Assembly  
- Java foi **~52x mais lento** que C  

---

# 🧠 Benchmark 2: Consumo de Memória (Vetor 1M Inteiros)

Este teste avalia o impacto do gerenciamento de memória em diferentes linguagens, medindo o consumo durante a alocação e manipulação de um vetor com **1.000.000 de inteiros**.

| Linguagem | Consumo de Memória (MB) | Observação |
|----------|--------------------------|------------|
| 🟦 Assembly | **0.8 MB** | Uso mínimo de stack/heap |
| 🟧 C | 1.2 MB | Controle manual via `malloc()` |
| 🦀 Rust | 1.6 MB | Segurança via Ownership/Borrow Checker |
| ☕ Java | 15.0 MB | Overhead da JVM + Garbage Collector |
| 🐍 Python | **28.0 MB** | Objetos dinâmicos + interpretador |

📌 **Resumo:** linguagens de baixo nível têm consumo extremamente reduzido por não possuírem overhead estrutural.

---

# 🧮 Benchmark 3: Multiplicação de Matrizes (100×100)

Este teste simula uma carga computacional aritmética intensa, muito comum em:

- computação científica  
- simulações físicas  
- aplicações gráficas  
- processamento de dados  

| Linguagem | Tempo Médio (s) | Desempenho |
|----------|------------------|------------|
| 🟦 Assembly | **0.002s** | 🏆 Melhor performance |
| 🟧 C | 0.018s | Excelente |
| 🦀 Rust | 0.022s | Próximo ao C |
| ☕ Java | 0.450s | Overhead da JVM |
| 🐍 Python | **3.800s** | Muito mais lento |

📌 **Resumo:** Assembly e C dominam em operações matemáticas intensivas, enquanto Python sofre grande penalidade por interpretação.

---
---
# 🚀 Como Executar os Códigos (Benchmarks)

Esta seção descreve como compilar e executar cada algoritmo implementado neste repositório.  
Todos os testes foram projetados para rodar em ambiente Linux (Ubuntu 22.04+), seguindo o padrão experimental do artigo.

📌 **Recomendação:** execute os códigos em modo otimizado para garantir resultados consistentes.

---

## 🧱 Fibonacci (Benchmark de CPU)

📂 Pasta: `fibonacci/`  
🎯 Objetivo: medir tempo de execução com recursão profunda (**n=40**).

---

### 🟦 Assembly (NASM x86_64)

📄 Arquivo: `fibonacci/assembly.asm`

```bash
nasm -f elf64 fibonacci/assembly.asm -o fib_asm.o
gcc fib_asm.o -no-pie -o fib_asm
./fib_asm
```

📌 Observação: este código utiliza instruções próximas ao hardware, garantindo máximo desempenho.

---

### 🟧 C (GCC)

📄 Arquivo: `fibonacci/c.c`

```bash
gcc -O3 fibonacci/c.c -o fib_c
./fib_c
```

📌 `-O3` ativa otimizações agressivas do compilador, aproximando a execução do limite da CPU.

---

### 🦀 Rust

📄 Arquivo: `fibonacci/rust.rs`

```bash
rustc -C opt-level=3 fibonacci/rust.rs -o fib_rust
./fib_rust
```

📌 Rust oferece alta performance com segurança de memória garantida pelo compilador.

---

### ☕ Java

📄 Arquivo: `fibonacci/java.java`

```bash
javac fibonacci/java.java
java java
```

📌 Java executa via JVM, podendo apresentar overhead de inicialização e garbage collector.

---

### 🐍 Python

📄 Arquivo: `fibonacci/python.py`

```bash
python3 fibonacci/python.py
```

📌 Python executa interpretado, por isso o tempo cresce drasticamente em recursão profunda.

---

---

# 🧠 Vetor (Benchmark de Memória)

📂 Pasta: `vetor/`  
🎯 Objetivo: medir consumo de memória durante alocação de um vetor com **1.000.000 inteiros**.

---

### 🟧 C (GCC)

📄 Arquivo: `vetor/c.c`

```bash
gcc -O3 vetor/c.c -o vetor_c
./vetor_c
```

📌 Em C, a memória é alocada manualmente com `malloc()`, garantindo máximo controle.

---

### 🦀 Rust

📄 Arquivo: `vetor/rust.rs`

```bash
rustc -C opt-level=3 vetor/rust.rs -o vetor_rust
./vetor_rust
```

📌 Rust usa heap de forma segura e evita erros clássicos como *use-after-free*.

---

### ☕ Java

📄 Arquivo: `vetor/java.java`

```bash
javac vetor/java.java
java java
```

📌 O consumo de memória é maior devido ao heap gerenciado pela JVM.

---

### 🐍 Python

📄 Arquivo: `vetor/python.py`

```bash
python3 vetor/python.py
```

📌 Python utiliza objetos dinâmicos e estruturas internas complexas, aumentando o uso de RAM.

---

---

# 🧮 Matriz (Benchmark de Stress Matemático)

📂 Pasta: `matriz/`  
🎯 Objetivo: avaliar desempenho em multiplicação de matrizes **100×100**.

---

### 🟧 C (GCC)

📄 Arquivo: `matriz/c.c`

```bash
gcc -O3 matriz/c.c -o matriz_c
./matriz_c
```

📌 C é altamente eficiente para operações aritméticas intensivas.

---

### 🦀 Rust

📄 Arquivo: `matriz/rust.rs`

```bash
rustc -C opt-level=3 matriz/rust.rs -o matriz_rust
./matriz_rust
```

📌 Rust mantém performance alta com segurança forte no acesso à memória.

---

### ☕ Java

📄 Arquivo: `matriz/java.java`

```bash
javac matriz/java.java
java java
```

📌 Java apresenta desempenho intermediário devido à JVM e otimizações JIT.

---

### 🐍 Python

📄 Arquivo: `matriz/python.py`

```bash
python3 matriz/python.py
```

📌 Python puro tende a ser lento para matrizes, pois cada operação passa pelo interpretador.

---

---

# ⏱️ Execução Automatizada (Modo Benchmark)

Se você quiser rodar todos os testes de forma organizada:

```bash
./fib_asm
./fib_c
./fib_rust
java java
python3 fibonacci/python.py

./vetor_c
./vetor_rust
java java
python3 vetor/python.py

./matriz_c
./matriz_rust
java java
python3 matriz/python.py
```

---

# 📌 Observação Importante (Reprodutibilidade)

Para resultados mais próximos do artigo:

- feche aplicações em segundo plano  
- execute cada teste pelo menos 10 vezes  
- use sempre modo otimizado (`-O3`, `opt-level=3`)  
- rode em Linux para manter consistência


# 📚 Referência do Artigo

Este repositório é parte do estudo acadêmico desenvolvido para análise comparativa de desempenho, consumo de memória e segurança entre linguagens de programação de diferentes níveis de abstração.

📄 **Título:** *No Coração dos Sistemas: A Relevância da Programação de Baixo Nível para a Eficiência e Segurança em Aplicações Modernas*  
📌 **Título (EN):** *At the Heart of Systems: The Relevance of Low-Level Programming for Efficiency and Security in Modern Applications*  
📅 **Ano:** 2025  
🎓 **Instituição:** Universidade do Estado de Minas Gerais (UEMG) - Unidade Carangola  

---

# 🧾 Como Citar (ABNT)

> SOUSA, Guilherme Ferreira; MURUCCI, João Pedro Bianquini. **No Coração dos Sistemas: A Relevância da Programação de Baixo Nível para a Eficiência e Segurança em Aplicações Modernas**. 2025. Artigo Científico (Sistemas de Informação) – Universidade do Estado de Minas Gerais (UEMG), Unidade Carangola, Carangola, 2025.

---

# 👨‍💻 Autores

| Autor | Formação | Instituição |
|------|----------|-------------|
| Guilherme Ferreira Sousa¹ | Estudante de Sistemas de Informação | UEMG - Unidade Carangola |
| João Pedro Bianquini Murucci² | Estudante de Sistemas de Informação | UEMG - Unidade Carangola |

---

# 🤝 Contribuições

Sugestões e melhorias são bem-vindas!  
Sinta-se livre para abrir uma **Issue** ou enviar um **Pull Request**.