#
from ase.data import pubchem
from ase.io import write
import os
import sys

filename=sys.argv[1]
os.makedirs(f'./structures', exist_ok=True)

with open(f'{filename}.txt', 'r') as rf:
    trainlist = [line.rstrip() for line in rf]

wf = open(f'train.txt', 'w')
for t in trainlist:
    conformers = pubchem.pubchem_atoms_conformer_search(name=t)
    clen = len(conformers)
    for c in range(clen):
        atoms = conformers[c]
        atoms.center(vacuum=7.5)
        write(f'./structures/POSCAR-{t}_{c}', atoms, format='vasp')
        wf.write(f'{t}_{c}\n')
wf.close()
