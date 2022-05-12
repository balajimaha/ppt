# The (unofficial) TUHH LaTeX Beamer Presentation Template Project
The Hamburg University of Technology launched a new Brand Identity on 17.11.2021.  
To unify the visual representation of the TUHH, a style guide, Powerpoint templates and additional materials were designed.  
As LaTeX is still in heavy use for scientific typesetting and document creation, this project aims to translate the available Powerpoint templates to an equivalent Beamer class.  
It has to be noted, that this project is conducted in a purely complementary nature.  
Furthermore, LaTeX and in particular Beamer templates are complex, convoluted and delicate pieces of code.  
Since we do not have any professional background in LaTeX template design, bugs, inconsistencies and errors might very well occur.

Over the course of this project, we strive to implement all Powerpoint template features, improve consistency and fix reported template errors.  
However, even at this early stage, we are confident that the provided document class is able to typeset TUHH-styled presentations.   
If you'd like to contribute, feel free to contact us, open issues, or implement features and create merge request.  

**We are happy for any input we can get!**

# How to use it:
1. Clone the repository
2. Use `demo_tuhh_presentation.tex` as a starting point
3. Adapt meta-data such as `\date`, `\author`, `\institute`, `\telephonenumber`
4. Add your own slides

# What you can expect:
- A title slide with author, date and title placement
- A default content slide, with slide number, title and date placement
- Stylized TOC slide
- Design slides separating different sections
- End slide with author contact details
- Use of TUHH color schemes
- Integration of custom Poppins font
- Stylized tables
- A GER-localized version via the `german` document class option
- Branded slides with your institute logo (see [wiki](https://collaborating.tuhh.de/e-4/tuhh_latex_presentation/-/wikis/Slides-with-Institute-Logos))
- Footnotes

# What you can (currently) **not** expect:
- Long-term compatibility
- Perfect typesetting (inconsistent spacing might still occur)
- Installation using CTAN

# How to contribute:
Feel free to contact the current maintainer at `leonard.fisser@tuhh.de`.  
Or use the common git approaches like issues and merge requests. 
