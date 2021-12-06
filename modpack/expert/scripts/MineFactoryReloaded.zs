#Name: MineFactoryReloaded.zs
#Author: Feed the Beast

print("Initializing 'MineFactoryReloaded.zs'...");

#plastic sheets
recipes.remove(<MineFactoryReloaded:plastic.sheet>);
recipes.addShaped(<MineFactoryReloaded:plastic.sheet> * 2, [[<ThermalExpansion:material:513>, <ore:dustPlastic>, <ThermalExpansion:material:513>], [<ore:dustPlastic>, <EnderIO:bucketRocket_fuel>.giveBack(<minecraft:bucket>), <ore:dustPlastic>], [<ThermalExpansion:material:513>, <ore:dustPlastic>, <ThermalExpansion:material:513>]]);

#rednet energy cables
recipes.remove(<MineFactoryReloaded:cable.redstone:2>);

#Remove Lava Power
recipes.remove(<MineFactoryReloaded:machine.1:6>);

print("Initialized 'MineFactoryReloaded.zs'");