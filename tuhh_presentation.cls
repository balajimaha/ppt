\ProvidesClass{tuhh_presentation}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

\usetheme{tuhh}
\setbeamertemplate{caption}[numbered]

\usepackage{.poppins_font/poppins}
\pdfmapfile{+.poppins_font/Poppins.map}

\usepackage[datesep=.,style=ddmmyy]{datetime2}

\AtBeginDocument{\usebeamerfont{normal text}}

\newcommand{\finalpage}{
    \usebeamertemplate{endpage}
}

\settowidth{\leftmargini}{\usebeamertemplate{itemize item}}

\def\telephonenumber{\@dblarg\beamer@telephonenumber}
\long\def\beamer@telephonenumber[#1]#2{%
  \def\inserttelephonenumber{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}
