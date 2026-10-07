local a = db.actor

-- 1. перескочить по сюжету: выдать инфопоршни
local infos = {
	"fr_agr_emp_end",
	"fr_agr_emp_start",
	"fr_agr_camp_cut3",
	"fr_agr_scout_start",
	"fr_agr_kuz_report_done",
	"fr_agr_sery_back_done",
}
for _, i in ipairs(infos) do
	if not a:has_info(i) then a:give_info_portion(i) end
end

-- 2. выдать предметы
sak.create_items_actor("medkit", 5)
sak.create_items_actor("ammo_5.45x39_fmj", 5)
sak.create_items_actor("wpn_abakan", 1)

-- 3. вызвать любую функцию из своих скриптов
-- agroprom.emp_blackout()
-- agroprom.set_game_time(20, 30)

-- 4. записать текущие координаты в лог (для телепорта)
--local p = a:position()
--log1(string.format("POS: %.2f, %.2f, %.2f", p.x, p.y, p.z))

-- 5. телепорт по координатам из лога
-- a:set_actor_position(vector():set(100.0, 0.5, -50.0))