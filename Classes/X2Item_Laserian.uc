//---------------------------------------------------------------------------------------
//  FILE:		XComGameState_ModItem
//  PURPOSE:	Testing the functionality of this mod
//           
//---------------------------------------------------------------------------------------
//  Copyright (c) 2018 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------
class X2Item_Laserian extends X2Item config(GameData_WeaponData);

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Weapons;

    Weapons.AddItem(CreateTemplate_CustomShotgun());

    return Weapons;
}

static function X2DataTemplate CreateTemplate_CustomShotgun()
{
	local X2WeaponTemplate Template;
	local WeaponDamageValue LaserianDamageValue;

	Template = X2WeaponTemplate(class'X2Item_DefaultWeapons'.static.CreateTemplate_XComShotgun('WPN_CustomShotgun'));
	Template.bIsEpic = true;
	Template.bLimitOneOwned = true;
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///UILibrary_Common.Armory_EW_Shotgun2_R";
	Template.EquipSound = "UI_Strategy_Armory_Equip_WeaponEpic";
	Template.LeavesExplosiveRemains = true;
	Template.bAlwaysRecovered = true;
	

	LaserianDamageValue.Damage += 30;
	Template.BaseDamage = LaserianDamageValue;
	Template.WeaponPanelImage = "_BeamShotgun";
	Template.Aim = 0;
	Template.iRange = 1;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.EPICSHOTGUN1_CRITCHANCE;
	Template.iClipSize = 1;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.EPIC_SHOTGUN_IENVIRONMENTDAMAGE;

	return Template;
}

defaultproperties
{
    
}