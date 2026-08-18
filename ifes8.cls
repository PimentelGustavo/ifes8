%%% Classe de documento para confecção de trabalhos acadêmicos do
%%% Instituto Federal do Espírito Santo (Ifes). Em conformidade com as
%%% normas estabelecidas no documento “Normas para Apresentação de
%%% Trabalhos Acadêmicos e Científicos: Documento Impresso e/ou
%%% Digital”, 9ª edição -- 2024.
%%% 
%%% Esta classe é baseada na classe abnTeX2 versão 1.9.6 de 26 de
%%% fevereiro de 2016 [http://www.abntex.net.br/], que por sua vez é
%%% baseada na classe memoir.
%%%
%%% Para a versão mais recente desta classe verifique:
%%% https://github.com/quigonjeff/ifes8
%%% 
%%% Autor: Prof. Jefferson O. Andrade <jefferson.andrade@ifes.edu.br>
%%% Atualizado por: Gustavo Cardoso Pimentel em 11 de agosto de 2026 (Adequação às normas Ifes 2024 - 9ª edição)
%%% Data de criação: 2018-02-22 | Data de atualização: 2026-08-11
%%% 

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{ifes8}[2026/08/13 v9.1 Classe de trabalhos academicos do Ifes (Normas 2024)]

\RequirePackage{ifthen}

%%% As opções de estilo de fontes são `arial' e `times'. Na verdade
%%% estas opções carregam as fontes Helvetica e Latin Modern, que são
%%% superiores tipograficamente às fontes Arial e Times New Roman,
%%% respectivamente.
\newboolean{IFEStimes}
\setboolean{IFEStimes}{true}

\newboolean{IFESrevista}
\setboolean{IFESrevista}{false}

\DeclareOption{times}{\setboolean{IFEStimes}{true}}
\DeclareOption{arial}{\setboolean{IFEStimes}{false}}
\DeclareOption{revista}{\setboolean{IFESrevista}{true}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,chapter=TITLE,section=TITLE]{abntex2}

\RequirePackage{hyperref}

\RequirePackage{enumitem}

\RequirePackage{ragged2e}

\RequirePackage[fleqn]{amsmath}

\RequirePackage{caption}

%%% Configuração das margens do documento.
\setlrmarginsandblock{3cm}{2cm}{*}
\setulmarginsandblock{3cm}{2cm}{*}
\checkandfixthelayout


\ifthenelse{\boolean{IFESrevista}}{%
  %%% ================================================================
  %%% Modo REVISTA: cabeçalhos via fancyhdr, parágrafos com recuo,
  %%% espaçamento simples, tolerância alta para colunas estreitas.
  %%% ================================================================
  \RequirePackage{fancyhdr}
  \RequirePackage{indentfirst}
  \RequirePackage{needspace}
  \pagestyle{fancy}
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  %% Margens simétricas no modo revista
  \setlrmarginsandblock{2cm}{2cm}{*}
  \setulmarginsandblock{2cm}{2cm}{*}
  \checkandfixthelayout
  %% Parágrafos: recuo 1,25 cm, 6 pt após, espaçamento simples
  \setlength{\parindent}{1.25cm}
  \setlength{\parskip}{6pt}
  \linespread{1.0}
  %% Espaçamento entre colunas
  \setlength{\columnsep}{1.25cm}
  %% Tolerância para justificação em colunas estreitas
  \tolerance=2000 \emergencystretch=2.5em \hbadness=10000 \sloppy
}{%
  %%% ================================================================
  %%% Modo TCC (padrão): cabeçalhos abnTeX, sem recuo, parskip 15pt
  %%% ================================================================
  %%% Redefinição dos cabeçalhos
  \makeevenhead{abntheadings}{\ABNTEXfontereduzida\thepage}{}{}
  \makeoddhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}
  \makeheadrule{abntheadings}{0pt}{0pt}
  %%% Configuração do alinhamento da 1ª linha dos parágrafos.
  \setlength{\parindent}{0mm}
  %%% Espaçamento entre parágrafos
  \setlength{\parskip}{15pt}
  %%% Espaçamento 1,5 entre linhas (Norma 2024)
  \OnehalfSpacing
}


%%% Configuração do espaçamento entre títulos e texto
\setlength{\afterchapskip}{0pt}

