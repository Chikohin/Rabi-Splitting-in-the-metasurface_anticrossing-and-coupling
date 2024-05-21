e_eff = 1.6;
SSPP_order = [1,1];
px = 10e-6:0.2e-6:25e-6;
py = 10e-6;

[Freq_spp,Lattice_Const] = PureSSPP(px,py,e_eff,SSPP_order);
[Freq_spp2,Lattice_Const] = PureSSPP(px,py,e_eff,[2,0]);

plot(Lattice_Const,Freq_spp)
hold on
[omega_branch_1,omega_branch_2] = RabiSplitting(Freq_spp2,Freq_spp,1e12);
plot(Lattice_Const,omega_branch_1)
plot(Lattice_Const,omega_branch_2)
