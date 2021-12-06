#Name: Mystcraft.zs
#Author: Feed the Beast

print("Initializing 'Mystcraft.zs'...");

#ink mixer (to make linking books expensive)
recipes.remove(<Mystcraft:BlockInkMixer>);
recipes.addShaped(<Mystcraft:BlockInkMixer>, [[<EnderTech:endertech.enderTankPart>, <IC2:blockMachine2>, <EnderTech:endertech.enderTankPart>], [<ExtraUtilities:nodeUpgrade:5>, <AWWayofTime:blockTeleposer>, <ExtraUtilities:nodeUpgrade:6>], [<EnderTech:endertech.enderTankPart>, <EnderIO:blockTelePad>, <EnderTech:endertech.enderTankPart>]]);

#remove book binder
recipes.remove(<Mystcraft:BlockBookBinder>);

print("Initialized 'Mystcraft.zs'");