\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gamatesis}
\LoadClass[a4paper,12pt]{report}

\RequirePackage{etoolbox}
\RequirePackage[english, bahasa]{babel}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage[titles]{tocloft}


% Beberapa command baru, dibuat berdasarkan command \chapter.
% Command \chapter juga akan didefinisikan ulang.
% Di sini menyimpan \chapter sebagai \oldchapter agar
% definisi ulang \chapter dan pembuatan command baru bisa didasarkan pada \oldchapter.
\let\oldchapter\chapter




% ---------------------------------------
% ---------- Batas tepi dan nomor halaman

\RequirePackage[
%   showframe,
  top=4cm,
  right=3cm,
  bottom=3cm,
  left=4cm,
  headheight=14.5pt,
  headsep=2cm, % 1.5cm dari atas (14.5pt sekitar 0.5cm)
  footskip=1.5cm
]{geometry}

\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhf{}
  \cfoot{\thepage}
}




% --------------------------------
% ---------- Permulaan alinea baru

\setlength{\parindent}{1.5cm}
\setlength{\parskip}{0pt}




% ----------------------------------
% ---------- Kedalaman pembagian bab

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{3}




% --------------------------
% ---------- Penomoran tabel

\renewcommand{\thetable}{\@arabic\c@table}




% ------------------------------------
% ---------- Info pelajar dan instansi

\newcommand{\JUDUL}{}
\newcommand{\judul}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\JUDUL}{#2}}
}

\newcommand{\SUBJUDUL}{}
\newcommand{\subjudul}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\SUBJUDUL}{#2}}
}

\newcommand{\KARYA}{}
\newcommand{\karya}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\KARYA}{#2}}
}

\newcommand{\MAKSUD}{}
\newcommand{\maksud}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\MAKSUD}{#2}}
}

\newcommand{\PRODI}{}
\newcommand{\prodi}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\PRODI}{#2}}
}

\newcommand{\PEMINATAN}{}
\newcommand{\peminatan}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\PEMINATAN}{#2}}
}

\newcommand{\LAMBANG}{}
\newcommand{\lambang}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\LAMBANG}{#2}}
}

\newcommand{\FILLERA}{}
\newcommand{\fillera}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\FILLERA}{#2}}
}

\newcommand{\NAMA}{}
\newcommand{\nama}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\NAMA}{#2}}
}

\newcommand{\NIM}{}
\newcommand{\nim}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\NIM}{#2}}
}

\newcommand{\FILLERB}{}
\newcommand{\fillerb}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\FILLERB}{#2}}
}

\newcommand{\BAGIANSEKOLAH}{}
\newcommand{\bagiansekolah}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\BAGIANSEKOLAH}{#2}}
}

\newcommand{\FAKULTAS}{}
\newcommand{\fakultas}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\FAKULTAS}{#2}}
}

\newcommand{\DEPARTEMEN}{}
\newcommand{\departemen}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\DEPARTEMEN}{#2}}
}

\newcommand{\UNIVERSITAS}{}
\newcommand{\universitas}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\UNIVERSITAS}{#2}}
}

\newcommand{\LOKASI}{}
\newcommand{\lokasi}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\LOKASI}{#2}}
}

\newcommand{\TAHUN}{}
\newcommand{\tahun}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\TAHUN}{#2}}
}




% Halaman sampul biasanya sama dengan halaman judul.
% Sekalipun begitu, di sini kode tetap ditulis ulang
% untuk kemudahan penyuntingan jika menginginkan format yang berbeda.

% -------------------------
% ---------- Halaman sampul

