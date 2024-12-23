import os
import subprocess
import shutil

os.mkdir('pak/temp/')
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_256.pak ARI_local_aha.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak128 ../../pak/temp/ARI_local_128.pak ARI_tram-crossing_95_bascule_np_KSN.dat ARI_tram-crossing_95_hanged_np_KSN.dat ARI_tram-crossing_130_bascule_np_KSN.dat ARI_tram-crossing_130_hanged_np_KSN.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak128 ../../pak/ARI_option/ARI_tram-crossing_op.pak ARI_tram-crossing_95_bascule_op_KSN.dat ARI_tram-crossing_95_hanged_op_KSN.dat ARI_tram-crossing_130_bascule_op_KSN.dat ARI_tram-crossing_130_hanged_op_KSN.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/ARI_expwy.pak ARI_expwy_aha.dat >> err.txt', cwd=r"src/expwy")
subprocess.call('makeobj merge pak/ARI_local.pak pak/temp/ARI_local_128.pak pak/temp/ARI_local_256.pak > err.txt')
shutil.rmtree('pak/temp/')