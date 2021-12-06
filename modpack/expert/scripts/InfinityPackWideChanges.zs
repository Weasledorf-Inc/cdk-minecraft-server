#Name: InfinityPackWideChanges.zs
#Author: Feed the Beast

print("Initializing 'InfinityPackWideChanges.zs'...");

#Ore Dictionary Removal
#BoP Flesh Block OD entry Removal to prevent exploit with MRF Meat Block crafting into 9 meat ingots
val entry = <ore:blockMeatRaw>;
entry.remove(<BiomesOPlenty:flesh>);

#Recipe Conflicts
recipes.remove(<ComputerCraft:CC-Cable:1>);
recipes.addShaped(<ComputerCraft:CC-Cable:1>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:stone>, <minecraft:redstone_block>, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

recipes.remove(<runicdungeons:item.basicBelt>);
recipes.addShaped(<runicdungeons:item.basicBelt>, [[null, <minecraft:leather>, null], [<minecraft:leather>, null, <minecraft:leather>], [<minecraft:gold_ingot>, null, <minecraft:gold_ingot>]]);

recipes.remove(<Botany:trowelIron>);
recipes.remove(<Botany:trowelGold>);
recipes.remove(<Botany:trowelDiamond>);
recipes.remove(<Botany:trowelStone>);
recipes.remove(<Botany:trowelWood>);
recipes.addShaped(<Botany:trowelGold>, [[null, null, <minecraft:gold_ingot>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelDiamond>, [[null, null, <minecraft:diamond>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelStone>, [[null, null, <ore:cobblestone>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelIron>, [[null, null, <minecraft:iron_ingot>], [null, <minecraft:stick>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelWood>, [[null, null, <minecraft:planks>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<guideapi:ItemGuideBook>, [[<minecraft:book>, <minecraft:porkchop>, null], [null, null, null], [null, null, null]]);

#Coal Coke Fix
furnace.setFuel(<ImmersiveEngineering:stoneDecoration:3>, 32000);
mods.railcraft.BlastFurnace.addFuel(<ImmersiveEngineering:material:6>);
mods.railcraft.BlastFurnace.addFuel(<ImmersiveEngineering:stoneDecoration:3>);

#Minecart Dupe Fix
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>,[[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[null, null, null]]);

#Quartz Fix
<ore:dustNetherQuartz>.addAll(<ore:dustQuartz>);
<ore:dustQuartz>.mirror(<ore:dustNetherQuartz>);

#Bamboo Thatching Recipe
val stickForCrop = <ore:stickCrop>;
<ore:stickCrop>.mirror(<ore:stickWood>);
stickForCrop.remove(<BiomesOPlenty:bamboo>);
recipes.removeShaped(<AgriCraft:cropsItem>);
recipes.addShaped(<AgriCraft:cropsItem> * 4,[[stickForCrop, stickForCrop],[stickForCrop, stickForCrop]]);

#Tinker Unstable Parts
mods.tconstruct.Casting.addTableRecipe(<TConstruct:toughRod:314>, <liquid:molten.unstableingots> * 432, <TConstruct:metalPattern:14>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:toolRod:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:1>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:pickaxeHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:2>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:shovelHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:3>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:hatchetHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:4>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:swordBlade:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:5>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:wideGuard:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:6>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:handGuard:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:7>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:crossbar:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:8>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:binding:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:9>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:frypanHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:10>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:signHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:11>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:knifeBlade:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:12>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:chiselHead:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:13>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:toughBinding:314>, <liquid:molten.unstableingots> * 432, <TConstruct:metalPattern:15>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:heavyPlate:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:16>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:broadAxeHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:17>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:scytheBlade:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:18>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:excavatorHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:19>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:largeSwordBlade:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:20>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:hammerHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:21>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:fullGuard:314>, <liquid:molten.unstableingots> * 432, <TConstruct:metalPattern:22>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:ShurikenPart:314>, <liquid:molten.unstableingots> * 72, <TConstruct:Cast>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:CrossbowLimbPart:314>, <liquid:molten.unstableingots> * 576, <TConstruct:Cast:1>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:CrossbowBodyPart:314>, <liquid:molten.unstableingots> * 720, <TConstruct:Cast:2>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:BowLimbPart:314>, <liquid:molten.unstableingots> * 216, <TConstruct:Cast:3>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:arrowhead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:25>, false, 50);

#Biodiesel<->Forestry Ethanol
mods.buildcraft.Refinery.addRecipe(<liquid:bioethanol> * 10, 880, 1, <liquid:biodiesel>*5, <liquid:biodiesel>*5);
mods.buildcraft.Refinery.addRecipe(<liquid:biodiesel> * 10, 10, 1, <liquid:bioethanol>*5, <liquid:bioethanol>*5);

#Recipe fix for Smooth blackstone -> Paved Blackstone
recipes.removeShapeless(<minecraft:stone_button>, [<MineFactoryReloaded:stone>]);
recipes.addShapeless(<minecraft:stone_button>, [<minecraft:stone>]);

#Railcraft Tin Plate Fix
val tin = <ore:ingotTin>;
mods.railcraft.Rolling.addShaped(<Railcraft:part.plate:2>, [[tin, tin, null], [tin, tin, null], [null, null, null]]);

#Fix Electronine Bee Comb Drops
mods.forestry.Centrifuge.addRecipe([<ProjRed|Core:projectred.core.part:56> % 50, <Forestry:beeswax> % 50, <Forestry:honeyDrop> % 30], <gendustry:HoneyComb:13339>, 20);



print("Initialized 'InfinityPackWideChanges.zs'");