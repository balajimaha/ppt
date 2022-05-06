### Institute Logo Document Class

The following checklist should be used to add institute logos to the repository, see the [wikipage](https://collaborating.tuhh.de/e-4/tuhh_latex_presentation/-/wikis/Slides-with-Institute-Logos) on adding logos for details.

Please follow the checklist and use the provided template files to get correct spacings and sizes in the logos.

#### Checklist
- [ ] Ask the current maintainer to promote you to `developer` via this issue or via mail.
- [ ] Added title page logo version to be placed next to the TUHH wordmark (Path: `.theme_imgs/x0_logo_titlepage.pdf`)
- [ ] Added content logo version to be placed in the top right corner of content slides (Path: `.theme_imgs/x0_logo_content.pdf`)
- [ ] Added document class option and template configuration to `tuhh_presentation.cls`
    ```latex
    % Institute Name (x0)
    \DeclareOption{institute=x0}{
      \@ifclasswith{tuhh_presentation}{german}{
      \institute{Institute name in German}
      }{
      \institute{Institute name in English}
      }
      \institutebranded{.theme_imgs/x0_logo_titlepage.pdf}{.theme_imgs/x0_logo_content.pdf}
    }
    ```
- [ ] Checked correct document generation
- [ ] Assigned this merge request to the current maintainer
