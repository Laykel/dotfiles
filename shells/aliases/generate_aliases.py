#!/usr/bin/env python3

import os

"""
Parse my weird shell-agnostic aliases file and write
aliases files for bash/zsh and for fish
"""

DIR_PATH = os.path.dirname(os.path.realpath(__file__))

ALIASES_FILE = f'{DIR_PATH}/all-aliases'

FISH_OUTPUT = f'{DIR_PATH}/abbrs'
ZSH_OUTPUT = f'{DIR_PATH}/aliases'


def fish_template(abbr, command):
    return f'abbr {abbr} "{command}"\n'


def zsh_template(alias, command):
    return f'alias {alias}="{command}"\n'


# Generator that returns a list of token lists for each line
def lines(path):
    with open(path, 'r') as file:
        for line in file:
            yield line.split()


# Parse my weird shell-agnostic aliases file and write
# aliases files for bash/zsh and for fish
def parse(tokens, zsh, fish):
    if not len(tokens) >= 2 or tokens[0] == '#':
        pass

    elif tokens[0] == 'Z':
        zsh.write(zsh_template(tokens[1], " ".join(tokens[2:])))

    elif tokens[0] == 'F':
        fish.write(fish_template(tokens[1], " ".join(tokens[2:])))

    else:
        zsh.write(zsh_template(tokens[0], " ".join(tokens[1:])))
        fish.write(fish_template(tokens[0], " ".join(tokens[1:])))


with open(ZSH_OUTPUT, 'w') as zsh, open(FISH_OUTPUT, 'w') as fish:
    for tokens in lines(ALIASES_FILE):
        parse(tokens, zsh, fish)
