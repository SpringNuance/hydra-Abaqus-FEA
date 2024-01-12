(
python gencoh.py 0.00075 0.00975 0.0157 2600 > _coh.inp
abaqus analysis job=noH
abaqus python saveh.py noH
)