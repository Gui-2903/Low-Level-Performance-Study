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

## 🧠 Benchmark 2: Consumo de Memória (Vetor 1M Inteiros)

| Linguagem | Memória (MB) |
|----------|--------------|
| Assembly | **0.8** |
| C | 1.2 |
| Rust | 1.6 |
| Java | 15.0 |
| Python | **28.0** |

📌 Observação: linguagens com runtime/GC apresentam maior overhead estrutural.

---

## 🧮 Benchmark 3: Multiplicação de Matrizes (100×100)

| Linguagem | Tempo Médio (s) |
|----------|------------------|
| Assembly | **0.002** |
| C | 0.018 |
| Rust | 0.022 |
| Java | 0.450 |
| Python | **3.800** |

---

# 📈 Visualização (Gráficos)

## Fibonacci (Tempo em segundos)

```mermaid
pie title Tempo relativo (Fibonacci n=40)
    "Assembly (0.001s)" : 1
    "C (0.012s)" : 12
    "Rust (0.015s)" : 15
    "Java (0.630s)" : 630
    "Python (26.660s)" : 26660

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

# 📈 Visualização dos Resultados

## Consumo de Memória (MB)

```mermaid
bar
    title Consumo de Memória - Vetor com 1.000.000 Inteiros
    "Assembly" : 0.8
    "C" : 1.2
    "Rust" : 1.6
    "Java" : 15.0
    "Python" : 28.0