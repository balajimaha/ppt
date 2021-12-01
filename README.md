# The (unofficial) TUHH LaTeX Beamer Presentation Template Project
The Hamburg University of Technology launched a new Brand Identity on 17.11.2021.
To unify the visual representation of the TUHH, a style guide, Powerpoint templates and additional materials were designed.
As LaTeX is still in heavy use for scientific typesetting and document creating, this project aims to translate the available Powerpoint templates to an equivalent Beamer class.
It has to be noted, that this project is conducted in a purely complementary nature.
It has to be noted that LaTeX and in particular Beamer templates are complex, convoluted and delicate pieces of code.
Since we do not have any professional background in LaTeX template design, bugs, inconsistencies and errors might very well occur.

Over the course of this project, we strive to implement all Powerpoint template features, improve consistency and fix reported template errors.
However, even at this early stage, we are confident that the provided document class is able to **simple** TUHH-styled presentations. 
If you'd like to contribute, feel free to contact us, open issues, or implement features and create merge request.
We are happy for any input we can get!

# How to use it:
- Just clone this repository to you presentation directory and select the `tuhh_presentation` class in your main `.tex` file.  
- Use the `\titlepage` command to create the title page.  
- Use the `\finalpage` command to create the end page.  
- Use `\date`, `\author`, `\institute` and `\telephonenumber` for meta data.  
- You can find an example on how to use this class in the `demo_tuhh_presentation.tex` file.


# What you can expect:
- A title slide with author, date and title placement
- A default content slide, with slide number, title and date placement
- Integration of custom Poppins font for pdflatex
- Main font specification
- Use of TUHH color schemes


# What you can (currently) **not** expect:
- Section slides
- Stylized tables
- Foot notes
- Stability
- Long-term compatibility
- 100% typesetting (we are working on correct spacings, right now)

# How to contribute:
Feel free to contact the current maintainer at `leonard.fisser@tuhh.de`.  
Or use the common git approaches like issues and merge requests. 
