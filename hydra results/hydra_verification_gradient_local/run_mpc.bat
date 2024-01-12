(
abaqus datacheck j=bend_mpc
abaqus python mkjac.py bend_mpc
abaqus continue user=hydra.f j=bend_mpc
)