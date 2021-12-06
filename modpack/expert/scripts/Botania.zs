#Name: Botania.zs
#Author: Feed the Beast

print("Initializing 'Botania.zs'...");

# - Manasteel
mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>);
mods.botania.ManaInfusion.removeRecipe(<Botania:storage>);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, <ore:ingotSteel>, 850);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource:17>, <ore:nuggetSteel>, 82);
mods.botania.ManaInfusion.addInfusion(<Botania:storage>, <ore:blockSteel>, 6750);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, <ore:ingotIron>, 3000);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource:17>, <ore:nuggetIron>, 333);
mods.botania.ManaInfusion.addInfusion(<Botania:storage>, <ore:blockIron>, 27000);

# - General
# -- Lexica Botania
recipes.remove(<Botania:lexicon>);
recipes.addShaped(<Botania:lexicon>, [[<ore:nuggetGold>, <ore:flowerMystical>, <ore:nuggetGold>], [<ore:flowerMystical>, <minecraft:book>, <ore:flowerMystical>], [<ore:nuggetGold>, <ore:flowerMystical>, <ore:nuggetGold>]]);

# -- Petal Apothocary
recipes.remove(<Botania:altar>);
recipes.addShaped(<Botania:altar>, [[<ore:slabCobblestone>, <Botania:petal:*>, <ore:slabCobblestone>], [null, <minecraft:cauldron>], [<ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>]]);

# -- Glimmering Livingwood
recipes.remove(<Botania:livingwood:5>);
recipes.addShaped(<Botania:livingwood:5>, [[<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>], [<ore:dustGlowstone>, <Botania:livingwood>, <ore:dustGlowstone>], [<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>]]);

# -- Elven Gateway Core
recipes.remove(<Botania:alfheimPortal>);
recipes.addShaped(<Botania:alfheimPortal>, [[<ore:livingwood>, <Thaumcraft:ItemResource:15>, <ore:livingwood>], [<witchery:ingredient:67>, <ore:ingotTerrasteel>, <witchery:ingredient:43>], [<ore:livingwood>, <AWWayofTime:magicianBloodOrb>, <ore:livingwood>]]);

# -- Mana Lenses
recipes.remove(<Botania:lens>);
recipes.addShaped(<Botania:lens>, [[<ore:nuggetManasteel>, <ore:ingotManasteel>, <ore:nuggetManasteel>], [<ore:ingotManasteel>, <witchery:ingredient:92>, <ore:ingotManasteel>], [<ore:nuggetManasteel>, <ore:ingotManasteel>, <ore:nuggetManasteel>]]);
recipes.remove(<Botania:lens:10>);
recipes.addShaped(<Botania:lens:10>, [[<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>], [<ore:ingotGold>, <Botania:lens>, <ore:ingotGold>], [<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>]]);

# -- Redstring
recipes.remove(<Botania:manaResource:12>);
recipes.addShapeless(<Botania:manaResource:12>, [<ore:manaString>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>, <ore:redstoneRoot>, <witchery:ingredient:40>, <Thaumcraft:ItemZombieBrain>]);

# - Spark Augments
recipes.remove(<Botania:sparkUpgrade:*>);
recipes.addShaped(<Botania:sparkUpgrade>, [[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeWaterB>]]);
recipes.addShaped(<Botania:sparkUpgrade:1>, [[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeFireB>]]);
recipes.addShaped(<Botania:sparkUpgrade:2>, [[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeEarthB>]]);
recipes.addShaped(<Botania:sparkUpgrade:3>, [[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeAirB>]]);

