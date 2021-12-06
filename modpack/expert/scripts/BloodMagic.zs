#Name: BloodMagic.zs
#Author: Feed the Beast

print("Initializing 'Blood Magic.zs'...");

# - General
# -- Blood Altar
recipes.remove(<AWWayofTime:Altar>);
recipes.addShaped(<AWWayofTime:Altar>, [[<witchery:altar>, <Botania:livingrock0Slab>, <witchery:altar>], [<witchery:altar>, <Thaumcraft:blockStoneDevice>, <witchery:altar>], [<ore:ingotManasteel>, <witchery:ingredient:10>, <ore:ingotManasteel>]]);

# -- Blank Slate
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:blankSlate>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:blankSlate>, <Thaumcraft:blockCosmeticSolid:6>, 1, 1000, 5, 5);

# -- Refined Wood Ash (Formely known as Wood Ash)
recipes.remove(<AWWayofTime:bloodMagicIncenseItem>);
furnace.addRecipe(<AWWayofTime:bloodMagicIncenseItem>, <witchery:ingredient:18>, 0.5);
<AWWayofTime:bloodMagicIncenseItem>.displayName = "Refined Wood Ash";

# -- Weak Blood Shard
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:weakBloodShard>);
mods.bloodmagic.Alchemy.addRecipe(<AWWayofTime:weakBloodShard>*5, [<AWWayofTime:weakBloodShard>, <AWWayofTime:imbuedSlate>], 4, 1500);

# -- Blood Stone Blocks
recipes.remove(<AWWayofTime:largeBloodStoneBrick>);
mods.bloodmagic.Alchemy.addRecipe(<AWWayofTime:largeBloodStoneBrick>*8, [<AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:weakBloodShard>], 3, 2500);

# -- Crystal Cluster
recipes.remove(<AWWayofTime:blockCrystal>);
mods.thaumcraft.Infusion.addRecipe("RESEARCH", <AWWayofTime:largeBloodStoneBrick>, [<AWWayofTime:bloodMagicBaseItems:28>, <Botania:manaResource:14>, <AWWayofTime:bloodMagicBaseItems:29>, <witchery:ingredient:130>, <AWWayofTime:bloodMagicBaseItems:28>, <Botania:manaResource:14>, <AWWayofTime:bloodMagicBaseItems:29>, <witchery:ingredient:130>], "permutatio 64, praecantatio 64, fabrico 64, spiritus 64", <AWWayofTime:blockCrystal>, 5);

# -- Incense Crucible
recipes.remove(<AWWayofTime:blockCrucible>);
recipes.addShaped(<AWWayofTime:blockCrucible>, [[<ore:nuggetThaumium>, null, <ore:nuggetThaumium>], [<AWWayofTime:blankSlate>, <ore:ingotThaumium>, <AWWayofTime:blankSlate>], [null, <Thaumcraft:blockCandle:*>]]);
# -- Alchemical Chemistry Set
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:blockWritingTable>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:blockWritingTable>, <minecraft:brewing_stand>, 1, 2500);

# -- Empty Sockets
recipes.remove(<AWWayofTime:emptySocket>);
recipes.addShaped(<AWWayofTime:emptySocket>, [[<AWWayofTime:weakBloodShard>, <AWWayofTime:bloodMagicBaseItems:4>, <AWWayofTime:weakBloodShard>], [<AWWayofTime:bloodMagicBaseItems:4>, <witchery:ingredient:29>, <AWWayofTime:bloodMagicBaseItems:4>], [<AWWayofTime:weakBloodShard>, <AWWayofTime:bloodMagicBaseItems:4>, <AWWayofTime:weakBloodShard>]]);

