#Name: PamsHarvestCraft.zs
#Author: Feed the Beast

print("Initializing 'PamsHarvestCraft.zs'...");

recipes.remove(<harvestcraft:presser>);
recipes.addShaped(<harvestcraft:presser>, [[<harvestcraft:asparagusseedItem>, <ore:ingotIron>, <harvestcraft:celeryseedItem>], [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>], [<harvestcraft:oatsseedItem>, <ore:ingotIron>, <harvestcraft:cabbageseedItem>]]);

recipes.remove(<harvestcraft:market>);
recipes.addShaped(<harvestcraft:market>, [[<harvestcraft:blueberryItem>, <ore:gemEmerald>, <harvestcraft:raspberryItem>], [<ore:gemEmerald>, <ExtraUtilities:watering_can:1>, <ore:gemEmerald>], [<harvestcraft:blackberryItem>, <ore:gemEmerald>, <harvestcraft:candleberryItem>]]);

#Corn / Rye Fix
recipes.remove(<ExtraTrees:misc:11>);
recipes.remove(<ExtraTrees:misc:9>);
recipes.addShaped(<ExtraTrees:misc:11>, [[null, <ExtraTrees:misc:8>, null], [null, null, <ExtraTrees:misc:8>], [null, <ExtraTrees:misc:8>, null]]);
recipes.addShaped(<ExtraTrees:misc:9>, [[null, <ExtraTrees:misc:8>, null], [<ExtraTrees:misc:8>, null, null], [null, <ExtraTrees:misc:8>, null]]);

#wheat seeds recipe:
recipes.addShapeless(<minecraft:wheat_seeds> * 2, [<minecraft:wheat>, <minecraft:wheat>]);


print("Initialized 'PamsHarvestCraft.zs'");