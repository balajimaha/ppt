### Institute Logo Document Class

The following checklist should be used to add institute logos to the repository.  
Please follow the checklist and use the provided template files to get correct spacings and sizes in the logos.

Checklist:
- [ ] Added titlepage logo version to be placed next to the TUHH wordmark (Path: `.theme_imgs/x0_logo_titlepage.pdf`)
- [ ] Added content logo version to be placed in the top right corner of content slides (Path: `.theme_imgs/x0_logo_content.pdf`)
- [ ] Added document class option and template configuration
    ```
    % Institute Name (x0)
    DeclareOption{x0}{%
      \institutebranded{.theme_imgs/x0_logo_titlepage.pdf}{.theme_imgs/x0_logo_content.pdf}
    }
    ```
- [ ] Checked correct document generation
- [ ] Put the current maintainer as reviewer for this merge request