# -- Pylons
recipes.remove(<Botania:pylon>);
recipes.addShaped(<Botania:pylon>, [[<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>], [<ore:ingotManasteel>, <ore:manaDiamond>, <ore:ingotManasteel>], [<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>]]);
recipes.remove(<Botania:pylon:1>);
recipes.addShaped(<Botania:pylon:1>, [[<ore:nuggetManasteel>, <witchery:ingredient:67>, <ore:nuggetManasteel>], [<ore:ingotTerrasteel>, <Botania:pylon>, <ore:ingotTerrasteel>], [<ore:nuggetManasteel>, <ore:pearlEnderEye>, <ore:nuggetManasteel>]]);
recipes.remove(<Botania:pylon:2>);
mods.thaumcraft.Infusion.addRecipe("RESEARCH", <Botania:pylon:1>, [<Botania:manaResource:9>, <Botania:manaResource:7>, <AWWayofTime:bloodMagicBaseItems:27>, <Botania:manaResource:7>, <Botania:manaResource:8>, <Botania:manaResource:7>, <AWWayofTime:bloodMagicBaseItems:27>, <Botania:manaResource:7>], "praecantatio 32, fabrico 32, metallum 32, motus 32", <Botania:pylon:2>, 4);

# -- Catalysts
recipes.remove(<Botania:alchemyCatalyst>);
recipes.addShaped(<Botania:alchemyCatalyst>, [[<ore:livingrock>, <witchery:chalkheart>, <ore:livingrock>], [<AWWayofTime:blockWritingTable>, <Thaumcraft:ItemResource:14>, <AWWayofTime:blockWritingTable>], [<ore:livingrock>, <ore:blockBlaze>, <ore:livingrock>]]);
recipes.remove(<Botania:conjurationCatalyst>);
recipes.addShaped(<Botania:conjurationCatalyst>, [[<ore:livingrock>, <witchery:ingredient:130>, <ore:livingrock>], [<Botania:pylon:1>, <Botania:alchemyCatalyst>, <Botania:pylon:1>], [<ore:livingrock>, <witchery:ingredient:113>, <ore:livingrock>]]);

# - Runes
# -- Tier 1
mods.botania.RuneAltar.removeRecipe(<Botania:rune>);
mods.botania.RuneAltar.addRecipe(<Botania:rune>*3, [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:dye:15>, <ore:cropSugarcane>, <minecraft:fishing_rod>, <ore:shardWater>], 8500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:1>*3, [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:nether_brick>, <ore:blockBlaze>, <minecraft:nether_wart>, <ore:shardFire>], 8500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:2>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:2>*3, [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:stone>, <ore:blockCoal>, <ore:listAllmushroom>, <ore:shardEarth>], 8500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:3>*3, [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:carpet>, <minecraft:feather>, <minecraft:string>, <ore:shardAir>], 8500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:8>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:8>, [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:manaDiamond>, <ore:manaPearl>, <Botania:quartz:1>, <Thaumcraft:ItemShard:6>], 8500);

# -- Tier 2
mods.botania.RuneAltar.removeRecipe(<Botania:rune:4>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:4>, [<ore:runeWaterB>, <ore:runeFireB>, <witchery:witchsapling>, <witchery:witchsapling:1>, <witchery:witchsapling:2>, <minecraft:wheat>, <AWWayofTime:imbuedSlate>], 4000);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:5>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:5>, [<ore:runeEarthB>, <ore:runeAirB>, <ore:sand>, <ore:sand>, <ore:slimeball>, <ore:cropMelon>, <AWWayofTime:imbuedSlate>], 4000);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:6>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:6>, [<ore:runeFireB>, <ore:runeAirB>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>, <AWWayofTime:imbuedSlate>], 4000);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:7>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:7>, [<ore:runeWaterB>, <ore:runeEarthB>, <ore:blockSnow>, <ore:blockSnow>, <ore:blockWool>, <minecraft:cake>, <AWWayofTime:imbuedSlate>], 4000);

