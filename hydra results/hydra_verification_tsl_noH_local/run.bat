(
python gencoh.py 0.22e-3 9.7e-3 15e-3 1000 > _coh.inp
abaqus analysis job=noH
abaqus python saveh.py noH
)