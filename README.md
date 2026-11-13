# S.T.A.L.K.E.R.: The Frontier (Rubezh)

**🇬🇧 EN:** A story mod for S.T.A.L.K.E.R.: Shadow of Chernobyl on OGSR Engine. One day in the life of the army's last garrison in the Zone: over 50 quests, 4-5 hours of gameplay, two endings.

**🇺🇦 UA:** «Рубіж», сюжетний мод для S.T.A.L.K.E.R.: Тінь Чорнобиля на OGSR Engine. Один день з життя останнього гарнізону армії в Зоні: понад 50 завдань, 4-5 годин проходження, дві кінцівки.

**🇷🇺 RU:** «Рубеж», сюжетный мод для S.T.A.L.K.E.R.: Тень Чернобыля на OGSR Engine. Один день из жизни последнего гарнизона армии в Зоне: больше 50 заданий, 4-5 часов прохождения, две концовки.

Contest version 1.0, released on 13 November 2026. Made for the Quest Contest 2026 on [AP-PRO](https://ap-pro.ru/forums/topic/15808-rubezh/).

---

## About

The year is 2014. The storms of 2011-2012 have passed: the faction wars, the shutdown of the psy-installations, the military operations. The Zone has gone quiet, and the old-timers grumble that it has been tamed.

But the silence is deceptive. The factions are rotting from within. Generals sell out their soldiers for pennies, traders feast on coffins, and around the night campfires there is more and more whispering about a secret order whose goals no one knows.

This is the Zone where Lieutenant Rogovets serves: a military doctor, a veteran of Operation Fairway, one of the few who made it out of dead Pripyat alive. After the psy-strike he survived there, he senses what others can't see. And right now he senses storm clouds gathering over the army's garrison in the Zone.

History is written by the victors.

## Features

- One day in the life of the army's last garrison in the Zone: over 50 quests, 4-5 hours of gameplay
- A reworked Agroprom, its underground and a new location, P-2
- The hero's thoughts that give hints and build tension
- Stashes for the observant that can reward you with useful loot
- Two endings

## Download

Full standalone build (game + engine + mod, ~23 GB unpacked). The main archive is in Russian, the English and Ukrainian localizations are unpacked over it.

| | Google Drive | Mega |
|---|---|---|
| Main game (required) | [download](https://drive.google.com/file/d/1Y4qK0O9rj2rsPjwBX3PN_lzhk3a-a4qt/view?usp=sharing) | [download](https://mega.nz/file/LrwlgK7Q#jyxefY7qmnKgeN2Jcv257NT_tpYueagSFulBVVtnvQg) |
| English localization | [download](https://drive.google.com/file/d/115ramRZcK_DQ2ZQoP9iUw4Ik2VSdBlNr/view?usp=sharing) | [download](https://mega.nz/file/a3wUVBpQ#42jUXXBNrvpDr4KyjOUR8-NUZ3kTdUcAxi2jIANcyt0) |
| Українська локалізація | [download](https://drive.google.com/file/d/15HMa_592u5LalYYO6OuWsEgFGwQVgfC_/view?usp=sharing) | [download](https://mega.nz/file/PuxhWSYS#ehxqC3M8UUf6TbBz3GBBwa-WB_YzSwmAPmrpZxQ5EwA) |
| user.ltx (optional) | [download](https://drive.google.com/file/d/1nO4_GO7uLaD6Mvr9H42SQkw_NNnxa5gJ/view?usp=sharing) | [download](https://mega.nz/file/SuwkHbLB#dMZ7n7yeluLltDlkv73lkotDcV_Ow21bKpHagx3UlJA) |

## Installation

1. Unpack the main archive to any folder, preferably a short path without Cyrillic characters (for example, `D:\Games\Rubezh`).
2. For English or Ukrainian, unpack the localization archive into the same folder, replacing the files.
3. Run `bin_x64\xrEngine.exe`.
4. Before you start, go to Options > Game and turn on "Ambient Music". It only takes effect after you reload the location, so turn it on right away.
5. Start a new game.

Full instructions, known bugs and crash fixes are in `README.txt` inside the archive.

## System requirements

- OS: Windows 10/11 x64 (Windows 7 is not supported)
- CPU: 64-bit with SSE2 support
- RAM: 4 GB minimum, 8 GB recommended
- GPU: DirectX 11 support
- Disk space: about 23 GB

## Graphics

Optional: the `user.ltx` the mod was tested on (max graphics, no bloom). Unpack the game, then put the file into the `stsocdata_` folder. Your key bindings will reset and the resolution will be set to 1920x1080 (change the `vid_mode` line if you need another one).

To turn bloom off without it, open the console (`~`) and enter:

```
ssfx_bloom_use_presets 0
ssfx_bloom_1 5,1,0,0
ssfx_bloom_2 1,0,0,0
```

To bring the default bloom back:

```
ssfx_bloom_1 4,4,0,0.5
ssfx_bloom_2 1.7,0.7,0.5,0.5
```

## Credits

- Malevich - Order character textures
- Kobzar - location edits
- Mez - main menu, loading screens and other visual goodies
- Testing: Artenos2004, Zhuuk, Chistonebovets Maksim and others
- Claude - for literally all the code

**Music:** AEmhyr (main menu guitar theme), Main Theme (Metro: Last Light), Pianistec - Disposal Unit (Imperium Mix), MoozE - Anomalies Archived. Radio sounds, the "Voices of the Order" and other sounds are from freesound.org. AI voice: Silero TTS (RU), 11 Labs (UA/EN).

**Assets used:** OGSR Engine, STSoC Weapon Pack, STSoC English Translate, location by collector22 (P-2 in the game), CGIM 2, H8 model pack, Wooden Addon & New UI, DarkSignal Steps Sounds & DarkSignal Inventory Sounds.

## Bug reports and contacts

Use [Issues](https://github.com/pigmeycivilizator/The-Frontier/issues), Telegram [t.me/pigmey_1](https://t.me/pigmey_1) or Discord: pigmey. Please attach the log from `stsocdata_/logs` and a save.

---

<h2>Good hunting, stalker.