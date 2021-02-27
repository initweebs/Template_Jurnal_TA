%identifikasi class

\NeedsTeXFormat {LaTeX2e}

\ProvidesClass{Jurnal_kolo}

\RequirePackage{fancyhdr}
%\RequirePackage[english,bahasa]{babel}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx,latexsym}


\usepackage{graphicx}
\usepackage{verbatim,enumerate}
\usepackage{booktabs}
\usepackage[table]{xcolor}
\usepackage{multirow}
\usepackage{float}
\usepackage{indentfirst}
\usepackage{tabularx}
\usepackage{array}
\usepackage{csvsimple}
\usepackage{adjustbox}
\usepackage{multicol}
\usepackage{lipsum}

\setlength{\columnsep}{1cm}

\bibliographystyle{IEEEtran}

%Base Class yang digunakan
\LoadClass[10pt]{article}

%atur margin
\usepackage[a4paper, papersize={21 cm, 29.7 cm}]{geometry}
\geometry{
	top=3cm, left=2cm, right=2cm, bottom=3cm
}
\bibliographystyle{IEEEtran}


%Create Command
\newcommand{\judul}[1]{\newcommand{\@judul}{#1}}
\newcommand{\penulis}[1]{\newcommand{\@penulis}{#1}}
\newcommand{\afiliasi}[1]{\newcommand{\@afiliasi}{#1}}
\newcommand{\email}[1]{\newcommand{\@email}{#1}}
\newcommand{\emailaf}[1]{\newcommand{\@emailaf}{#1}}
\newcommand{\prodi}[1]{\newcommand{\@prodi}{#1}}
\newcommand{\fakultas}[1]{\newcommand{\@fakultas}{#1}}
\newcommand{\alamat}[1]{\newcommand{\@alamat}{#1}}


%letakkan di halaman
\newcommand{\cetakheader}{
	
	{
	\centering
	\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@judul}\par\nobreak
	\vspace{1.0cm}
	%\vspace{0.5 cm}
	\textbf{\@penulis \textsuperscript{ 1}, \@afiliasi \textsuperscript{ 2}} \\
	\vspace{1 cm}
	\emph{\large Prodi \@prodi}\\
	\emph{\large \@fakultas}\\
	\emph{\large \@alamat}\\
	\large \emph{E-mail: }\@email \textsuperscript{ 1}, \@emailaf \textsuperscript{ 2} \\
	}

}

%style header dan footer
\fancypagestyle{shf}{
	\fancyhf{} %clear style
	%\fancyfoot[L]{\@penulis}
	\fancyfoot[C]{\thepage}
	%\fancyfoot[R]{\@namajurnal}
	
	\renewcommand{\headrulewidth}{0pt}
}

%abstract indo
\renewcommand{\abstractname}{\large Abstrak}
%bibliography indo
\def\refname{DAFTAR PUSTAKA}%
%\def\bibname{Daftar Pustaka}%
%\renewcommand{\refname}{Daftar Pustaka}
%table and figure prefix
\renewcommand{\thetable}{\arabic{section}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\figurename}{Gambar}
\renewcommand{\tablename}{Tabel}
\renewcommand\refname{Daftar Pustaka}