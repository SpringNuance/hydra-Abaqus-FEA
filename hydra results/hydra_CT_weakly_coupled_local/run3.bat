(
    python gencoh.py 0.00075 0.00975 0.0157 2600 --hydrogen > _coh-H.inp
	abaqus datacheck job=H-3cohesive
	abaqus mkmap.py H-3cohesive
)