#!/usr/bin/env python3

ALIASES_FILE = 'aliases_list'

FISH_OUTPUT = 'abbrs'
ZSH_OUTPUT = 'aliases'

# Generator that returns a list of words for each line
def lines():
    with open(ALIASES_FILE, 'r') as file:
        for line in file:
            yield line.split()


def fish_template(abbr, command):
    return f'abbr {abbr} "{command}"'


def zsh_template(alias, command):
    return f'alias {alias}="{command}"'


# TODO alias type as argument?
def go_through():
    # TODO Write to output files
    for tokens in lines():
        if not tokens or tokens[0] == '#':
            pass
            # TODO Maybe write the line as is
        else:
            print(zsh_template(tokens[0], " ".join(tokens[1:])))
            # print(fish_template(tokens[0], " ".join(tokens[1:])))

go_through()
