import os
import subprocess
import shutil

subprocess.call('makeobj pak256 ../../pak/ARI_suburb_50.pak ARI_local_aha.dat > err.txt', cwd=r"src/local")