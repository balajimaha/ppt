\ProvidesClass{tuhh_presentation}
% See also the wiki page https://collaborating.tuhh.de/e-4/tuhh_latex_presentation/-/wikis/tuhh_presentation-Class

% First option pass to base class (for options not declared by derived class)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass{beamer}
\usetheme{tuhh}
\setbeamertemplate{caption}[numbered]

\usepackage{.poppins_font/poppins}
\pdfmapfile{+.poppins_font/Poppins.map}

\usepackage[datesep=.,style=ddmmyy]{datetime2}

\AtBeginDocument{\usebeamerfont{normal text}}


%
% Getter and Setter Commands for Inserting Metadata
%

\def\university{\@dblarg\beamer@university}
\long\def\beamer@university[#1]#2{%
  \def\insertuniversity{\def\inst{\beamer@insttitle}\def\and{\beamer@andtitle}#2}%
}

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

% Redefine \includegraphics
\LetLtxMacro\latexincludegraphics\includegraphics
\renewcommand{\includegraphics}[2][]{%
  \textcolor{black}%
  {\latexincludegraphics[#1]{#2}}%
}

% Defaults
\university{Hamburg University of Technology (TUHH)}
\closingstatement{Thank You very much}
\street{Am Schwarzenberg-Campus 1}
\city{21073 Hamburg}
\website{www.tuhh.de}
\telephonenumber{+49 40 42878-3330}
\institute{Corresponding Authors Institute}
\email{corresponding.author@tuhh.de}
\author[Corresponding Author]{First Author, Second Author}


\DeclareOption{german}{%
  \closingstatement{Vielen Dank}%
  \university{Technische Universität Hamburg (TUHH)}%
  \settuhhwordmark{.theme_imgs/TUHH_logo-wortmarke_de_rgb.pdf}%
}

% Example
\DeclareOption{institute=test}{%
  \@ifclasswith{tuhh_presentation}{german}{
    \institute{Institutsname auf Deutsch}
  }{
    \institute{Institute Name in English}
  }
  \institutebranded{.theme_imgs/institute_logo_titlepage.pdf}{.theme_imgs/institute_logo_content.pdf}
}

% Institute of Communication Networks (E-4)
\DeclareOption{institute=e4}{%
  \@ifclasswith{tuhh_presentation}{german}{
    \institute{Institut für Kommunikationsnetze}
  }{
    \institute{Institute of Communication Networks}
  }
  \institutebranded{.theme_imgs/e4_logo_titlepage.pdf}{.theme_imgs/e4_logo_content.pdf}
}

% Institute of Mathematics (E-10)
\DeclareOption{institute=e10}{%
  \@ifclasswith{tuhh_presentation}{german}{
    \institute{Institut für Mathematik}
  }{
    \institute{Institute of Mathematics}
  }
  \institutebranded{.theme_imgs/e10_logo_titlepage.pdf}{.theme_imgs/e10_logo_content.pdf}
}


% Second option pass to derived class
\ProcessOptions\relax
