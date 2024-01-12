(
abaqus datacheck j=bend_diagonal
abaqus python mkjac.py bend_diagonal
abaqus continue user=hydra.f j=bend_diagonal
)