<div align="center">
    <img src="logo-ifes.svg" alt="Logo Ifes" width="180" height="180"/>
    <h1>📐 Classe LaTeX Ifes — Normas 2024</h1>
    <h3><em>Formate seu trabalho acadêmico em conformidade com as normas do Ifes.</em></h3>
</div>

<p align="center">
    <strong>Classe LaTeX para elaboração de trabalhos acadêmicos e científicos do Instituto Federal do Espírito Santo (Ifes), em conformidade com a 9ª edição (2024) das "Normas para Apresentação de Trabalhos Acadêmicos e Científicos".</strong>
</p>

<p align="center">
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
  - [☁️ Opção A — Overleaf (recomendado)](#️-opção-a--overleaf-recomendado)
  - [💻 Opção B — Instalação Local](#-opção-b--instalação-local)
- [🗂️ Estrutura do Repositório](#️-estrutura-do-repositório)
- [🆕 Atualizações da Edição 2024](#-atualizações-da-edição-2024)
- [🎓 Tipos de Trabalho Suportados](#-tipos-de-trabalho-suportados)
- [🛠️ Dependências](#️-dependências)
- [📚 Referências Normativas](#-referências-normativas)
- [👤 Autoria e Contribuição](#-autoria-e-contribuição)
- [📄 Licença](#-licença)

## 📖 O que é este projeto? 

Este repositório é um **fork atualizado** da classe `ifes8`, originalmente desenvolvida pelo Prof. Jefferson O. Andrade. A classe é uma customização da `abntex2` (que, por sua vez, estende a classe `memoir`) e permite a criação de trabalhos acadêmicos completos — com **todos os elementos pré-textuais, textuais e pós-textuais** — em plena conformidade com as normas institucionais do Ifes.

O projeto inclui um **exemplo funcional de TCC** (`ifes8-tcc-ex.tex`) que serve ao mesmo tempo como **manual de uso** e como **modelo** para os estudantes.

## 🚀 Comece Rapidamente

### ☁️ Opção A — Overleaf (recomendado)

O [Overleaf](https://www.overleaf.com) é um editor LaTeX online e gratuito. **Não é necessário instalar nada no seu computador.** Siga os passos abaixo:

<details>
<summary><strong>📋 Passo a passo no Overleaf (clique para expandir)</strong></summary>

#### 1. Baixe o projeto

Clique no botão verde **`<> Code`** → **`Download ZIP`** neste repositório, ou baixe diretamente:

```
https://github.com/gustavopimentel/ifes-tcc-norms/archive/refs/heads/main.zip
```

#### 2. Crie um novo projeto no Overleaf

1. Acesse [overleaf.com](https://www.overleaf.com) e faça login (ou crie uma conta gratuita).
2. Clique em **`New Project`** → **`Upload Project`**.
3. Arraste o arquivo `.zip` que você baixou ou clique para selecioná-lo.

#### 3. Configure o compilador

1. No Overleaf, clique no ícone de **Menu** (☰) no canto superior esquerdo.
2. Em **Settings**, altere:
   - **Compiler:** `pdfLaTeX`
   - **Main document:** `ifes8/exemplo-tcc/ifes8-tcc-ex.tex`

#### 4. Ajuste o symlink (importante!)

O Overleaf **não suporta links simbólicos**. Você precisa substituir o symlink por uma cópia real:

1. No painel de arquivos à esquerda, **delete** o arquivo `ifes8/exemplo-tcc/ifes8.cls` (que é o symlink de 12 bytes).
2. Clique com o botão direito na pasta `ifes8/exemplo-tcc/` → **`Upload`**.
3. Faça upload de uma **cópia** do arquivo `ifes8/ifes8.cls` (o arquivo real, com ~12KB).

> 💡 **Alternativa:** Você pode simplesmente copiar e colar o conteúdo de `ifes8/ifes8.cls` em um novo arquivo chamado `ifes8.cls` dentro da pasta `exemplo-tcc`.

#### 5. Compile!

Clique no botão **`Recompile`** (ou pressione `Ctrl+Enter`). O PDF será gerado no painel direito.

#### 6. Comece a escrever o seu TCC

Agora basta editar o arquivo `ifes8-tcc-ex.tex` e substituir o conteúdo de exemplo pelo seu próprio trabalho. Os principais pontos para personalizar são:

```latex
\titulo{Seu Título Aqui}
\autor{Seu Nome Completo}
\autorficha{Sobrenome, Nome}
\orientador{Prof. Dr. Nome do Orientador}
\curso{Nome do Seu Curso}
\data{2026}
\local{Nome da Cidade}
```

</details>

---

### 💻 Opção B — Instalação Local

Se preferir compilar no seu computador (Linux):

#### 1. Instale as dependências

```bash
sudo apt-get install -y texlive-publishers texlive-lang-portuguese \
  texlive-science texlive-fonts-recommended texlive-latex-extra
```

#### 2. Clone e compile

```bash
git clone https://github.com/gustavopimentel/ifes-tcc-norms.git
cd ifes-tcc-norms/ifes8/exemplo-tcc
latexmk -pdf ifes8-tcc-ex.tex
```

#### 3. Use no seu projeto

Copie o arquivo `ifes8.cls` para o diretório do seu projeto e inicie o documento com:

```latex
\documentclass[times,english,brazilian,oneside,section=TITLE]{ifes8}
```

## 🗂️ Estrutura do Repositório

```
ifes-tcc-norms/
├── media/
│   └── logo-ifes.png            # Logo institucional do Ifes
├── ifes8/
│   ├── ifes8.cls                # 🔑 Classe LaTeX principal
│   ├── ifes8.org                # Log de revisões (Org-Mode)
│   ├── README.org               # Documentação original da classe
│   ├── LICENSE                  # Licença LPPL v1.3c
│   └── exemplo-tcc/
│       ├── ifes8-tcc-ex.tex     # 📝 Exemplo/modelo de TCC
│       ├── ifes8-tcc-ex.pdf     # PDF compilado do exemplo
│       ├── ifes8.cls            # Symlink → ../ifes8.cls
│       ├── configlistings.tex   # Configuração de listagens de código
│       ├── referencias.bib      # Base de referências bibliográficas
│       └── pics/                # Imagens do exemplo
├── SDD/                         # Documentação de desenvolvimento (Spec-Driven)
│   ├── constituition.md
│   ├── contract.md
│   ├── plan.md
│   └── specs.md
└── README.md                    # ← Você está aqui
```

## 🆕 Atualizações da Edição 2024

| Aspecto | Norma 2017 (8ª ed.) | Norma 2024 (9ª ed.) |
|---|---|---|
| **Espaçamento entre parágrafos** | `\parskip = 12pt` | `\parskip = 15pt` ✅ |
| **Recuo de 1ª linha** | Variável | `\parindent = 0mm` ✅ |
| **Ficha Catalográfica** | Sem campo de bibliotecário | Com nome do bibliotecário + CRB ✅ |
| **Norma de citações** | ABNT NBR 10520:2002 | ABNT NBR 10520:2023 ✅ |
| **Fonte reduzida** | Não padronizada | 10pt via `\ABNTEXfontereduzida` ✅ |

## 🎓 Tipos de Trabalho Suportados

A classe suporta nativamente a formatação para:

- 📘 **Trabalhos de Conclusão de Curso (TCC)**
- 📗 **Trabalhos Finais de Curso (TFC)**
- 📕 **Dissertações de Mestrado**
- 📙 **Teses de Doutorado**

O exemplo inclui demonstrações de: algoritmos, tabelas no padrão IBGE, figuras, diagramas TikZ, equações, citações diretas/indiretas e listagens de código-fonte.

## 🛠️ Dependências

| Pacote | Descrição |
|---|---|
| `texlive-publishers` | Classe `abntex2` e estilos bibliográficos |
| `texlive-lang-portuguese` | Suporte ao idioma brasileiro (`babel`) |
| `texlive-science` | Pacotes matemáticos (`amsmath`, etc.) |
| `texlive-fonts-recommended` | Fontes Latin Modern e Helvetica |
| `texlive-latex-extra` | Pacotes auxiliares (`enumitem`, `microtype`, etc.) |

## 📚 Referências Normativas

- **IFES.** *Normas para Apresentação de Trabalhos Acadêmicos e Científicos: Documento Impresso e/ou Digital.* 9ª edição. Instituto Federal do Espírito Santo, 2024.
- **ABNT NBR 10520:2023** — *Informação e documentação — Citações em documentos — Apresentação.*
- **ABNT NBR 14724:2011** — *Informação e documentação — Trabalhos acadêmicos — Apresentação.*
- **ABNT NBR 6024:2012** — *Informação e documentação — Numeração progressiva das seções de um documento.*

## 👤 Autoria e Contribuição

| | Nome | Contribuição |
|---|---|---|
| 🧑‍🏫 | **Prof. Dr. Jefferson O. Andrade** | Autor original da classe `ifes8` |
| 🎓 | **Gustavo Cardoso Pimentel** | Atualização para as normas 2024 (9ª edição) — Agosto de 2026 |

## 📄 Licença

Este projeto é licenciado sob a **LaTeX Project Public License v1.3c** ou posterior.
Consulte o arquivo [LICENSE](./ifes8/LICENSE) para o texto completo.

---

<p align="center">
    <sub>Instituto Federal do Espírito Santo — Educação Pública, Gratuita e de Qualidade.</sub>
</p>