%%% Espaçamento entre itens de listas
\setlist{parsep=12pt,leftmargin=1.2em}

%%% Pelas normas do Ifes, as equações devem ser alinhadas à esquerda
\setlength{\mathindent}{0pt}

%%% Configura a fonte do documento.
%%% No modo revista usa-se mathptmx (Times New Roman).
%%% No modo TCC usa-se Latin Modern (times) ou Helvética (arial).
\RequirePackage[T1]{fontenc}
\ifthenelse{\boolean{IFESrevista}}{%
  \RequirePackage{mathptmx}
}{%
  \ifthenelse{\boolean{IFEStimes}}{%
    \RequirePackage{lmodern}
  }{%
    \RequirePackage{helvet}
    \IfFileExists{sfmath.sty}{%
      \RequirePackage[helvet]{sfmath}%
    }{%
      % Fallback seguro caso sfmath não esteja instalado no Linux
    }
    \renewcommand{\familydefault}{\sfdefault}
  }
}


%%% Reconfiguração dos tamanhos das fontes de legendas para “fonte
%%% reduzida”.
\captionnamefont{\normalsize}
\captiontitlefont{\normalsize}


%%% Formatação dos títulos: partes, capítulos, seções, subseções e
%%% subsubseções
\renewcommand{\ABNTEXchapterfont}{\fontseries{b}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\fontseries{m}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfont}{\fontseries{b}\selectfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsectionfont}{\fontseries{m}\selectfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\fontshape{it}\selectfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}



\addtolength{\cftlastnumwidth}{-1em}

\ifthenelse{\boolean{ABNTEXsumario-abnt-6027-2012}}{%
  
  \cftsetindents{part}{0em}{\cftlastnumwidth}
  \cftsetindents{chapter}{0em}{\cftlastnumwidth}
  \cftsetindents{section}{0em}{\cftlastnumwidth}
  \cftsetindents{subsection}{0em}{\cftlastnumwidth}
  \cftsetindents{subsubsection}{0em}{\cftlastnumwidth}
  \cftsetindents{paragraph}{0em}{\cftlastnumwidth}
  \cftsetindents{subparagraph}{0em}{\cftlastnumwidth}
  % 
  \renewcommand{\tocprintchapter}{%
    \addtocontents{toc}{\cftsetindents{chapter}{0em}{\cftlastnumwidth}}}
  % 
  \renewcommand{\tocinnonumchapter}{%
    \addtocontents{toc}{\cftsetindents{chapter}{\cftlastnumwidth}{2em}}%
    \cftinserthook{toc}{A}}
  % 
  \renewcommand{\tocprintchapternonum}{%
    \addtocontents{toc}{\cftsetindents{chapter}{\cftlastnumwidth}{2em}}}
  % 
  \renewcommand{\tocpartapendices}{%
    \addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
    \cftinserthook{toc}{A}}
  % 
  \renewcommand{\tocpartanexos}{%
    \addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
    \cftinserthook{toc}{A}}
  % 

  % 
  % Fontes das entradas do sumario
  % 
  \renewcommand{\cftpartfont}{\bfseries\normalsize}
  % 
  \renewcommand{\cftchapterfont}{\bfseries\normalsize}
  \renewcommand{\cftchapterpagefont}{\cftchapterfont}
  % 
  \renewcommand{\cftsectionfont}{\mdseries\normalsize}
  \renewcommand{\cftsectionpagefont}{\cftsectionfont}
  % 
  \renewcommand{\cftsubsectionfont}{\bfseries\normalsize}
  \renewcommand{\cftsubsectionpagefont}{\mdseries\cftsubsectionfont}
  % 
  \renewcommand{\cftsubsubsectionfont}{\mdseries\normalsize}
  \renewcommand{\cftsubsubsectionpagefont}{\cftsubsubsectionfont}
  % 
  \renewcommand{\cftparagraphfont}{\itshape\mdseries\normalsize}
  \renewcommand{\cftparagraphpagefont}{\cftparagraphfont}
  % 
  \setlength{\cftbeforechapterskip}{0em}
}{}


