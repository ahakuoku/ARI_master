import os
import subprocess
import shutil

os.mkdir('pak/temp/')
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_none.pak none/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_none_normal.pak suburb/none/normal/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_orange_normal.pak suburb/orange/normal/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_orange_intersection.pak suburb/orange/intersection/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_white_normal.pak suburb/white/normal/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_white_intersection.pak suburb/white/intersection/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj pak256 ../../pak/temp/ARI_local_suburb_tram.pak suburb/tram/intersection/*.dat > err.txt', cwd=r"src/local")
subprocess.call('makeobj merge pak/ARI_local.pak pak/temp/*.pak > err.txt')
subprocess.call('makeobj pak256 ../../pak/ARI_expwy.pak ARI_expwy_aha.dat >> err.txt', cwd=r"src/expwy")
subprocess.call('makeobj pak128 ../../pak/ARI_option/ARI_tram-crossing_np.pak ARI_tram-crossing_95_bascule_np_KSN.dat ARI_tram-crossing_95_hanged_np_KSN.dat ARI_tram-crossing_130_bascule_np_KSN.dat ARI_tram-crossing_130_hanged_np_KSN.dat > err.txt', cwd=r"src/crossing")
subprocess.call('makeobj pak128 ../../pak/ARI_option/ARI_tram-crossing_op.pak ARI_tram-crossing_95_bascule_op_KSN.dat ARI_tram-crossing_95_hanged_op_KSN.dat ARI_tram-crossing_130_bascule_op_KSN.dat ARI_tram-crossing_130_hanged_op_KSN.dat > err.txt', cwd=r"src/crossing")
shutil.rmtree('pak/temp/')