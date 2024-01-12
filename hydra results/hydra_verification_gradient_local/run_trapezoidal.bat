(
abaqus datacheck j=bend_trapezoidal
abaqus python mkjac.py bend_trapezoidal
abaqus continue user=hydra.f j=bend_trapezoidal
)