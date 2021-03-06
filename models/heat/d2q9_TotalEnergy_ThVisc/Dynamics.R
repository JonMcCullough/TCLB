
AddDensity( name="f[0]", dx= 0, dy= 0, group="f")
AddDensity( name="f[1]", dx= 1, dy= 0, group="f")
AddDensity( name="f[2]", dx= 0, dy= 1, group="f")
AddDensity( name="f[3]", dx=-1, dy= 0, group="f")
AddDensity( name="f[4]", dx= 0, dy=-1, group="f")
AddDensity( name="f[5]", dx= 1, dy= 1, group="f")
AddDensity( name="f[6]", dx=-1, dy= 1, group="f")
AddDensity( name="f[7]", dx=-1, dy=-1, group="f")
AddDensity( name="f[8]", dx= 1, dy=-1, group="f")

AddDensity( name="h[0]", dx= 0, dy= 0, group="h")
AddDensity( name="h[1]", dx= 1, dy= 0, group="h")
AddDensity( name="h[2]", dx= 0, dy= 1, group="h")
AddDensity( name="h[3]", dx=-1, dy= 0, group="h")
AddDensity( name="h[4]", dx= 0, dy=-1, group="h")
AddDensity( name="h[5]", dx= 1, dy= 1, group="h")
AddDensity( name="h[6]", dx=-1, dy= 1, group="h")
AddDensity( name="h[7]", dx=-1, dy=-1, group="h")
AddDensity( name="h[8]", dx= 1, dy=-1, group="h")

#Accessing adjacent nodes
AddField(name="f[0]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[1]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[2]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[3]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[4]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[5]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[6]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[7]", dx=c(1,-1), dy=c(1,-1))
AddField(name="f[8]", dx=c(1,-1), dy=c(1,-1))

#Accessing adjacent nodes
AddField(name="h[0]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[1]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[2]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[3]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[4]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[5]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[6]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[7]", dx=c(1,-1), dy=c(1,-1))
AddField(name="h[8]", dx=c(1,-1), dy=c(1,-1))

AddField('TotEnergy', stencil2d=1)
AddField('Temperature', stencil2d=1)
AddField('rhoCp',stencil2d=1)
AddField('Conductivity', stencil2d=1)
AddField('mediaNum', stencil2d=1)

AddQuantity(name="Rho",unit="kg/m3")
AddQuantity(name="T",unit="K")
AddQuantity(name="U",unit="m/s",vector=T)
AddQuantity(name="TotEnergy")

AddSetting(name="omegaF", zonal=TRUE, comment='one over F relaxation time')
#AddSetting(name="nu", default="0.16666666", comment='viscosity')

#AddSetting(name="Prandtl", comment = 'Prandtl Number')
#AddSetting(name="gamma1", default=1, comment = 'Ratio of specific heats')
AddSetting(name="omegaH", zonal=TRUE, comment='one over H relaxation time')
AddSetting(name="alpha", default=0.16666666, comment='Thermal Diffusivity')
AddSetting(name="conductivity", default=1, zonal=TRUE, comment='Thermal Conductivity')

AddSetting(name="omegaHplus", comment='one over H+ relaxation time for TRT')
AddSetting(name="omegaHminus", comment='one over H- relaxation time for TRT')
AddSetting(name="omegaFplus", comment='one over F+ relaxation time for TRT')
AddSetting(name="omegaFminus", comment='one over F- relaxation time for TRT')

AddSetting(name="ViscCoeff", default=1, comment='Thermoviscous coefficient')
AddSetting(name="BoussinesqCoeff", default=0.0, comment='Boussinesq force coefficient')

AddSetting(name='Cv', default = 1, zonal=TRUE, comment='Thermal Cv')
AddSetting(name='Cp', default = 1, comment='Thermal Cp')
AddSetting(name='RhoCp', default = 1, zonal=TRUE, comment='Thermal heat capacity')

AddSetting(name="WallVelocityX", default="0.0", zonal=TRUE, comment='WallVelocity x-direction')
AddSetting(name="WallVelocityY", default="0.0", zonal=TRUE, comment='WallVelocity y-direction')

AddSetting(name="InitVelocityX", default="0.0", comment="Initialisation x-velocity")
AddSetting(name="InitVelocityY", default="0.0", comment="Initialisation y-velocity")

AddSetting(name="InletPressure", InletDensity='1.0+InletPressure/3', default="0Pa", comment='inlet pressure')
AddSetting(name="InletDensity", default=1, comment='inlet density')

AddSetting(name="InitTemperature", default=1, zonal = TRUE, comment='initial temperature')
AddSetting(name="WallTemperatureGradient", default=0, zonal = TRUE, comment='Gradient of temperature along wall')

AddSetting(name="GravitationX", default=0.0, comment='applied (rho)*GravitationX')
AddSetting(name="GravitationY", default=0.0, comment='applied (rho)*GravitationY')

AddSetting(name="AccelX", default=0.0, comment='body acceleration X')
AddSetting(name="AccelY", default=0.0, comment='body acceleration Y')

AddSetting(name="MediaNumber", default=1, zonal=TRUE, comment='Media Number')

AddNodeType(name="NWall", group="BOUNDARY")
AddNodeType(name="EWall", group="BOUNDARY")
AddNodeType(name="WWall", group="BOUNDARY")
AddNodeType(name="SWall", group="BOUNDARY")

AddNodeType(name="Interface", group="ADDITIONALS")