\newcommand{\halamansampul}[1][bahasa]{
  \begin{otherlanguage}{#1}
  \begin{titlepage}
  \setlength{\parskip}{0pt}
  \clearpage
    \centering
    \singlespacing

    {\fontsize{14pt}{14pt}\selectfont \bfseries
      \JUDUL
    }\par
    \SUBJUDUL\par

    \vspace{24pt}

    \KARYA\par

    \vspace{24pt}

    \MAKSUD\par

    \vspace{24pt}

    \PRODI\par
    \PEMINATAN\par

    \vfill
    \includegraphics[width=5.5cm, height=5.5cm]{\LAMBANG}\par
    \vfill

    \FILLERA\par

    \vspace{24pt}

    \textbf{\NAMA}\par
    \NIM\par

    \vspace{24pt}

    \FILLERB\par

    \vspace{24pt}

    \begin{bfseries}
    \MakeUppercase{\BAGIANSEKOLAH}\par
    \MakeUppercase{\FAKULTAS}\par
    \MakeUppercase{\DEPARTEMEN}\par
    \MakeUppercase{\UNIVERSITAS}\par
    \MakeUppercase{\LOKASI}\par
    \TAHUN
    \end{bfseries}
  \end{titlepage}
  \end{otherlanguage}
}




% ------------------------
% ---------- Halaman judul

\newcommand{\halamanjudul}[1][bahasa]{
  \begin{otherlanguage}{#1}
  \addcontentsline{toc}{chapter}{Halaman Judul}
  \clearpage
    \begingroup
      \setlength{\parskip}{0pt}
      \centering
      \singlespacing

      {\fontsize{14pt}{14pt}\selectfont \bfseries
        \JUDUL
      }\par
      \SUBJUDUL\par

      \vspace{24pt}

      \KARYA\par

      \vspace{24pt}

      \MAKSUD\par

      \vspace{24pt}

      \PRODI\par
      \PEMINATAN\par

      \vfill
      \includegraphics[width=5.5cm, height=5.5cm]{\LAMBANG}\par
      \vfill

      \FILLERA\par

      \vspace{24pt}

      \textbf{\NAMA}\par
      \NIM\par

      \vspace{24pt}

      \FILLERB\par

      \vspace{24pt}

      \begin{bfseries}
      \MakeUppercase{\BAGIANSEKOLAH}\par
      \MakeUppercase{\FAKULTAS}\par
      \MakeUppercase{\DEPARTEMEN}\par
      \MakeUppercase{\UNIVERSITAS}\par
      \MakeUppercase{\LOKASI}\par
      \TAHUN
      \end{bfseries}

    \endgroup

  \end{otherlanguage}
}




% -----------------------------
% ---------- Halaman pernyataan

\newcommand{\statementname}{PERNYATAAN BEBAS PLAGIAT}
% \newcommand{\PERNYATAAN}[2][]{
%   \expandafter\addto\csname captions#1\endcsname{\renewcommand{\statementname}{#2}}
% }
% \PERNYATAAN[english]{Statement}

\newcommand{\kontenpernyataan}[1]{
  \addcontentsline{toc}{chapter}{\statementname}
  \oldchapter*{\statementname}
  Saya yang bertandatangan di bawah ini:
  \begin{flushleft}
  \begin{tabular}{@{}ll}
    nama & : \\
    NIM & : \\
    tahun terdafatar & : \\
    Program Studi & : \\
    Fakultas & : 
  \end{tabular}
  \end{flushleft}

  #1

  \begin{flushright}
    \singlespacing
    \makebox[6cm]{\LOKASI, \dotfill}\par
    \makebox[6cm]{Penulis}\par
    \vspace{2cm}
    \makebox[6cm]{\NAMA}\par
    \makebox[6cm]{\NIM}
  \end{flushright}
}

\newcommand{\halamanpernyataan}[2][]{

  \begingroup
  \doublespacing
  \setlength{\parindent}{0pt}
  \ifstrempty{#1}
  {
    \kontenpernyataan{#2}
  }
  {
    \begin{otherlanguage}{#1}
    \kontenpernyataan{#2}
    \end{otherlanguage}
  }

  \endgroup
}




% ------------------
% ---------- Prakata

\newcommand{\prakata}[1]{
  \doublespacing
  \addcontentsline{toc}{chapter}{KATA PENGANTAR}
  \oldchapter*{Prakata}
  #1
}




%----------------------
% ---------- Daftar isi

\newcounter{counter}
\newcommand{\daftarisi}{
  \setlength{\cftbeforechapskip}{0pt}

  \cleardoublepage
  \doublespacing
  \addcontentsline{toc}{chapter}{\contentsname}
  \setcounter{counter}{\value{page}}
  \tableofcontents
  \setcounter{page}{\value{counter}}
}




% -----------------------
% ---------- Daftar tabel

\newcommand{\daftartabel}{
  \cleardoublepage
  \addcontentsline{toc}{chapter}{\listtablename}
  \setcounter{counter}{\value{page}}
  \listoftables
  \setcounter{page}{\value{counter}}
}




% -----------------------
% ---------- Daftar gambar

\newcommand{\daftargambar}{
  \cleardoublepage
  \addcontentsline{toc}{chapter}{\listfigurename}
  \setcounter{counter}{\value{page}}
  \listoffigures
  \setcounter{page}{\value{counter}}
}




% --------------------------
% ---------- Daftar lampiran

\newcommand{\namadaftarlampiran}{Daftar Lampiran}
\newlistof{lampiran}{lamp}{\namadaftarlampiran}

\newcommand{\daftarlampiran}{
  \cleardoublepage
  \addcontentsline{toc}{chapter}{\namadaftarlampiran}
  \setcounter{counter}{\value{page}}
  \listoflampiran
  \setcounter{page}{\value{counter}}
}




% ----------------------
% ---------- Daftar lain

\newcommand{\daftar}[1]{
  \newcommand{\namadaftar}{#1}
  \newlistof{pokok}{pk}{\namadaftar}

  \newcommand{\pokok}[2]{
  \newpage
  \addcontentsline{pk}{pokok}{##1}
  ##2
  }

  \cleardoublepage
  \addcontentsline{toc}{chapter}{\namadaftar}
  \setcounter{counter}{\value{page}}
  \listofpokok
  \setcounter{page}{\value{counter}}
}




% -------------------
% ---------- Intisari

\newcommand{\INTISARI}[2][bahasa]{
  \expandafter\addto\csname captions#1\endcsname{\renewcommand{\abstractname}{#2}}
}
\INTISARI{Intisari}

\newcommand{\kontenintisari}[1]{
  \addcontentsline{toc}{chapter}{\abstractname}
  \singlespacing
  \oldchapter*{\abstractname}
  #1
}

\newcommand{\intisari}[2][bahasa]{
  \begin{otherlanguage}{#1}
  \kontenintisari{#2}
  \end{otherlanguage}
}




% --------------
% ---------- Bab

\renewcommand{\thechapter}{\Roman{chapter}}

\renewcommand{\@makechapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \bfseries \MakeUppercase{\@chapapp\space  \thechapter}
        \par\nobreak
        \vskip 0\p@
    \fi
    \interlinepenalty\@M
    \bfseries #1\par\nobreak
    \vskip 24\p@
  }
}

\renewcommand{\@makeschapterhead}[1]{%
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \bfseries  #1\par\nobreak
    \vskip 24\p@
  }
}

\renewcommand{\chapter}{
  \doublespacing
  \oldchapter
}




% -----------------
% ---------- Subbab

\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\titleformat{\section}[block]{\bfseries}{\thesection}{0.5em}{}{}




% ----------------------
% ---------- Anak subbab

\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\titleformat{\subsection}[hang]{\bfseries}{\thesubsection}{0.5em}{}{}




% -------------------------
% ---------- Subanak subbab

\renewcommand{\thesubsubsection}{\thesubsection.\@alph\c@subsubsection}
\titleformat{\subsubsection}[hang]{\normalfont\bfseries}{\thesubsubsection}{0.5em}{}{}




% -------------------
% ---------- Lampiran

\newcommand{\lampiran}[2]{
  \newpage
  \addcontentsline{lamp}{lampiran}{#1}
  #2
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            serba aneka            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% -------------------------
% ---------- Halaman kosong

\newcommand{\halamankosong}[1]{
  \clearpage
  \
  #1
  \clearpage
}




%--------------------------------
% ---------- Lompat nomor halaman

\newcommand{\lompatnomor}{
  \thispagestyle{empty}
  \addtocounter{page}{-1}
}




%--------------------------------
% ---------- Quote
\expandafter\def\expandafter\quote\expandafter{\quote\singlespacing}