%%% Nomes constantes
\newcommand{\declaracaodoautorname}{Declara\c{c}\~{a}o do Autor}
\newcommand{\listadeabreviaturasname}{Lista de abreviaturas}
\renewcommand{\listadesiglasname}{Lista de siglas}
\renewcommand{\listfigurename}{Lista de Figuras}

%%% Comandos de dados
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

\providecommand{\imprimirautorficha}{}
\newcommand{\autorficha}[1]{\renewcommand{\imprimirautorficha}{#1}}

%%% Numeração contínua de equações
\counterwithout{equation}{chapter}


% ---
% Lista de abreviaturas e siglas
\newenvironment{abreviaturas}{%
  \pretextualchapter{\listadeabreviaturasname}
  \begin{symbols}
}{%
  \end{symbols}
  \cleardoublepage
}
% ---


%%% ---
%%% List of symbol
\newenvironment{isymbols}{%
  \list{}% empty label
  {%
    \setlength{\topsep}{\baselineskip}
    \setlength{\partopsep}{0pt}
    \setlength{\itemsep}{0.5\baselineskip}
    \setlength{\parsep}{0pt}
    \setlength{\leftmargin}{2em}
    \setlength{\rightmargin}{0em}
    \setlength{\listparindent}{1em}
    \setlength{\itemindent}{0em}
    \setlength{\labelwidth}{0em}
    \setlength{\labelsep}{2em}
  }
}{\endlist}
\newcommand{\simb}[1]{\item[#1]\mbox{}}
%%% ---


% ---
% Lista de simbolos
\renewenvironment{simbolos}{%
  \pretextualchapter{\listadesimbolosname}
  \begin{isymbols}
}{%
  \end{isymbols}
  \cleardoublepage
}
% ---


%%% ---
\newcommand{\quadroname}{Quadro}
\newfloat{quadro}{loq}{\quadroname}
\newcommand{\listadequadrosname}{Lista de quadros}
\newlistof{listadequadros}{loq}{\listadequadrosname}
\newlistentry{quadro}{loq}{0}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand{\cftquadroaftersnum}{\hfill\textendash\hfill}
%%% ---



%%% Redefinição do comando de impressão da capa
\renewcommand{\imprimircapa}{%
  \begin{capa}
    \center
    {\ABNTEXchapterfontsize\MakeTextUppercase{\imprimirinstituicao}}\\
    %\vspace{1\baselineskip}
    {\ABNTEXchapterfontsize\MakeTextUppercase{\imprimircurso}}\\
    %
    \vspace{3.0cm}
    %
    {\ABNTEXchapterfont\ABNTEXchapterfontsize\MakeTextUppercase{\imprimirautor}}\\
    %
    \vspace*{6.0cm}
    %
    \begin{center}
      \ABNTEXchapterfont\ABNTEXchapterfontsize\MakeTextUppercase{\imprimirtitulo}\\
    \end{center}
    %
    \vfill
    %
    \ABNTEXsectionfontsize\imprimirlocal\\
    \ABNTEXsectionfontsize\imprimirdata\\

    %\vspace*{1cm}
  \end{capa}
}

%%% Redefinição do comando de impressão da folha de rosto.
%%% Para esta parte do código é necessário que o caracter arroba `@'
%%% seja tratado como uma letra pelo LaTeX.
\makeatletter
\renewcommand{\folhaderostocontent}{
  \begin{center}
    {%\ABNTEXchapterfont
    \ABNTEXchapterfontsize\MakeTextUppercase{\imprimirautor}}\\
    %
    \vspace{4.5cm}
    %
    \begin{center}
    {\ABNTEXchapterfont\ABNTEXchapterfontsize\MakeTextUppercase{\imprimirtitulo}}\\
    \end{center}
    %
    \vfill
    %
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
        \SingleSpacing
        {\footnotesize{\imprimirpreambulo}}
      \end{minipage}%
    }%
    \\%
    \vspace{0.5cm}
    %
    \hspace{0.45\textwidth}
    \begin{minipage}{0.5\textwidth}
      \SingleSpacing
      {\footnotesize\imprimirorientadorRotulo~\imprimirorientador}
      \abntex@ifnotempty{\imprimircoorientador}{%
        \par
        {\footnotesize\imprimircoorientadorRotulo~\imprimircoorientador}%
      }
    \end{minipage}
    \\%
    \vfill
    %
    \vspace*{1.5cm}
    {\ABNTEXsectionfontsize\imprimirlocal}\\
    {\ABNTEXsectionfontsize\imprimirdata}\\
  \end{center}
}
\makeatother


%%% ---
%%% Declaração do Autor
\newenvironment{declaracaodoautor}[1][\declaracaodoautorname]{%
  \pretextualchapter{#1}
}{\PRIVATEclearpageifneeded}
% ---

%%% Configura o pacote hyperref
\makeatletter
\hypersetup{
  pdftitle={\@title},
  pdfauthor={\@author},
  pdfsubject={\imprimirpreambulo},
  pdfkeywords={PALAVRAS}{CHAVE}{EM}{PORTUGUES},
  pdfcreator={LaTeX with abnTeX2},
  hidelinks
}
\makeatother

\renewcommand{\fonte}[2][\fontename]{%
  \par\centering{\footnotesize{#1: #2}}\par
}

\renewcommand{\nota}[2][\notaname]{%
  \par\centering{\footnotesize{#1: #2}}\par
}



%%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%%% Comandos LaTeX que devem ser executados após o início do corpo do
%%% documento, i.e., após o \begin{document}.
%%%   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
\AtBeginDocument{%
  \setlength{\abovecaptionskip}{6pt} % espaçamento antes da legenda de
                                % tabelas/figuras 
  \setlength{\belowcaptionskip}{6pt}
  \setsecnumformat{\csname the#1\endcsname\space}  % Formata o número das seções
                                % de acordo com a norma
  \renewcommand{\afterchapternum}{\hspace{-4pt}}  % Ajusta o espaçamento após o
                                % título dos capítulos
  \captionsetup{justification=centering,singlelinecheck=false} % ajusta a
                                % formatação da legendas das figuras à norma
}

%%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%%% Definição de comando específicos da classe do Ifes.
%%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

%%% Converte o título das seções para maiúsculas no Sumário (TOC) usando o preprocessador da classe memoir
\makeatletter
\ifthenelse{\boolean{ABNTEXsumario-abnt-6027-2012}}{%
  \settocpreprocessor{section}{%
    \let\tempf@rtoc\f@rtoc%
    \def\f@rtoc{%
      \texorpdfstring{\MakeTextUppercase{\tempf@rtoc}}{\tempf@rtoc}}%
  }%
}{}
\makeatother

%%% Define o comando \imprimesumario
\providecommand{\imprimirsumario}{}
\renewcommand{\imprimirsumario}{
  \renewcommand{\contentsname}{SUMÁRIO}%
  \pdfbookmark[0]{\contentsname}{toc}%
  \tableofcontents*%
}

%%% O título da seção primária “Referências” tem que ser alterado para ficar
%%% todo em maiúsculas (porque sim, aparentemente...)
\providecommand{\bibname}{}
\renewcommand{\bibname}{REFERÊNCIAS}

%%% O título da divisão de parte de  “Apêndices” tem que ser alterado para ficar
%%% todo em maiúsculas (também porque sim...)
\providecommand{\apendicesname}{}
\renewcommand{\apendicesname}{APÊNDICES}

%%% Define o comando \ifestex
\providecommand{\ifestex}{}
\renewcommand{\ifestex}{Ifes\TeX}

%%% Define o valor padrão para o rótulo de orientadora
\providecommand{\orientadoraname}{}
\renewcommand{\orientadoraname}{Orientadora:}

%%% Define o comando \orientadora
\providecommand{\orientadora}{}
\renewcommand{\orientadora}[2][\orientadoraname]{\orientador[#1]{#2}}

%%% Define o valor padrão para o rótulo de orientadora
\providecommand{\coorientadoraname}{}
\renewcommand{\coorientadoraname}{Coorientadora:}

%%% Define o comando \orientadora
\providecommand{\coorientadora}{}
\renewcommand{\coorientadora}[2][\coorientadoraname]{\coorientador[#1]{#2}}


%%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%%% Comandos específicos do modo REVISTA (Revista Ifes Ciência)
%%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
\makeatletter
\ifIFESrevista
  %
  %%% Pacotes necessários para o modo revista
  \RequirePackage{xcolor}
  \RequirePackage{graphicx}
  %
  %%% Cor institucional
  \definecolor{ifesteal}{HTML}{004240}
  %
  %%% Comandos de metadados do artigo
  \newcommand{\@revistaissn}{2359-4799}
  \newcommand{\revistaissn}[1]{\renewcommand{\@revistaissn}{#1}}
  %
  \newcommand{\@revistavolume}{}
  \newcommand{\revistavolume}[1]{\renewcommand{\@revistavolume}{#1}}
  %
  \newcommand{\@revistadoi}{}
  \newcommand{\revistadoi}[1]{\renewcommand{\@revistadoi}{#1}}
  %
  \newcommand{\@revistapaginas}{XX-YY}
  \newcommand{\revistapaginas}[1]{\renewcommand{\@revistapaginas}{#1}}
  %
  \newcommand{\@revistabanner}{pics/banner_ifes_ciencia.png}
  \newcommand{\revistabanner}[1]{\renewcommand{\@revistabanner}{#1}}
  %
  \newcommand{\@revistalogo}{pics/logo_ifes_ciencia.png}
  \newcommand{\revistalogo}[1]{\renewcommand{\@revistalogo}{#1}}
  %
  \newcommand{\@orcidicon}{pics/orcid_icon.png}
  \newcommand{\orcidicon}[1]{\renewcommand{\@orcidicon}{#1}}
  %
  \newcommand{\@artigotitulo}{}
  \newcommand{\artigotitulo}[1]{\renewcommand{\@artigotitulo}{#1}}
  %
  \newcommand{\@datasubmissao}{XX/XX/XXXX}
  \newcommand{\datasubmissao}[1]{\renewcommand{\@datasubmissao}{#1}}
  %
  \newcommand{\@dataaceitacao}{XX/XX/XXXX}
  \newcommand{\dataaceitacao}[1]{\renewcommand{\@dataaceitacao}{#1}}
  %
  \newcommand{\@datapublicacao}{XX/XX/XXXX}
  \newcommand{\datapublicacao}[1]{\renewcommand{\@datapublicacao}{#1}}
  %
  %%% Caixa colorida com número da página no cabeçalho
  \newcommand{\ifespagebox}{%
    \colorbox{ifesteal}{\textcolor{white}{\textbf{\thepage}}}%
  }
  \fancyhead[L]{\ifespagebox\hspace{4pt}\textbf{\@revistavolume}}
  \fancyhead[R]{\raisebox{-0.15cm}{\includegraphics[height=1.05cm]{\@revistalogo}}}
  %
  %%% Ícone ORCID
  \newcommand{\orcid}{\,\includegraphics[height=2.3mm]{\@orcidicon}}
  %
  %%% Comando para imprimir a capa do artigo (página 1)
  \newcommand{\imprimircaparevista}{%
    \thispagestyle{empty}%
    \begin{flushright}
      \colorbox{ifesteal}{%
        \begin{minipage}{9.6cm}
          \raggedleft\color{white}\bfseries\fontsize{13}{16}\selectfont
          ISSN \@revistaissn\\[2pt]
          \@revistavolume\ -- p. \@revistapaginas\\[2pt]
          DOI:\@revistadoi
        \end{minipage}%
      }
    \end{flushright}
    \vspace{3mm}
    \noindent\includegraphics[width=\textwidth]{\@revistabanner}
    \vspace{12mm}
  }
  %
  %%% Ambiente para o resumo gráfico (Graphical Abstract)
  \newenvironment{graphicalabstract}{%
    \begin{center}
      \textbf{GRAPHICAL ABSTRACT}
      \vspace{8mm}
  }{%
    \end{center}
    \vspace{8mm}
  }
  %
  %%% Comando para imprimir o título do artigo
  \newcommand{\imprimirtituloartigo}{%
    \begin{center}
      {\Large\bfseries\@artigotitulo}
    \end{center}
    \vspace{6mm}
  }
  %
  %%% Comando para imprimir as datas de submissão/aceitação/publicação
  \newcommand{\imprimirdatasartigo}{%
    \begin{center}
      Article submitted in \@datasubmissao, accepted in \@dataaceitacao{}
      and published in \@datapublicacao.
    \end{center}
  }
  %
\fi
\makeatother
%

\endinput

%%% Local Variables:
%%% ispell-local-directory: "brasileiro"
%%% End:
