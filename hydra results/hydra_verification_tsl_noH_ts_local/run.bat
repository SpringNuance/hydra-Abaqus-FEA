(
python gencoh.py 0.22e-3 9.7e-3 15e-3 1000 --true-stress > _coh-ts.inp
abaqus datacheck j=noH-ts
abaqus python mkmap.py noH-ts
abaqus continue j=noH-ts user=ts.f
abaqus python saveh.py noH-ts
)