# -- Spell Table
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:blockHomHeart>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:blockHomHeart>, [[<AWWayofTime:largeBloodStoneBrick>, <AWWayofTime:largeBloodStoneBrick>, <AWWayofTime:largeBloodStoneBrick>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <minecraft:crafting_table>, <AWWayofTime:AlchemicalWizardrybloodRune>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:apprenticeBloodOrb>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);

# -- Arcane Pedestal
recipes.remove(<AWWayofTime:blockPedestal>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:blockPedestal>, <Thaumcraft:blockStoneDevice:1>, 4, 20000);

# -- Arcane Plinth
recipes.remove(<AWWayofTime:blockPlinth>);
mods.botania.ElvenTrade.addRecipe(<AWWayofTime:blockPlinth>, [<AWWayofTime:blockPedestal>, <witchery:ingredient:130>, <AWWayofTime:blockPedestal>]);
<AWWayofTime:blockPlinth>.addTooltip(format.red("Crafted using the ") + "" + format.green("Alfheim Portal"));

# -- Teleposition changes
recipes.remove(<AWWayofTime:blockTeleposer>);
recipes.addShaped(<AWWayofTime:blockTeleposer>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:manaPearl>, <AWWayofTime:telepositionFocus>, <ore:manaPearl>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:telepositionFocus>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:telepositionFocus>, <Botania:manaResource:1>, 4, 2000, 10, 10);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:enhancedTelepositionFocus>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:enhancedTelepositionFocus>, <minecraft:nether_star>, 4, 10000);

