#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import argparse
import shutil
import os


listFiles = [
    "beamercolorthemetuhh.sty",
    "beamerfontthemetuhh.sty",
    "beamerinnerthemetuhh.sty",
    "beamerouterthemetuhh.sty",
    "beamerthemetuhh.sty",
    "tuhh_presentation.cls",
    "t1poppins.fd"
    ]

themeDir = "tuhh_theme"
templateTexName = "demo_tuhh_presentation.tex"
templateBibName = "demo_tuhh_presentation.bib"

parser = argparse.ArgumentParser(
    prog='copy_themes_files',
    description="Copy the TUHH theme files into a given folder",
    formatter_class=argparse.ArgumentDefaultsHelpFormatter)

parser.add_argument(
    'destPath', 
    help='path of the folder where to copy the files (can be relative)')

parser.add_argument(
    '--texSlidesName', default=None,
    help='if provided, also copy the tuhh template into a file with given name')

parser.add_argument(
    '--bibFileName', default='references.bib',
    help='if texSlidesName is given, copy the bibtex template to the following name')

parser.add_argument(
    '--includeTemplate', type=bool, default=False, const=True, nargs='?',
    help='if set, copy template .tex, .bib files and name them after the dest directory')

args = parser.parse_args()

dest = args.destPath
if not os.path.isdir(dest):
    raise ValueError(f'{dest} is not a folder, please create it before')

for file in listFiles:
    shutil.copy(file, os.path.join(dest, file))
themeDest = os.path.join(dest, themeDir)
if os.path.isdir(themeDest):
    shutil.rmtree(themeDest)
shutil.copytree(themeDir, themeDest)

if args.includeTemplate:
    destFolder = os.path.basename(os.path.normpath(args.destPath))
    texSlidesName = f'{destFolder}.tex'
    bibFileName = f'{destFolder}.bib'

    with open(templateTexName, 'r') as f:
        tex = f.read()
    tex = tex.replace(templateBibName, bibFileName)

    if os.path.isfile(os.path.join(dest, texSlidesName)):
        print('.tex file already exists') 
    else:
        with open(os.path.join(dest, texSlidesName), 'w') as f:
            f.write(tex)

    if os.path.isfile(os.path.join(dest, bibFileName)):
        print('bib file already exists')
    else:
        shutil.copy(templateBibName, os.path.join(dest, bibFileName))

else:
    if args.texSlidesName is not None:
        with open(templateTexName, 'r') as f:
            tex = f.read()
        tex = tex.replace(templateBibName, args.bibFileName)
        with open(os.path.join(dest, args.texSlidesName), 'w') as f:
            f.write(tex)
        shutil.copy(templateBibName, os.path.join(dest, args.bibFileName))


    
    