# -- Tier 3
mods.botania.RuneAltar.removeRecipe(<Botania:rune:9>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:9>*2, [<ore:runeAirB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:10>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:10>*2, [<ore:runeFireB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:11>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:11>*2, [<ore:runeWaterB>, <ore:runeSpringB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:12>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:12>*2, [<ore:runeAirB>, <ore:runeAutumnB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:13>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:13>*2, [<ore:runeEarthB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:14>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:14>*2, [<ore:runeWaterB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:15>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:15>*2, [<ore:runeFireB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);

# - Equiptment
# -- Manaweave Armor
recipes.remove(<Botania:manaweaveHelm>);
recipes.addShaped(<Botania:manaweaveHelm>, [[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_helmet>, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveChest>);
recipes.addShaped(<Botania:manaweaveChest>, [[<ore:clothManaweave>, <minecraft:leather_chestplate>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveLegs>);
recipes.addShaped(<Botania:manaweaveLegs>, [[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_leggings>, <ore:clothManaweave>], [<ore:clothManaweave>, null, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveBoots>);
recipes.addShaped(<Botania:manaweaveBoots>, [[<ore:clothManaweave>, null, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_boots>, <ore:clothManaweave>]]);

# -- Manasteel Armor
recipes.remove(<Botania:manasteelHelm>);
recipes.addShaped(<Botania:manasteelHelm>, [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveHelm>, <ore:ingotManasteel>]]);
recipes.remove(<Botania:manasteelChest>);
recipes.addShaped(<Botania:manasteelChest>, [[<ore:ingotManasteel>, <Botania:manaweaveChest>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]]);
recipes.remove(<Botania:manasteelLegs>);
recipes.addShaped(<Botania:manasteelLegs>, [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveLegs>, <ore:ingotManasteel>], [<ore:ingotManasteel>, null, <ore:ingotManasteel>]]);
recipes.remove(<Botania:manasteelBoots>);
recipes.addShaped(<Botania:manasteelBoots>, [[<ore:ingotManasteel>, null, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveBoots>, <ore:ingotManasteel>]]);

# -- Mana Tablet
recipes.remove(<Botania:manaTablet:1000>);
mods.botania.RuneAltar.addRecipe(<Botania:manaTablet>.withTag({mana: 500000}), [<Thaumcraft:blockJar>, <AWWayofTime:reinforcedSlate>, <ore:runeAirB>, <ore:runeEarthB>, <ore:runeManaB>, <ore:runeFireB>, <ore:runeWaterB>, <AWWayofTime:reinforcedSlate>], 500000);

# -- Baubles
recipes.remove(<Botania:travelBelt>);
recipes.addShaped(<Botania:travelBelt>, [[<ore:runeEarthB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, <Thaumcraft:BootsTraveller>, <witchery:ingredient:72>], [<ore:ingotManasteel>, <witchery:ingredient:72>, <ore:runeAirB>]]);
recipes.remove(<Botania:tinyPlanet>);
recipes.addShaped(<Botania:tinyPlanet>, [[<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>], [<Thaumcraft:blockCosmeticSolid:6>, <ore:manaPearl>, <Thaumcraft:blockCosmeticSolid:6>], [<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>]]);
recipes.remove(<Botania:icePendant>);
recipes.addShaped(<Botania:icePendant>, [[<ore:runeWinterB>, <ore:manaString>], [<ore:manaString>, null, <ore:manaString>], [<ore:ingotManasteel>, <ore:manaString>, <ore:runeWaterB>]]);
recipes.remove(<Botania:knockbackBelt>);
recipes.addShaped(<Botania:knockbackBelt>, [[<ore:runeFireB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [<ore:ingotManasteel>, <witchery:ingredient:72>, <ore:runeEarthB>]]);

# - Miscellaneous
# -- Creative Manapool - Yes! It's possible
mods.thaumcraft.Infusion.addRecipe("RESEARCH", <ThermalExpansion:Tank>, [<Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>, <AWWayofTime:blockCrystal>, <AWWayofTime:blockCrystal>, <AWWayofTime:blockCrystal>, <AWWayofTime:blockCrystal>, <witchery:ingredient:130>, <witchery:ingredient:130>, <witchery:ingredient:130>, <witchery:ingredient:130>, <Botania:manaResource:14>, <Botania:manaResource:14>, <Botania:manaResource:14>, <Botania:manaResource:14>, <AWWayofTime:blankSlate>, <AWWayofTime:reinforcedSlate>, <AWWayofTime:imbuedSlate>, <AWWayofTime:demonicSlate>, <AWWayofTime:bloodMagicBaseItems:27>, <Botania:rune>, <Botania:rune:1>, <Botania:rune:2>, <Botania:rune:3>, <Botania:rune:4>, <Botania:rune:5>, <Botania:rune:6>, <Botania:rune:7>, <Botania:rune:8>, <Botania:rune:9>, <Botania:rune:10>, <Botania:rune:11>, <Botania:rune:12>, <Botania:rune:13>, <Botania:rune:14>, <Botania:rune:15>, <Thaumcraft:WandCasting:100>.withTag({cap: "ICHOR", rod: "ICHORCLOTH"})], "aer 512, terra 512, ignis 512, aqua 512, ordo 512, perditio 512", <Botania:pool:1>, 10);

# -- Greatwood/Silverwood Planks
mods.botania.ManaInfusion.addInfusion(<Thaumcraft:blockWoodenDevice:6>*2, <Thaumcraft:blockMagicalLog>, 1000);
mods.botania.ManaInfusion.addInfusion(<Thaumcraft:blockWoodenDevice:7>*2, <Thaumcraft:blockMagicalLog:1>, 1000);
mods.botania.ElvenTrade.addRecipe(<Thaumcraft:blockWoodenDevice:6>*6, [<Thaumcraft:blockMagicalLog>]);
mods.botania.ElvenTrade.addRecipe(<Thaumcraft:blockWoodenDevice:7>*6, [<Thaumcraft:blockMagicalLog:1>]);

# - Unbalanced Items Removed
# -- Loonium
mods.botania.Apothecary.removeRecipe(<Botania:specialFlower>.withTag({type: "loonium"}));

# -- Mana Fluxfield
recipes.remove(<Botania:rfGenerator>);

##########################################################################################
## --------------------------------------------------------------- ## Script Line Break ##
##########################################################################################

# - Lexica Botania
# -- Entry Removals
mods.botania.Lexicon.removeEntry("botania.entry.rfGenerator");
mods.botania.Lexicon.removeEntry("botania.entry.loonium");

# -- Lexica Botania
mods.botania.Lexicon.removePage("botania.entry.lexicon", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.lexicon1", "botania.entry.lexicon", 2, [<Botania:lexicon>], [[[<ore:nuggetGold>, <ore:flowerMystical>, <ore:nuggetGold>], [<ore:flowerMystical>, <minecraft:book>, <ore:flowerMystical>], [<ore:nuggetGold>, <ore:flowerMystical>, <ore:nuggetGold>]]]);

# -- Petal Apothocary
mods.botania.Lexicon.removePage("botania.entry.apothecary", 6);
mods.botania.Lexicon.addCraftingPage("botania.page.apothecary1", "botania.entry.apothecary", 5, [<Botania:altar>], [[[<ore:slabCobblestone>, <ore:petalMystical>, <ore:slabCobblestone>], [null, <minecraft:cauldron>], [<ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>]]]);

# -- Manasteel
mods.botania.Lexicon.removePage("botania.entry.pool", 6);
mods.botania.Lexicon.addInfusionPage("botania.page.pool3", "botania.entry.pool", 6, [<Botania:manaResource>, <Botania:manaResource:17>, <Botania:storage>], [<ore:ingotSteel>, <ore:nuggetSteel>, <ore:blockSteel>], [850, 82, 6750]);
mods.botania.Lexicon.addInfusionPage("botania.page.pool3", "botania.entry.pool", 6, [<Botania:manaResource>, <Botania:manaResource:17>, <Botania:storage>], [<ore:ingotIron>, <ore:nuggetIron>, <ore:blockIron>], [3000, 333, 27000]);
mods.botania.Lexicon.removePage("botania.entry.pool", 13);

# -- Glimmering Living Wood
mods.botania.Lexicon.removePage("botania.entry.decorativeBlocks", 9);
mods.botania.Lexicon.addCraftingPage("botania.page.decorativeBlocks9", "botania.entry.decorativeBlocks", 9, [<Botania:livingwood:5>], [[[<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>], [<ore:dustGlowstone>, <ore:livingwood>, <ore:dustGlowstone>], [<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>]]]);

# -- Alfheim Portal
mods.botania.Lexicon.removePage("botania.entry.aIntro", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.aIntro2", "botania.entry.aIntro", 2, [<Botania:alfheimPortal>], [[[<ore:livingwood>, <Thaumcraft:ItemResource:15>, <ore:livingwood>], [<witchery:ingredient:67>, <ore:ingotTerrasteel>, <witchery:ingredient:43>], [<ore:livingwood>, <AWWayofTime:magicianBloodOrb>, <ore:livingwood>]]]);

# -- Lens
mods.botania.Lexicon.removePage("botania.entry.lens", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.lens1", "botania.entry.lens", 3, [<Botania:lens>], [[[<ore:nuggetManasteel>, <ore:ingotManasteel>, <ore:nuggetManasteel>], [<ore:ingotManasteel>, <witchery:ingredient:92>, <ore:ingotManasteel>], [<ore:nuggetManasteel>, <ore:ingotManasteel>, <ore:nuggetManasteel>]]]);
mods.botania.Lexicon.removePage("botania.entry.lens", 23);
mods.botania.Lexicon.addCraftingPage("botania.page.lens25", "botania.entry.lens", 23, [<Botania:lens:10>], [[[<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>], [<ore:ingotGold>, <Botania:lens>, <ore:ingotGold>], [<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>]]]);

# -- Redstring
mods.botania.Lexicon.removePage("botania.entry.redString", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.redString2", "botania.entry.redString", 2, [<Botania:manaResource:12>], [[[<ore:manaString>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>], [<ore:redstoneRoot>, <witchery:ingredient:40>, <Thaumcraft:ItemZombieBrain>], [null, null, null]]]);

# -- Spark Augments
mods.botania.Lexicon.removePage("botania.entry.sparkUpgrades", 5);
mods.botania.Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade>], [[[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeWaterB>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:2>], [[[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeEarthB>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:1>], [[[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeFireB>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:3>], [[[null, <ore:elvenPixieDust>], [<ore:ingotManasteel>, <AWWayofTime:imbuedSlate>, <ore:ingotManasteel>], [null, <ore:runeAirB>]]]);

# -- Pylons
mods.botania.Lexicon.removePage("botania.entry.pylon", 1);
mods.botania.Lexicon.removePage("botania.entry.aIntro", 3);
mods.botania.Lexicon.removePage("botania.entry.gaiaRitual", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.pylon1", "botania.entry.pylon", 1, [<Botania:pylon>], [[[<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>], [<ore:ingotManasteel>, <ore:manaDiamond>, <ore:ingotManasteel>], [<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.aIntro3", "botania.entry.aIntro", 3, [<Botania:pylon:1>], [[[<ore:nuggetManasteel>, <witchery:ingredient:67>, <ore:nuggetManasteel>], [<ore:ingotTerrasteel>, <Botania:pylon>, <ore:ingotTerrasteel>], [<ore:nuggetManasteel>, <ore:pearlEnderEye>, <ore:nuggetManasteel>]]]);
mods.botania.Lexicon.addTextPage("botania.page.gaiaRitual.alt", "botania.entry.gaiaRitual", 1);
game.setLocalization("en_US", "botania.page.gaiaRitual.alt", "Crafting &1Gaia Pylons&0 is a task only for a great Thaumaturge to tackle in one's infusion altar. Acquiring the recipe for such a task requires the help of a magical interface... known as NEI (Not Enough Items).");

# -- Catalysts
mods.botania.Lexicon.removePage("botania.entry.manaAlchemy", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.manaAlchemy1", "botania.entry.manaAlchemy", 1, [<Botania:alchemyCatalyst>], [[[<ore:livingrock>, <witchery:chalkheart>, <ore:livingrock>], [<AWWayofTime:blockWritingTable>, <Thaumcraft:ItemResource:14>, <AWWayofTime:blockWritingTable>], [<ore:livingrock>, <ore:blockBlaze>, <ore:livingrock>]]]);
mods.botania.Lexicon.removePage("botania.entry.manaConjuration", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.manaConjuration1", "botania.entry.manaConjuration", 1, [<Botania:conjurationCatalyst>], [[[<ore:livingrock>, <witchery:ingredient:130>, <ore:livingrock>], [<Botania:pylon:1>, <Botania:alchemyCatalyst>, <Botania:pylon:1>], [<ore:livingrock>, <Botania:storage:1>, <ore:livingrock>]]]);

# -- Runes
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar4", "botania.entry.runeAltar", 7, [<Botania:rune>*3], [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:dye:15>, <ore:cropSugarcane>, <minecraft:fishing_rod>, <ore:shardWater>]], [8500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar5", "botania.entry.runeAltar", 8, [<Botania:rune:2>*3], [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:stone>, <ore:blockCoal>, <ore:listAllmushroom>, <ore:shardEarth>]], [8500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar6", "botania.entry.runeAltar", 9, [<Botania:rune:3>*3], [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:carpet>, <minecraft:feather>, <minecraft:string>, <ore:shardAir>]], [8500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar7", "botania.entry.runeAltar", 10, [<Botania:rune:1>*3], [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <minecraft:nether_brick>, <ore:blockBlaze>, <minecraft:nether_wart>, <ore:shardFire>]], [8500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar8", "botania.entry.runeAltar", 11, [<Botania:rune:8>], [[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:manaDiamond>, <ore:manaPearl>, <Botania:quartz:1>, <Thaumcraft:ItemShard:6>]], [8500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar9", "botania.entry.runeAltar", 12, [<Botania:rune:4>], [[<ore:runeWaterB>, <ore:runeFireB>, <witchery:witchsapling>, <witchery:witchsapling:1>, <witchery:witchsapling:2>, <minecraft:wheat>, <AWWayofTime:imbuedSlate>]], [4000]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar10", "botania.entry.runeAltar", 13, [<Botania:rune:5>], [[<ore:runeEarthB>, <ore:runeAirB>, <ore:sand>, <ore:sand>, <ore:slimeball>, <ore:cropMelon>, <AWWayofTime:imbuedSlate>]], [4000]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar11", "botania.entry.runeAltar", 14, [<Botania:rune:6>], [[<ore:runeFireB>, <ore:runeAirB>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>, <AWWayofTime:imbuedSlate>]], [4000]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar12", "botania.entry.runeAltar", 15, [<Botania:rune:7>], [[<ore:runeWaterB>, <ore:runeEarthB>, <ore:blockSnow>, <ore:blockSnow>, <ore:blockWool>, <minecraft:cake>, <AWWayofTime:imbuedSlate>]], [4000]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar13", "botania.entry.runeAltar", 16, [<Botania:rune:9>*2], [[<ore:runeAirB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar14", "botania.entry.runeAltar", 17, [<Botania:rune:10>*2], [[<ore:runeFireB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar15", "botania.entry.runeAltar", 18, [<Botania:rune:11>*2], [[<ore:runeWaterB>, <ore:runeSpringB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar16", "botania.entry.runeAltar", 19, [<Botania:rune:12>*2], [[<ore:runeAirB>, <ore:runeAutumnB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar17", "botania.entry.runeAltar", 20, [<Botania:rune:13>*2], [[<ore:runeEarthB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar18", "botania.entry.runeAltar", 21, [<Botania:rune:14>*2], [[<ore:runeWaterB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar19", "botania.entry.runeAltar", 22, [<Botania:rune:15>*2], [[<ore:runeFireB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);

# -- Equiptment
# --- Manaweave Armour
mods.botania.Lexicon.removePage("botania.entry.manaweave", 3);
mods.botania.Lexicon.removePage("botania.entry.manaweave", 3);
mods.botania.Lexicon.removePage("botania.entry.manaweave", 3);
mods.botania.Lexicon.removePage("botania.entry.manaweave", 3);
mods.botania.Lexicon.addCraftingPage("botania.page.manaweave3", "botania.entry.manaweave", 3, [<Botania:manaweaveHelm>], [[[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_helmet>, <ore:clothManaweave>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaweave4", "botania.entry.manaweave", 4, [<Botania:manaweaveChest>], [[[<ore:clothManaweave>, <minecraft:leather_chestplate>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaweave5", "botania.entry.manaweave", 5, [<Botania:manaweaveLegs>], [[[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_leggings>, <ore:clothManaweave>], [<ore:clothManaweave>, null, <ore:clothManaweave>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaweave6", "botania.entry.manaweave", 6, [<Botania:manaweaveBoots>], [[[<ore:clothManaweave>, null, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_boots>, <ore:clothManaweave>]]]);

# --- Manasteel Armour
mods.botania.Lexicon.removePage("botania.entry.manaGear", 7);
mods.botania.Lexicon.removePage("botania.entry.manaGear", 7);
mods.botania.Lexicon.removePage("botania.entry.manaGear", 7);
mods.botania.Lexicon.removePage("botania.entry.manaGear", 7);
mods.botania.Lexicon.addCraftingPage("botania.page.manaGear6", "botania.entry.manaGear", 2, [<Botania:manasteelHelm>], [[[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveHelm>, <ore:ingotManasteel>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaGear7", "botania.entry.manaGear", 3, [<Botania:manasteelChest>], [[[<ore:ingotManasteel>, <Botania:manaweaveChest>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaGear8", "botania.entry.manaGear", 4, [<Botania:manasteelLegs>], [[[<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveLegs>, <ore:ingotManasteel>], [<ore:ingotManasteel>, null, <ore:ingotManasteel>]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.manaGear9", "botania.entry.manaGear", 5, [<Botania:manasteelBoots>], [[[<ore:ingotManasteel>, null, <ore:ingotManasteel>], [<ore:ingotManasteel>, <Botania:manaweaveBoots>, <ore:ingotManasteel>]]]);

# --- Mana Tablet
mods.botania.Lexicon.removePage("botania.entry.manaTablet", 2);
mods.botania.Lexicon.addRunePage("botania.page.manaTablet2", "botania.entry.manaTablet", 2, [<Botania:manaTablet>.withTag({mana: 500000})], [[<Thaumcraft:blockJar>, <AWWayofTime:reinforcedSlate>, <ore:runeAirB>, <ore:runeEarthB>, <ore:runeManaB>, <ore:runeFireB>, <ore:runeWaterB>, <AWWayofTime:reinforcedSlate>]], [500000]);

# --- Baubles
mods.botania.Lexicon.removePage("botania.entry.travelBelt", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.travelBelt1", "botania.entry.travelBelt", 1, [<Botania:travelBelt>], [[[<ore:runeEarthB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, <Thaumcraft:BootsTraveller>, <witchery:ingredient:72>], [<ore:ingotManasteel>, <witchery:ingredient:72>, <ore:runeAirB>]]]);
mods.botania.Lexicon.removePage("botania.entry.tinyPlanet", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.tinyPlanet1", "botania.entry.tinyPlanet", 1, [<Botania:tinyPlanet>], [[[<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>], [<Thaumcraft:blockCosmeticSolid:6>, <ore:manaPearl>, <Thaumcraft:blockCosmeticSolid:6>], [<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>]]]);
mods.botania.Lexicon.removePage("botania.entry.icePendant", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.icePendant1", "botania.entry.icePendant", 1, [<Botania:icePendant>], [[[<ore:runeWinterB>, <ore:manaString>], [<ore:manaString>, null, <ore:manaString>], [<ore:ingotManasteel>, <ore:manaString>, <ore:runeWaterB>]]]);
mods.botania.Lexicon.removePage("botania.entry.knockbackBelt", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.knockbackBelt1", "botania.entry.knockbackBelt", 1, [<Botania:knockbackBelt>], [[[<ore:runeFireB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [<ore:ingotManasteel>, <witchery:ingredient:72>, <ore:runeEarthB>]]]);

print("Initialized 'Botania.zs'");