# - Runes
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune>, [[<minecraft:stone>, <witchery:ingredient:12>, <minecraft:stone>], [<AWWayofTime:blankSlate>, <AWWayofTime:weakBloodOrb>, <AWWayofTime:blankSlate>], [<minecraft:stone>, <Thaumcraft:ItemShard:*>, <minecraft:stone>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:1>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:1>, [[null, <AWWayofTime:reinforcedSlate>], [<minecraft:bucket>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:bucket>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <minecraft:bucket>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:2>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:2>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:aquasalus>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:aquasalus>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:listAllwater>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:3>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:3>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:weakBloodOrb>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:weakBloodOrb>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:blockPrismarine>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:4>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:4>, [[null, <AWWayofTime:demonicSlate>], [<minecraft:cauldron>, <AWWayofTime:archmageBloodOrb>, <minecraft:cauldron>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:blockObsidian>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:5>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:5>, [[null, <AWWayofTime:demonicSlate>], [<minecraft:potion:8226>, <AWWayofTime:archmageBloodOrb>, <minecraft:potion:8226>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:ingotGold>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);

recipes.remove(<AWWayofTime:speedRune>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:speedRune>, [[null, <AWWayofTime:reinforcedSlate>], [<minecraft:sugar>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:sugar>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:ingotThaumium>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:runeOfSelfSacrifice>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:runeOfSelfSacrifice>, [[null, <AWWayofTime:reinforcedSlate>], [<AWWayofTime:sacrificialKnife>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:sacrificialKnife>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:ingotThaumium>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:runeOfSacrifice>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:runeOfSacrifice>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:daggerOfSacrifice>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:daggerOfSacrifice>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <ore:ingotThaumium>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);

# - Misc Components
recipes.remove(<AWWayofTime:bloodMagicBaseItems:1>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:1>, [[<Botania:manaGlass>, <ore:ingotManasteel>, <Botania:manaGlass>], [<ore:ingotGold>, <AWWayofTime:simpleCatalyst>, <ore:ingotGold>], [<Botania:manaGlass>, <ore:ingotManasteel>, <Botania:manaGlass>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:2>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:2>*5, [[<ore:manaString>, <ore:manaString>, <ore:manaString>], [<AWWayofTime:magicales>, <AWWayofTime:magicales>, <AWWayofTime:magicales>], [<ore:manaString>, <ore:manaString>, <ore:manaString>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:3>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:3>, [[null, <ore:manaString>, <ore:logWood>], [<ore:manaString>, <ore:logWood>, <ore:manaString>], [<ore:logWood>, <ore:manaString>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:4>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:4>, [[null, <Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:reinforcedSlate>], [<Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:bloodMagicBaseItems:3>, <Thaumcraft:blockCosmeticSolid:6>], [<AWWayofTime:reinforcedSlate>, <Thaumcraft:blockCosmeticSolid:6>]]);
mods.bloodmagic.Alchemy.removeRecipe(<AWWayofTime:bloodMagicBaseItems:30>);
mods.bloodmagic.Alchemy.addRecipe(<AWWayofTime:bloodMagicBaseItems:30>, [<AWWayofTime:bloodMagicBaseItems:17>, <AWWayofTime:bloodMagicBaseItems:29>,  <AWWayofTime:bloodMagicBaseItems:28>, <AWWayofTime:weakBloodShard>, <Botania:manaResource:2>], 6, 15000);

# - Equiptment
# -- Sarcrificial Orb/Knife
recipes.remove(<AWWayofTime:sacrificialKnife>);
mods.tconstruct.Casting.addTableRecipe(<AWWayofTime:sacrificialKnife>, <liquid:blood>*1000, <Botania:manaResource:1>, true, 20);

# -- Dagger of Sacrifice
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:daggerOfSacrifice>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:daggerOfSacrifice>, <witchery:arthana>, 2, 2500);

# -- Lava Crystal
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:lavaCrystal>);
recipes.addShaped(<AWWayofTime:lavaCrystal>, [[<Thaumcraft:blockCosmeticOpaque:2>, <minecraft:lava_bucket>, <Thaumcraft:blockCosmeticOpaque:2>], [<minecraft:lava_bucket>, <AWWayofTime:bloodMagicBaseItems:1>, <minecraft:lava_bucket>], [<ore:obsidian>, <ore:manaDiamond>, <ore:obsidian>]]);

# -- Ritual Deviner
recipes.remove(<AWWayofTime:itemRitualDiviner>);
recipes.addShaped(<AWWayofTime:itemRitualDiviner>, [[<ore:manaDiamond>, <AWWayofTime:airScribeTool>, <ore:manaDiamond>], [<AWWayofTime:waterScribeTool>, <witchery:chalkritual>, <AWWayofTime:fireScribeTool>], [<ore:manaDiamond>, <AWWayofTime:earthScribeTool>, <ore:manaDiamond>]]);

# -- Blood Letter's Pack
recipes.remove(<AWWayofTime:itemBloodPack>);
recipes.addShaped(<AWWayofTime:itemBloodPack>, [[<Botania:manaGlass>, <Thaumcraft:blockJar>, <Botania:manaGlass>], [<witchery:ingredient:12>, <minecraft:leather_chestplate>, <witchery:ingredient:12>], [<Botania:manaGlass>, <AWWayofTime:blankSlate>, <Botania:manaGlass>]]);

# -- Spell Crystals
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:blankSpell>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:blankSpell>, <witchery:ingredient:92>, 2, 1000);
mods.bloodmagic.Alchemy.removeRecipe(<AWWayofTime:itemComplexSpellCrystal>);
mods.bloodmagic.Alchemy.addRecipe(<AWWayofTime:itemComplexSpellCrystal>, [<AWWayofTime:blankSpell>, <AWWayofTime:weakBloodShard>, <AWWayofTime:weakBloodShard>, <Botania:manaResource:2>, <witchery:ingredient:80>], 3, 5000);

# -- Elemental Inscription Tools
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:waterScribeTool>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:waterScribeTool>, <Botania:rune>, 3, 1000, 5, 5);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:fireScribeTool>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:fireScribeTool>, <Botania:rune:1>, 3, 1000, 5, 5);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:earthScribeTool>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:earthScribeTool>, <Botania:rune:2>, 3, 1000, 5, 5);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:airScribeTool>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:airScribeTool>, <Botania:rune:3>, 3, 1000, 5, 5);

# -- Sigils
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:divinationSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:divinationSigil>, [[<Botania:manaGlass>, <Thaumcraft:ItemResource:1>, <Botania:manaGlass>], [<Botania:manaGlass>, <AWWayofTime:blankSlate>, <Botania:manaGlass>], [<Botania:manaGlass>, <AWWayofTime:weakBloodOrb>, <Botania:manaGlass>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:waterSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:waterSigil>, [[<AWWayofTime:aquasalus>, <witchery:divinerwater>, <AWWayofTime:aquasalus>], [<minecraft:water_bucket>, <AWWayofTime:imbuedSlate>, <minecraft:water_bucket>], [<minecraft:water_bucket>, <AWWayofTime:magicianBloodOrb>, <minecraft:water_bucket>]]);
recipes.remove(<AWWayofTime:lavaSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:lavaSigil>, [[<AWWayofTime:incendium>, <AWWayofTime:lavaCrystal>, <AWWayofTime:incendium>], [<minecraft:lava_bucket>, <AWWayofTime:demonicSlate>, <minecraft:lava_bucket>], [<minecraft:lava_bucket>, <AWWayofTime:masterBloodOrb>, <minecraft:lava_bucket>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:airSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:airSigil>, [[<AWWayofTime:aether>, <ore:bEnderAirBottle>, <AWWayofTime:aether>], [<AWWayofTime:aether>, <AWWayofTime:demonicSlate>, <AWWayofTime:aether>], [<AWWayofTime:aether>, <AWWayofTime:masterBloodOrb>, <AWWayofTime:aether>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:sigilOfTheFastMiner>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:sigilOfTheFastMiner>, [[<Thaumcraft:blockCosmeticSolid:6>, <Botania:manasteelPick>, <Thaumcraft:blockCosmeticSolid:6>], [<Botania:manasteelShovel>, <AWWayofTime:reinforcedSlate>, <Botania:manasteelAxe>], [<Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCosmeticSolid:6>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:growthSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:growthSigil>, [[<Thaumcraft:blockCustomPlant>, <Botania:grassSeeds>, <witchery:witchsapling>], [<Botania:grassSeeds:1>, <AWWayofTime:reinforcedSlate>, <Botania:grassSeeds:2>], [<witchery:witchsapling:1>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCustomPlant:1>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:voidSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:voidSigil>, [[<ore:ingotVoid>, <ore:manaString>, <ore:ingotVoid>], [<minecraft:bucket>, <AWWayofTime:reinforcedSlate>, <minecraft:bucket>], [<minecraft:bucket>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:bucket>]]);
mods.bloodmagic.BloodOrb.removeRecipe(<AWWayofTime:seerSigil>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:seerSigil>, [[<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:bucketLife>, <Thaumcraft:blockCosmeticOpaque:2>], [<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:divinationSigil>, <Thaumcraft:blockCosmeticOpaque:2>], [<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCosmeticOpaque:2>]]);

# -- Bound Tools
mods.bloodmagic.Binding.removeRecipe(<AWWayofTime:energySword>);
mods.bloodmagic.Binding.addRecipe(<Thaumcraft:ItemSwordElemental>, <AWWayofTime:energySword>);
mods.bloodmagic.Binding.removeRecipe(<AWWayofTime:boundAxe>);
mods.bloodmagic.Binding.addRecipe(<Thaumcraft:ItemAxeElemental>, <AWWayofTime:boundAxe>);
mods.bloodmagic.Binding.removeRecipe(<AWWayofTime:boundShovel>);
mods.bloodmagic.Binding.addRecipe(<Thaumcraft:ItemShovelElemental>, <AWWayofTime:boundShovel>);
mods.bloodmagic.Binding.removeRecipe(<AWWayofTime:boundPickaxe>);
mods.bloodmagic.Binding.addRecipe(<Thaumcraft:ItemPickaxeElemental>, <AWWayofTime:boundPickaxe>);

# -- Orbs
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:weakBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:weakBloodOrb>, <Botania:manaResource:2>, 1, 2000, 2, 1);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:apprenticeBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:apprenticeBloodOrb>, <Botania:prismarine>, 2, 5000, 5, 5);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:apprenticeBloodOrb>, <Botania:prismarine:1>, 2, 5000, 5, 5);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:magicianBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:magicianBloodOrb>, <Thaumcraft:blockCosmeticSolid:4>, 3, 25000);
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:masterBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:masterBloodOrb>, <Thaumcraft:ItemEldritchObject>, 4, 40000, 30, 50);

print("Initialized 'BloodMagic.zs'");