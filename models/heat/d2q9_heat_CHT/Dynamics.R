
AddDensity( name="f[0]", dx= 0, dy= 0, group="f")
AddDensity( name="f[1]", dx= 1, dy= 0, group="f")
AddDensity( name="f[2]", dx= 0, dy= 1, group="f")
AddDensity( name="f[3]", dx=-1, dy= 0, group="f")
AddDensity( name="f[4]", dx= 0, dy=-1, group="f")
AddDensity( name="f[5]", dx= 1, dy= 1, group="f")
AddDensity( name="f[6]", dx=-1, dy= 1, group="f")
AddDensity( name="f[7]", dx=-1, dy=-1, group="f")
AddDensity( name="f[8]", dx= 1, dy=-1, group="f")

AddQuantity(name="Rho",unit="kg/m3")
AddQuantity(name="T",unit="K")
AddQuantity(name="U",unit="m/s",vector=T)
AddQuantity(name="Cp")

AddDensity( name="T[0]", dx= 0, dy= 0, group="T")
AddDensity( name="T[1]", dx= 1, dy= 0, group="T")
AddDensity( name="T[2]", dx= 0, dy= 1, group="T")
AddDensity( name="T[3]", dx=-1, dy= 0, group="T")
AddDensity( name="T[4]", dx= 0, dy=-1, group="T")
AddDensity( name="T[5]", dx= 1, dy= 1, group="T")
AddDensity( name="T[6]", dx=-1, dy= 1, group="T")
AddDensity( name="T[7]", dx=-1, dy=-1, group="T")
AddDensity( name="T[8]", dx= 1, dy=-1, group="T")

#Accessing adjacent nodes
AddField(name="f[0]", dy=c(1,-1))
AddField(name="f[1]", dy=c(1,-1))
AddField(name="f[2]", dy=c(1,-1))
AddField(name="f[3]", dy=c(1,-1))
AddField(name="f[4]", dy=c(1,-1))
AddField(name="f[5]", dy=c(1,-1))
AddField(name="f[6]", dy=c(1,-1))
AddField(name="f[7]", dy=c(1,-1))
AddField(name="f[8]", dy=c(1,-1))

#Accessing adjacent nodes
AddField(name="T[0]", dy=c(1,-1))
AddField(name="T[1]", dy=c(1,-1))
AddField(name="T[2]", dy=c(1,-1))
AddField(name="T[3]", dy=c(1,-1))
AddField(name="T[4]", dy=c(1,-1))
AddField(name="T[5]", dy=c(1,-1))
AddField(name="T[6]", dy=c(1,-1))
AddField(name="T[7]", dy=c(1,-1))
AddField(name="T[8]", dy=c(1,-1))

AddField('rhoCp',stencil2d=1)
AddField('fluidK', stencil2d=1)
AddField('mediaNum', stencil2d=1)
AddField('Temperature', stencil2d=1)

AddSetting(name="omega", comment='one over relaxation time')
AddSetting(name="nu", omega='1.0/(3*nu + 0.5)', default=0.16666666, comment='viscosity')

AddSetting(name="InletVelocity", default="0m/s", comment='inlet velocity')
AddSetting(name="WallVelocityX", default="0.0", zonal=TRUE, comment='WallVelocty x-direction')
AddSetting(name="WallVelocityY", default="0.0", zonal=TRUE, comment='WallVelocty y-direction')

AddSetting(name="InletPressure", InletDensity='1.0+InletPressure/3', default="0Pa", comment='inlet pressure')
AddSetting(name="InletDensity", default=1, comment='inlet density')

AddSetting(name="InletTemperature", default=1, comment='inlet temperature')
AddSetting(name="InitTemperature", default=1, zonal = TRUE, comment='initial temperature')
AddSetting(name="FluidAlfa", default=0.16666666, zonal = TRUE, comment='Thermal Diffusivity')
AddSetting(name="Fluidk", default=1, zonal = TRUE, comment='Thermal Conductivity')
AddSetting(name='FluidRhoCp', default = 6, zonal=TRUE, comment='Thermal heat capacity')

AddSetting(name="MediaNumber", default=1, zonal=TRUE, comment='Media Number')

AddSetting(name="GravitationX", default=0.0, comment='applied (rho)*GravitationX')
AddSetting(name="GravitationY", default=0.0, comment='applied (rho)*GravitationY')

AddGlobal(name="OutFlux");

AddNodeType("Heater","ADDITIONALS")
AddNodeType(name="NWall", group="BOUNDARY")
AddNodeType(name="SWall", group="BOUNDARY")
AddNodeType(name="Interface", group="ADDITIONALS")

