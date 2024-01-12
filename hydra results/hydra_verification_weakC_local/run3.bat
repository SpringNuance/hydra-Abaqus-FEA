(
python gencoh.py 0.22e-3 9.7e-3 15.e-3 1000 --hydrogen > _coh-H.inp
abaqus datacheck job=H-3cohesive
abaqus python mkmap.py H-3cohesive
)