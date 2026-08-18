<div align="center">
    <img src="logo-ifes.svg" alt="Logo Ifes" width="180" height="180"/>
    <h1>📐 Classe LaTeX Ifes — v9.0.1 (Normas 2024)</h1>
    <h3><em>Formate seu trabalho acadêmico em conformidade com as normas do Ifes.</em></h3>
</div>

<p align="center">
    <a href="#"><img src="https://img.shields.io/badge/versão-v9.0.1-blue" alt="Versão v9.0.1"/></a>
    <a href="#"><img src="https://img.shields.io/badge/edição-9ª_(2024)-2E8B57" alt="Edição da Norma"/></a>
    <a href="#"><img src="https://img.shields.io/badge/classe-ifes8.cls-2E8B57" alt="Classe"/></a>
    <a href="#"><img src="https://img.shields.io/badge/motor-pdfLaTeX-336791" alt="Motor TeX"/></a>
    <a href="#"><img src="https://img.shields.io/badge/ABNT_NBR-10520:2023-C41E3A" alt="NBR 10520"/></a>
    <a href="#"><img src="https://img.shields.io/badge/licença-LPPL_v1.3c-green" alt="Licença"/></a>
</p>

---

## Sumário

- [📖 O que é este projeto?](#-o-que-é-este-projeto)
- [🚀 Comece Rapidamente](#-comece-rapidamente)
  - [☁️ Opção A — Overleaf](#️-opção-a--overleaf)
  - [💻 Opção B — Instalação Local](#-opção-b--instalação-local)
    - [🐧 Guia de Instalação no Linux](#-guia-de-instalação-no-linux-ubuntu--pop_os--debian)
    - [🪟 Guia de Instalação no Windows 11](#-guia-de-instalação-no-windows-11)
- [🗂️ Estrutura do Repositório](#️-estrutura-do-repositório)
- [🆕 Atualizações da Edição 2024 (v9.0.1)](#-atualizações-da-edição-2024-v901)
- [🎓 Tipos de Trabalho Suportados](#-tipos-de-trabalho-suportados)
- [🛠️ Dependências](#️-dependências)
- [📚 Referências Normativas](#-referências-normativas)
- [👤 Autoria e Contribuição](#-autoria-e-contribuição)
- [📄 Licença](#-licença)

---

## 📖 O que é este projeto? 

Este repositório contém a **versão 9.0.1** da classe `ifes8`, desenvolvida originalmente pelo Prof. Jefferson O. Andrade e atualizada para conformidade total com a **9ª edição (2024)** das *"Normas para Apresentação de Trabalhos Acadêmicos e Científicos"* do Instituto Federal do Espírito Santo (Ifes).

A classe estende a `abntex2` (que por sua vez estende a `memoir`) e permite a criação de trabalhos acadêmicos completos — com todos os elementos pré-textuais, textuais e pós-textuais —, além de artigos científicos para a **Revista Ifes Ciência**.

---

## 🚀 Comece Rapidamente

### ☁️ Opção A — Overleaf

> ⚠️ **Atenção:** O **Overleaf no plano gratuito** possui um limite de tempo de compilação de 30 segundos. Devido ao tamanho e ao grande volume de pacotes/figuras do exemplo completo de TCC (`ifes8-tcc-ex.tex`), **o Overleaf gratuito pode ter dificuldade e apresentar erro de timeout ao compilar o TCC**. Nesses casos, recomendamos a compilação local (VS Code) ou a remoção temporária de pacotes/figuras não utilizados durante a escrita. O exemplo da Revista Ifes Ciência (`revista-ifes-ciencia-ex.tex`) compila normalmente no Overleaf.

<details>
<summary><strong>📋 Passo a passo no Overleaf (clique para expandir)</strong></summary>

#### 1. Baixe o projeto
Clique em **`<> Code`** → **`Download ZIP`** neste repositório ou baixe o arquivo zip da versão `v9.0.1`.

#### 2. Crie um novo projeto no Overleaf
1. Acesse [overleaf.com](https://www.overleaf.com) e faça login.
2. Clique em **`New Project`** → **`Upload Project`**.
3. Selecione o arquivo `.zip` baixado.

#### 3. Configure o documento principal
1. No menu do Overleaf (☰), defina o **Compiler** para `pdfLaTeX`.
2. Defina o **Main document** para `exemplo-tcc/ifes8-tcc-ex.tex` (para TCC) ou `exemplo-revista-ifes-ciencia/revista-ifes-ciencia-ex.tex` (para Artigo).
3. Clique em **`Recompile`**.

</details>

---

### 💻 Opção B — Instalação Local

Você pode editar e compilar seus documentos localmente no seu computador. Escolha abaixo o guia correspondente ao seu sistema operacional:

---

#### 🐧 Guia de Instalação no Linux (Ubuntu / Pop!_OS / Debian)

##### Requisitos Básicos
- [Vscode](https://code.visualstudio.com/)
- [Git](https://git-scm.com/downloads)
- Extensão VSCODE -> Python

##### Requisitos LaTeX
- Distribuição **TeX Live** e compilador **latexmk**
- Extensão VSCODE -> LaTeX Workshop

##### Passo a Passo (Linux):
1. **Instale os requisitos e a distribuição TeX Live:**
   ```bash
   sudo apt-get update
   sudo apt-get install -y texlive-publishers texlive-lang-portuguese \
     texlive-science texlive-fonts-recommended texlive-latex-extra latexmk perl git
   ```

2. **Instale as extensões no VS Code:**
   - Instale a extensão **LaTeX Workshop** (`James-Yu.latex-workshop`).
   - Instale a extensão **Python** (`ms-python.python`).

3. **Clone o repositório e compile:**
   ```bash
   git clone https://github.com/gustavopimentel/ifes-tcc-norms.git
   cd ifes-tcc-norms/ifes8/exemplo-tcc
   latexmk -pdf ifes8-tcc-ex.tex
   ```

---

#### 🪟 Guia de Instalação no Windows 11

##### Requisitos Básicos
- [Vscode](https://code.visualstudio.com/)
- [Git](https://git-scm.com/downloads)
- Extensão VSCODE -> Python

##### Requisitos LaTeX
- [MiKTeX](https://miktex.org/)
- [Perl](https://strawberryperl.com/)
- Extensão VSCODE -> LaTeX Workshop

##### Passo a Passo (Windows 11):
1. **Instale os softwares necessários:**
   - Baixe e instale o **[VS Code](https://code.visualstudio.com/)**.
   - Baixe e instale o **[Git](https://git-scm.com/downloads)**.
   - Baixe e instale o **[MiKTeX](https://miktex.org/)** (marque a opção para instalar pacotes automaticamente em *Always install missing packages on the fly*).
   - Baixe e instale o **[Strawberry Perl](https://strawberryperl.com/)** (necessário para a execução do utilitário de compilação `latexmk`).

2. **Configure as extensões no VS Code:**
   - Abra o VS Code e instale as extensões:
     - **LaTeX Workshop** (`James-Yu.latex-workshop`)
     - **Python** (`ms-python.python`)

3. **Clone e Compile:**
   - Abra o Terminal do Git Bash ou o Prompt de Comando (CMD) e execute:
     ```cmd
     git clone https://github.com/gustavopimentel/ifes-tcc-norms.git
     ```
   - Abra a pasta do projeto no VS Code (`File` -> `Open Folder`).
   - Abra o arquivo `ifes8-tcc-ex.tex` ou `revista-ifes-ciencia-ex.tex`.
   - Utilize o atalho `Ctrl + Alt + B` ou o painel lateral do **LaTeX Workshop** para compilar o documento.

---

## 🗂️ Estrutura do Repositório

```
ifes-tcc-norms/
├── media/
│   └── logo-ifes.png            # Logo institucional do Ifes
├── ifes8/
│   ├── ifes8.cls                # 🔑 Classe LaTeX principal (v9.0.1)
│   ├── ifes8.org                # Log de revisões (Org-Mode)
│   ├── README.org               # Documentação original da classe
│   ├── LICENSE                  # Licença LPPL v1.3c
│   ├── exemplo-tcc/
│   │   ├── ifes8-tcc-ex.tex     # 📝 Exemplo/modelo de TCC
│   │   ├── ifes8-tcc-ex.pdf     # PDF compilado do exemplo TCC
│   │   ├── ifes8.cls            # Arquivo físico da classe (v9.0.1)
│   │   ├── configlistings.tex   # Configuração de listagens de código
│   │   ├── referencias.bib      # Base de referências bibliográficas
│   │   └── pics/                # Imagens do exemplo TCC
│   └── exemplo-revista-ifes-ciencia/
│       ├── revista-ifes-ciencia-ex.tex # 📰 Modelo para a Revista Ifes Ciência
│       ├── revista-ifes-ciencia-ex.pdf # PDF compilado do exemplo Revista
│       ├── ifes8.cls            # Arquivo físico da classe (v9.0.1)
│       └── pics/                # Logotipos e imagens da revista
├── SDD/                         # Documentação de desenvolvimento (Spec-Driven)
└── README.md                    # ← Você está aqui
```

---

## 🆕 Atualizações da Edição 2024 (v9.0.1)

| Aspecto | Norma 2017 (8ª ed.) | Norma 2024 (9ª ed. / v9.0.1) |
|---|---|---|
| **Versão da Classe** | v8.x | **v9.0.1** ✅ |
| **Arquivos de Classe** | Links simbólicos | Arquivos físicos reais (`ifes8.cls`) em todas as pastas ✅ |
| **Modo Revista** | Deslocamento de margem | Margens simétricas e alinhamento uniforme em todas as páginas (`oneside`) ✅ |
| **Espaçamento entre parágrafos** | `\parskip = 12pt` | `\parskip = 15pt` ✅ |
| **Recuo de 1ª linha (TCC)** | Variável | `\parindent = 0mm` ✅ |
| **Ficha Catalográfica** | Sem campo de bibliotecário | Com nome do bibliotecário + CRB ✅ |
| **Títulos e Fontes (Ilustrações/Tabelas)** | Alinhamento à esquerda / despadronizado | Títulos (captions) e Fontes/Notas centralizados e padronizados conforme norma 2024 ✅ |
| **Norma de citações** | ABNT NBR 10520:2002 | ABNT NBR 10520:2023 ✅ |
| **Fonte reduzida** | Não padronizada | 10pt via `\ABNTEXfontereduzida` ✅ |

---

## 🎓 Tipos de Trabalho Suportados

A classe e os exemplos deste repositório suportam nativamente a formatação para:

- 📘 **Trabalhos de Conclusão de Curso (TCC)**
- 📗 **Trabalhos Finais de Curso (TFC)**
- 📕 **Dissertações de Mestrado**
- 📙 **Teses de Doutorado**
- 📰 **Artigos Científicos (Revista Ifes Ciência)**

---

## 🛠️ Dependências

| Pacote | Descrição |
|---|---|
| `texlive-publishers` / `MiKTeX` | Classe `abntex2` e estilos bibliográficos |
| `texlive-lang-portuguese` | Suporte ao idioma brasileiro (`babel`) |
| `texlive-science` | Pacotes matemáticos (`amsmath`, etc.) |
| `texlive-fonts-recommended` | Fontes Latin Modern e Helvetica |
| `texlive-latex-extra` | Pacotes auxiliares (`enumitem`, `microtype`, etc.) |
| `Strawberry Perl` | Necessário para execução do `latexmk` no Windows |

---

## 📚 Referências Normativas

- **IFES.** *Normas para Apresentação de Trabalhos Acadêmicos e Científicos: Documento Impresso e/ou Digital.* 9ª edição. Instituto Federal do Espírito Santo, 2024.
- **ABNT NBR 10520:2023** — *Informação e documentação — Citações em documentos — Apresentação.*
- **ABNT NBR 14724:2011** — *Informação e documentação — Trabalhos acadêmicos — Apresentação.*
- **ABNT NBR 6024:2012** — *Informação e documentação — Numeração progressiva das seções de um documento.*

---

## 👤 Autoria e Contribuição

| | Nome | Contribuição |
|---|---|---|
| 🧑‍🏫 | **Prof. Dr. Jefferson O. Andrade** | Autor original da classe `ifes8` |
| 🎓 | **Gustavo Cardoso Pimentel** | Atualização para a versão 9.0.1 (Normas 2024 — 9ª edição) |

---

## 📄 Licença

Este projeto é licenciado sob a **LaTeX Project Public License v1.3c** ou posterior.
Consulte o arquivo [LICENSE](./ifes8/LICENSE) para o texto completo.

---

<p align="center">
    <sub>Instituto Federal do Espírito Santo — Educação Pública, Gratuita e de Qualidade.</sub>
</p>
