AddDensity(name="f[0]", dx=0, dy=0  )
AddDensity(name="f[1]", dx=1, dy=0  )
AddDensity(name="f[2]", dx=0, dy=1  )
AddDensity(name="f[3]", dx=-1,dy=0  )
AddDensity(name="f[4]", dx=0, dy=-1 )
AddDensity(name="f[5]", dx=1, dy=1  )
AddDensity(name="f[6]", dx=-1,dy=1  )
AddDensity(name="f[7]", dx=-1,dy=-1 )
AddDensity(name="f[8]", dx=1, dy=-1 )

AddQuantity( name="U",unit="m/s", vector=TRUE )
AddQuantity( name="Rho",unit="kg/m3" )

AddSetting( name="omega", comment='inverse of relaxation time')
AddSetting( name="nu", omega='1.0/(3*nu+0.5)', default=0.16666666, comment='viscosity')
AddSetting( name="Velocity",default=0, comment='inlet/outlet/init velocity', zonal=TRUE)
AddSetting( name="GravitationX",default=0, comment='body/external acceleration', zonal=TRUE)
AddSetting( name="GravitationY",default=0, comment='body/external acceleration', zonal=TRUE)
AddSetting( name="Density",default=1, comment='Density')

AddNodeType(name = "Wall", group = "BOUNDARY")

