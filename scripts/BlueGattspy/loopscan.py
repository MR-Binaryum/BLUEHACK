
import subprocess

from subprocess import *
from time import *


def run_script():
    while True:
        subprocess.run("python3 ../scanners/BLE.py", shell=True )

run_script()