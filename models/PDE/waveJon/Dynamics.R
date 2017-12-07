AddField(name="u")
AddField(name="v")

AddQuantity(name="U")

AddSetting(name="Speed")
AddSetting(name="Viscosity")
AddSetting(name="Value", zonal=TRUE)

AddField(name="u", dx=c(-1,1), dy=c(-1,1)) 
AddField(name="v", stencil2d=1) #same as for u

AddNodeType(name="Dirichlet", group="BOUNDARY")
