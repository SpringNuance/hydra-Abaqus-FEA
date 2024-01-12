(
abaqus datacheck j=bend_uniform
abaqus python mkjac.py bend_uniform
abaqus continue user=hydra.f j=bend_uniform
)