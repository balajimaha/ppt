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

if args.texSlidesName is not None:
    with open(templateTexName, 'r') as f:
        tex = f.read()
    tex = tex.replace(templateBibName, args.bibFileName)
    with open(os.path.join(dest, args.texSlidesName), 'w') as f:
        f.write(tex)
    shutil.copy(templateBibName, os.path.join(dest, args.bibFileName))
    
    

