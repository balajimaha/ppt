\ProvidesClass{tuhh_presentation}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

\usetheme{tuhh}

\usepackage{.poppins_font/poppins}
\pdfmapfile{+.poppins_font/Poppins.map}

\usepackage[datesep=.,style=ddmmyy]{datetime2}

