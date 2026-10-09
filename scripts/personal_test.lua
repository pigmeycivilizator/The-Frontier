local a = db.actor
local sim = alife()

-- выдать предмет count раз прямо в инвентарь игрока
local function give(section, count)
	for i = 1, (count or 1) do
		sim:create(section, a:position(), a:level_vertex_id(), a:game_vertex_id(), a:id())
	end
end

-- ============================================================
-- 1. СНАРЯГА К НАЧАЛУ ШТУРМА
-- ============================================================

-- броня от снабженца
give("military_outfit")

-- Гроза от снабженца + ВОГи с поста 2
give("wpn_groza")
give("ammo_9x39_ap", 5)
give("ammo_vog-25", 4)

-- РПК с трупа Серого + прицелы
give("wpn_rpk74")
give("ammo_5.45x39_fmj", 5)
give("ammo_5.45x39_ap", 4)
give("1p78")
give("okp")

-- Вепрь от Серого
give("wpn_vepr")
give("ammo_12x70_buck", 4)
give("ammo_12x76_zhekan", 2)

-- пистолет, нож, бинокль, фонарь со старта
give("wpn_knife")
give("wpn_binoc")
give("device_torch")

-- гранаты: награда дежурного лазарета
give("grenade_rgd5", 4)
give("grenade_f1", 2)

-- медицина
give("medkit_army", 3)
give("medkit", 3)
give("bandage", 5)
give("antirad", 1)

-- карты из П-2
give("fr_agr_maps_final")

-- ============================================================
-- 2. СЮЖЕТ: ВСЁ ДО ВЫХОДА ИЗ П-2 (БЕЗ НАЧАЛА ШТУРМА)
-- ============================================================

-- враги подземки "перебиты", чтобы квест 41 закрылся сам
for i = 1, 17 do
	agroprom.kill_add("und")
end

local infos = {
	-- ЭМИ прошло: гарнизон базы на месте, худ и устройства работают
	"fr_agr_emp_start",
	"fr_agr_emp_end",

	-- 35: база, взрыв склада уже был
	"fr_agr_q35_start",
	"fr_agr_fuel_boom",
	"fr_agr_fuel_boom_2",
	"fr_agr_fuel_boom_3",
	"fr_agr_fuel_boom_4",
	"fr_agr_base_reached",

	-- 36: лазарет, все четверо спасены
	"fr_agr_q36_start",
	"fr_agr_laz_duty_talk",
	"fr_agr_laz_w1_saved",
	"fr_agr_laz_w2_saved",
	"fr_agr_laz_w3_saved",
	"fr_agr_laz_w4_saved",
	"fr_agr_laz_report_done",

	-- 37: предатели у склада
	"fr_agr_q37_start",
	"fr_agr_sab_turned",
	"fr_agr_sab_k1",
	"fr_agr_sab_k2",
	"fr_agr_sab_k3",
	"fr_agr_sab_k4",

	-- 38-39: Кузнецов и снабженец
	"fr_agr_q38_start",
	"fr_agr_kuz_plan_done",
	"fr_agr_q39_start",
	"fr_agr_snab_final_done",

	-- 40-42: подземка, сержант спасён (лазарет и подземка уходят)
	"fr_agr_q40_start",
	"fr_agr_q40_entered",
	"fr_agr_q41_start",
	"fr_agr_serg_final_saved",
	"fr_agr_serg_final_done",
	"fr_agr_p2_open",
	"fr_agr_q42_start",
	"fr_agr_p2_entered",

	-- 43-45: П-2, карты, Фанат, квест "вернуться на поверхность"
	"fr_agr_q43_start",
	"fr_agr_maps_taken",
	"fr_agr_q44_start",
	"fr_agr_fanat_dead",
	"fr_agr_q45_start",
	"fr_agr_p2_exit_open",
}
for _, i in ipairs(infos) do
	if not a:has_info(i) then a:give_info_portion(i) end
end

-- предатели у склада по поршням "мертвы", но физически ещё стоят: добиваем
for sid = 246, 249 do
	local npc = level_object_by_sid(sid)
	if npc and npc:alive() then
		npc:kill(npc)
	end
end

-- ночь и гроза, как после разговора с Серым
 agroprom.weather_dark()

log1("personal_test: assault prep done")