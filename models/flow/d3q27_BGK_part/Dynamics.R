x = c(0,1,-1);
P = expand.grid(x=0:2,y=0:2,z=0:2)
U = expand.grid(x,x,x)


AddDensity( name="f[0]", dx= 0, dy= 0, dz= 0, group="f")
AddDensity( name="f[1]", dx= 1, dy= 0, dz= 0, group="f")
AddDensity( name="f[2]", dx=-1, dy= 0, dz= 0, group="f")
AddDensity( name="f[3]", dx= 0, dy= 1, dz= 0, group="f")
AddDensity( name="f[4]", dx= 0, dy=-1, dz= 0, group="f")
AddDensity( name="f[5]", dx= 0, dy= 0, dz= 1, group="f")
AddDensity( name="f[6]", dx= 0, dy= 0, dz=-1, group="f")
AddDensity( name="f[7]", dx= 1, dy= 1, dz= 0, group="f")
AddDensity( name="f[8]", dx=-1, dy= 1, dz= 0, group="f")
AddDensity( name="f[9]", dx= 1, dy=-1, dz= 0, group="f")
AddDensity( name="f[10]",dx=-1, dy=-1, dz= 0, group="f")
AddDensity( name="f[11]",dx= 1, dy= 0, dz= 1, group="f")
AddDensity( name="f[12]",dx=-1, dy= 0, dz= 1, group="f")
AddDensity( name="f[13]",dx= 1, dy= 0, dz=-1, group="f")
AddDensity( name="f[14]",dx=-1, dy= 0, dz=-1, group="f")
AddDensity( name="f[15]",dx= 0, dy= 1, dz= 1, group="f")
AddDensity( name="f[16]",dx= 0, dy=-1, dz= 1, group="f")
AddDensity( name="f[17]",dx= 0, dy= 1, dz=-1, group="f")
AddDensity( name="f[18]",dx= 0, dy=-1, dz=-1, group="f")
AddDensity( name="f[19]",dx= 1, dy= 1, dz= 1, group="f")
AddDensity( name="f[20]",dx=-1, dy= 1, dz= 1, group="f")
AddDensity( name="f[21]",dx= 1, dy=-1, dz= 1, group="f")
AddDensity( name="f[22]",dx=-1, dy=-1, dz= 1, group="f")
AddDensity( name="f[23]",dx= 1, dy= 1, dz=-1, group="f")
AddDensity( name="f[24]",dx=-1, dy= 1, dz=-1, group="f")
AddDensity( name="f[25]",dx= 1, dy=-1, dz=-1, group="f")
AddDensity( name="f[26]",dx=-1, dy=-1, dz=-1, group="f")


AddDensity( name="fx",  group="Force", parameter=TRUE)
AddDensity( name="fy",  group="Force", parameter=TRUE)
AddDensity( name="fz",  group="Force", parameter=TRUE)
AddDensity( name="sol", group="Force", parameter=TRUE)


AddQuantity(name="P",unit="Pa")
AddQuantity(name="U",unit="m/s",vector=T)

AddQuantity(name="Solid",unit="1")
AddQuantity(name="F",unit="N/m3",vector=T)

AddSetting(name="nu", default=0.16666666, comment='Viscosity')
AddSetting(name="nubuffer",default=0.01, comment='Viscosity in the buffer layer')
AddSetting(name="Velocity", default="0m/s", comment='Inlet velocity', zonal=TRUE)
AddSetting(name="Pressure", default="0Pa", comment='Inlet pressure', zonal=TRUE)
AddSetting(name="Turbulence", comment='Turbulence intensity', zonal=TRUE)
AddSetting(name="GalileanCorrection",default=1.,comment='Galilean correction term')
AddSetting(name="ForceX", default=0, comment='Force force X')
AddSetting(name="ForceY", default=0, comment='Force force Y')
AddSetting(name="ForceZ", default=0, comment='Force force Z')
AddSetting(name="Smag", default=0, comment='Smagorinsky coefficient for SGS modeling')
AddSetting(name="Omega", default=1, comment='relaxation rate for 3rd order cumulants')
AddSetting(name="omegaF", default=1, comment='relaxation rate for BGK')

AddSetting(name="GravitationX", default=0.0, comment='applied (rho)*GravitationX')
AddSetting(name="GravitationY", default=0.0, comment='applied (rho)*GravitationY')
AddSetting(name="GravitationZ", default=0.0, comment='applied (rho)*GravitationZ')

AddSetting(name="AccelX", default=0.0, comment='body acceleration X')
AddSetting(name="AccelY", default=0.0, comment='body acceleration Y')
AddSetting(name="AccelZ", default=0.0, comment='body acceleration Z')


AddGlobal(name="Flux", comment='Volume flux', unit="m3/s")
AddGlobal(name="Drag", comment='Force exerted on body in X-direction', unit="N")
AddGlobal(name="Lift", comment='Force exerted on body in Z-direction', unit="N")
AddGlobal(name="Lateral", comment='Force exerted on body in Y-direction', unit="N")

AddNodeType("WVelocityTurbulent", "BOUNDARY")
AddNodeType("NVelocity", "BOUNDARY")
AddNodeType("SVelocity", "BOUNDARY")
AddNodeType("NPressure", "BOUNDARY")
AddNodeType("SPressure", "BOUNDARY")
AddNodeType("NSymmetry", "ADDITIONALS")
AddNodeType("SSymmetry", "ADDITIONALS")
AddNodeType("Body", "BODY")
AddNodeType("IB", group="HO_BOUNDARY")

for (f in rows(DensityAll)) AddField(name=f$name,dx=0,dy=0,dz=0) # Make f accessible also in present node (not only streamed)

#Averaging values
if (Options$AVG) {
AddQuantity(name="KinE",comment="Turbulent kinetic energy")
AddQuantity(name="ReStr",comment="Reynolds stress off-diagonal component",vector=T)
AddQuantity(name="Dissipation",comment="Dissipation e")
AddQuantity(name="avgU",unit="m/s",vector=T)
AddQuantity(name="varU",vector=T)
AddQuantity(name="averageP",unit="Pa")

AddDensity(name="avgP",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUX",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUY",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUZ",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUXUY",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUXUZ",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="varUYUZ",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="avgdxu2",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="avgdyv2",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="avgdzw2",dx=0,dy=0,dz=0,average=TRUE)
AddDensity(name="avgUX",average=TRUE)
AddDensity(name="avgUY",average=TRUE)
AddDensity(name="avgUZ",average=TRUE)

AddField(name="avgUX",dx=c(-1,1),average=TRUE)
AddField(name="avgUY",dy=c(-1,1),average=TRUE)
AddField(name="avgUZ",dz=c(1,-1),average=TRUE)
}


AddStage("BaseIteration", "Run", save=Fields$group %in% c("f","Force"), load = DensityAll$group %in% c("f","Force"))
AddStage("CalcF", save=Fields$group == "Force", load = DensityAll$group %in% c("f","Force"), particle=TRUE)

AddAction("Iteration", c("BaseIteration", "CalcF"))
AddAction("Init", c("BaseInit", "CalcF"))

