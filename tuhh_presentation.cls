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


\def\street{\@dblarg\beamer@street}
\long\def\beamer@street[#1]#2{%
  \def\insertstreet{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\def\city{\@dblarg\beamer@city}
\long\def\beamer@city[#1]#2{%
  \def\insertcity{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\def\telephonenumber{\@dblarg\beamer@telephonenumber}
\long\def\beamer@telephonenumber[#1]#2{%
  \def\inserttelephonenumber{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\def\email{\@dblarg\beamer@email}
\long\def\beamer@email[#1]#2{%
  \def\insertemail{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\def\website{\@dblarg\beamer@website}
\long\def\beamer@website[#1]#2{%
  \def\insertwebsite{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\def\closingstatement{\@dblarg\beamer@closingstatement}
\long\def\beamer@closingstatement[#1]#2{%
  \def\insertclosingstatement{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

\LetLtxMacro\latexincludegraphics\includegraphics
\renewcommand{\includegraphics}[2][]{%
  \textcolor{black}%
  {\latexincludegraphics[#1]{#2}}%
}

% Defaults
\closingstatement{Thank You very much}
\street{Am Schwarzenberg-Campus 1}
\city{21073 Hamburg}
\website{www.tuhh.de}