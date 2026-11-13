# Nathaniel（纳撒尼尔）BG2:EE 汉化说明

## 一、模组信息

| 项目 | 内容 |
|---|---|
| 模组名 | Nathaniel（纳撒尼尔） |
| 类型 | BG2:EE 男同恋爱 NPC 模组（SoA + ToB 双线） |
| 作者 | feuille_sakaki（feuille_sakaki@spellholdstudios.net） |
| 版本 | v4.3 |
| 语言 | 简体中文（Schinese） |
| 汉化日期 | 2026-11-13 |
| 原始语言目录 | `Nathaniel/english/`（16 个 tra） |
| 汉化输出目录 | `Nathaniel/schinese/`（16 个 tra，同名） |
| 编码 | UTF-8（无 BOM），CRLF 换行 |

## 二、汉化范围

**tra 层全量汉化，共 5561 条：**

| 文件 | 条目数 | 说明 |
|---|---|---|
| `bfhnat.tra` | 2355 | SoA 主线对话（最大文件） |
| `fhnatj.tra` | 1348 | SoA 旅程/闲聊/亲昵互动 |
| `bfhn25.tra` | 641 | ToB 主线对话（含 Aerie / Anomen / Edwin / Haer'Dalis / Imoen / Jaheira / Jan / Keldorn / Korgan / Mazzy / Minsc / Nalia / Sarevok / Valygar / Viconia 的 crossmod banter） |
| `fhflirt25.tra` | 187 | ToB 调情对话 |
| `fhn25j.tra` | 186 | ToB 杂项（埃莉诺 / 屠城反应 / 结局旁白 / 队友评论） |
| `fhmayon.tra` | 163 | 梅奥娜支线 |
| `fhbryce.tra` | 154 | 拉蒂默·布莱斯（含性别分支重复条目） |
| `fhavery.tra` | 137 | 艾弗里·费尔法克斯支线 |
| `fhn25.tra` | 81 | ToB 短条目 |
| `setup-nathaniel.tra` | 90 | 组件名 / 安装文本 / 头像选项 |
| `fhnat.tra` | 67 | SoA 杂项 |
| `fhnatp.tra` | 62 | 口袋位面 / 结局相关 |
| `fhasalie.tra` | 42 | 阿萨莉支线 |
| `fhn25p.tra` | 22 | ToB 口袋位面 |
| `fhterl.tra` | 17 | 特尔支线 |
| `vampnath.tra` | 9 | 吸血鬼纳撒尼尔（日志标题） |
| **合计** | **5561** | |

**代码内嵌台词另行处理（3 个 crossmod 文件）：**

| 文件 | 内嵌台词处数 | 处理 |
|---|---|---|
| `crossmod/fhklsy.d` | 24 | 凯尔西 ↔ 纳撒尼尔 两段 banter（阿诺门话题 / 笔记本话题） |
| `crossmod/fhsolaconflict.d` | 45 | 索劳芬冲突三段（SoA 版） |
| `crossmod/fhsolaconflicttob.d` | 45 | 索劳芬冲突三段（ToB 版） |

这三个文件不走 `@N`，台词直接内嵌在 `~…~` 里（`atrefs=0`），因此**必须直接改源文件**，只替换 `~…~` 内的文字，`CHAIN / IF / THEN / SAY / REPLY / ++ / == / DO / EXIT` 与 `SetGlobal(...) / LeaveParty() / EscapeArea()` 一字未动。改前已备份为 `*.d.bak`。

**未改动：**

- `english/` 原目录 16 个 tra —— 一字未动，可随时对照英文原文。
- `setup-nathaniel.tp2` —— 一字未动（已在原文件中声明 `Schinese`，无需再改）。
- `dialogues/soa/*.d`、`dialogues/tob/*.d` —— 全走 `@N`，英文原文以 `/* ~…~ */` 注释形式残留，**不需要也不应该改**。
- `script/**/*.baf`（19 处 `@N`）、`lib/fhninitimoen.d`（空壳）—— 同上，走 `@N`，未改。
- `items/*.itm`、`characters/*.cre`、`epilogues/fhnatep.2da`、`audio/`、`portraits/`、`bams/`、`fhnblank.mus` —— 二进制/资源文件，未改。

## 三、编码与换行

- **输出统一 UTF-8（无 BOM）+ CRLF**。
- `setup-nathaniel.tp2` 中**没有 `HANDLE_CHARSETS`、没有 `iconv`**，WeiDU 不会做任何自动转码，因此 `schinese/` 下的 tra 必须是 UTF-8 中文才能被正确解析进 `dialog.tlk`（EET 的 `lang\zh_CN\dialog.tlk` 本身即为 UTF-8）。
- 目录名必须是**小写 `schinese`**（tp2 第 12 行为 `LANGUAGE ~Schinese~ ~schinese~ ~Nathaniel/schinese/Setup-Nathaniel.tra~`，第二个参数即语言目录名，`AUTO_TRA ~Nathaniel/%s~` 会按它去加载全部 tra）。
- 例外说明：原文 `fhflirt25.tra` 是 cp1252 编码（含弯引号），汉化输出已统一为 UTF-8，与其余 15 个文件一致。
- **严禁把 `schinese/` 下的 tra 转成 ANSI/GBK**：WeiDU 不做自动转码，转成 ANSI 会在安装时报 `LEXER ERROR at line … invalid character [ ]`（Alora 模组已实测踩过此坑）。若极少数 WeiDU 版本报 `invalid character`，兜底方案是改存 **UTF-8 带 BOM**（WeiDU 会自动剥掉 BOM），仍不要转 ANSI。

## 四、术语表（全篇统一）

**人物**

| 原文 | 译名 |
|---|---|
| Nathaniel / Nathaniel Aplin-Fletcher | 纳撒尼尔 / 纳撒尼尔·阿普林-弗莱彻 |
| "Thaniel" / "Nathy" / "Thanny" | 小纳 / 小纳 / 小纳尼（扬·詹森专用） |
| Latimer (Bryce) | 拉蒂默·布莱斯 |
| Avery (Fairfax) | 艾弗里·费尔法克斯（贸易集会卫队中尉） |
| Elenor (Blakely) | 埃莉诺·布莱克利（萨拉杜什小女孩） |
| Shigure / Masao / Kajikamu | 时雨 / 正夫 / 卡吉卡穆 |
| Terl / Asalie / Mayona | 特尔 / 阿萨莉 / 梅奥娜 |
| Gorion | 高里安 |
| Kelsey / Solaufein | 凯尔西 / 索劳芬 |
| Melissan / Balthazar | 梅丽珊 / 巴萨扎 |
| Gromnir / Saradush | 格罗姆尼尔 / 萨拉杜什 |
| Solar / Amaunator | 炽阳使者 / 阿曼纳塔 |
| Farielle (Sister) | 法莉尔（修女） |
| Devlyn Kennedy | 德夫林·肯尼迪 |
| Uncle Scratchy / Aunt Rebecca | 挠挠叔叔 / 丽贝卡姑妈 |
| Uncle Walter / Cousin Grimbleshank | 沃尔特叔叔 / 格里姆贝尔尚克 |
| Great Turnip Massacre '67 | 六七年芜菁大屠杀 |
| Imoen / Irenicus / Bodhi | 爱蒙 / 爱瑞尼克斯 / 波迪 |
| Sarevok / Anomen Delryn | 萨瑞沃克 / 阿诺门·德瑞林 |
| Aerie / Jaheira / Minsc / Boo | 艾黎 / 贾希拉 / 明斯克 / 布布 |
| Dynaheir / Khalid / Viconia | 戴娜黑 / 卡立德 / 维康尼亚 |
| Haer'Dalis / Edwin (Odesseiron) / Edwina | 海尔达利 / 艾德温（奥德赛隆）/ 艾德温娜 |
| Jan Jansen / Nalia / Mazzy | 扬·詹森 / 娜莉亚 / 玛兹 |
| Keldorn / Korgan / Valygar / Cernd | 凯尔登 / 科根 / 瓦里格 / 瑟恩德 |
| Yoshimo / Tiax / Quayle | 吉野 / 蒂亚克斯 / 奎尔 |
| Phaere / Matron Mother / Madame Nin | 菲尔瑞 / 主母 / 宁夫人 |
| Galvena / Claire / Renal Bloodscalp | 加尔维娜 / 克莱尔 / 雷纳尔·血颅 |
| Mae'Var / Inspector Brega / Lord Firkraag | 梅瓦 / 布雷加督察 / 菲克拉格领主 |
| Elminster / Lord Coprith / Elhan | 艾尔明斯特 / 科普里斯领主 / 艾尔汉 |
| Moira / Josef / Galia / Garren | 莫伊拉 / 约瑟夫 / 加莉亚 / 加伦 |
| Archie Matheson / Patrick | 阿奇·马西森 / 帕特里克 |

**地名 / 组织**

| 原文 | 译名 |
|---|---|
| Faerun / Amn / Athkatla | 费伦 / 安姆 / 阿斯卡特拉 |
| Baldur's Gate / Beregost / Candlekeep | 博德之门 / 贝雷戈斯特 / 烛堡 |
| Sword Coast / Trademeet / Imnesvale | 剑湾 / 贸易集会 / 伊姆斯谷 |
| Waukeen's Promenade / Elfsong / Copper Coronet | 沃金长廊 / 精灵之歌 / 铜冠旅店 |
| Mithrest Inn / Government District / Slums | 米斯瑞斯特旅店 / 政府区 / 贫民区 |
| Council of Six / Cowled Wizards / Flaming Fist | 六人议会 / 蒙面巫师 / 焰拳 |
| Grand Duke / Guildhouse / Order of the Radiant Heart | 大公爵 / 会馆 / 光明之心骑士团 |
| Suldanessellar / Saradush / Waterdeep | 索丹尼斯拉 / 萨拉杜什 / 深水城 |
| Kara-Tur / Maztica / Rasheman | 卡拉图 / 玛兹提卡 / 拉什曼 |
| Ched Nasad / Underdark / demiplane | 切德·纳萨德 / 幽暗地域 / 半位面 |
| Black Lotus / Harpers | 黑莲花 / 竖琴手 |
| Lathander / Helm / Torm / Shar / Cyric / Oghma / Arvoreen / Baervan / Lolth | 兰森德尔 / 海姆 / 托姆 / 莎尔 / 赛瑞克 / 奥格玛 / 阿佛琳 / 贝尔凡 / 罗丝 |
| Binder of What is Known | 所知者的束缚者（奥格玛尊号） |
| Temple of Waukeen / pocket plane / Slayer | 沃金神殿 / 口袋位面 / 杀戮者 |

**专有名词**

| 原文 | 译名 |
|---|---|
| katana / wakizashi / kensai | 武士刀 / 胁差 / 剑圣 |
| ioun stone / Rhynn Lanthorn | 伊恩石 / 琳恩提灯 |
| ankheg / xvart / kobold / demilich | 安克赫格 / 泽瓦特 / 狗头人 / 半巫妖 |
| beljuril / bloodstone / mithril / Horn of Kazgaroth / Robe of Vecna | 贝尔朱里尔 / 血石 / 秘银 / 卡兹加罗斯之角 / 维克那法袍 |
| dajemma / Bhaalspawn / the taint | 达杰玛 / 巴尔后裔 / （巴尔的）污渍 |
| Solar | 炽阳使者 |

**保留原文不译**（卓尔语，加释义或直接保留）：

- `Veldrin` —— 保留原文（卓尔语称呼，语境为「（低声）Veldrin」）。
- `toha'vithanna` —— 保留原文，首次出现处由维康尼亚释义为「跟同类上床的雄性」。

## 五、保留不译清单

1. **13 个脚本占位符原样保留**：`<CHARNAME>`、`<PRO_HISHER>`、`<PRO_HESHE>`、`<PRO_MANWOMAN>`、`<PRO_RACE>`、`<MANWOMAN>`、`<DAYNIGHT>`、`<PRO_HIMHER>`、`<SIRMAAM>`、`<PRO_LADYLORD>`、`<BROTHERSISTER>`、`<MALEFEMALE>`、`<LADYLORD>`。译文中未新增任何占位符。
2. **组件名 / 模组名中的专名**：`Nathaniel`、`BGII`、`NPC`（如「内塔尼尔…」类不适用，本模组组件名保留 `Nathaniel` 原名以便识别）。
3. **作者署名**：`Feuille`、`K'aeloree`（NWN 头像重制作者）、`Amaurea`、`Milo Ventimiglia`。
4. **口令 / 控制台命令 / 全局变量名**：`SetGlobal`、`NathRomanceActive`、`FHKelsTalk` 等，全在动作块内，未译。
5. **音效标记**：`[vvVAxxxx]` 一类标记未译、未动。
6. **格式符号**：`@N` 编号、`=` 对齐空格、行尾注释、`*强调*`、`"双引号"`、`（动作描述）`、`#74337` 之类 barks 编号，全部原样保留。

## 六、校验记录

`verify.py` 九项检查，结果 **ALL PASS**：

| # | 检查项 | 结果 |
|---|---|---|
| 1 | 文件齐备（english 16 ↔ schinese 16，同名） | PASS |
| 2 | 无 BOM（不以 `EF BB BF` 开头） | PASS |
| 3 | UTF-8 可严格解码（非 replace fallback） | PASS |
| 4 | 纯 CRLF（裸 LF = 0，`\r\r` = 0，文件以 CRLF 结尾） | PASS |
| 5 | `@N` 总数与英文逐文件一致 | PASS |
| 6 | 编号序列与集合逐一同（顺序、数值均一致） | PASS |
| 7 | 无重复 id | PASS |
| 8 | 可重解析：`~` 总数不变、`=` 分隔符未变、正文无裸 `~` | PASS |
| 9 | 无残留英文（白名单：13 占位符 + Nathaniel/BGII/NPC/K'aeloree 等专名） | PASS |

- 总条目：**5561**（与英文源逐条对应，`translated=5561 / missing=0 / unused=0`）。
- 残留英文白名单命中 5 处，均为有意保留：`Veldrin`（2 处）、`toha'vithanna`（2 处）、`K'aeloree`（1 处，头像作者署名）。
- crossmod 三个 `.d`：`~` 总数与改前一致（60 / 152 / 152），仅 `~…~` 内正文被替换，动作块与脚本关键字零改动；`~` 内已无英文台词残留。

## 七、备注

1. **安装顺序**：`Nathaniel` 属 NPC 模组，建议在 EET 的 `EET_End` 之前、`Continuous_End` 类组件之前安装；crossmod 组件（凯尔西 / 索劳芬）需在**对应角色模组已安装**的前提下才生效，否则组件会自动跳过（WeiDU 的 `ACTION_IF FILE_EXISTS` 判断），不会报错。
2. **crossmod 组件顺序**：
   - `BEGIN @88`（索劳芬冲突）→ 需先装 **Solaufein**；
   - `BEGIN @90`（凯尔西内容）→ 需先装 **Kelsey**；
   - 两者互不冲突，但与其它修改 `FHNATJ.dlg` / `FHN25.dlg` 的 mod 存在先后敏感，建议把 Nathaniel 排在这些 NPC 之后。
3. **日志**：`ADD_JOURNAL … USING ~Nathaniel/%LANGUAGE%/vampnath.tra~ ~…/fhnatp.tra~`（tp2 第 309 行）用 `%LANGUAGE%` 取目录名，无硬编码问题，`schinese` 下两文件同名存在即可。
4. **9 个结局章节**：`REPLACE ~99999~ @73 … @81`（tp2 第 410–434 行），译文为多段 `\n\n` 长条目，已保留段落结构。
5. **原目录未动**：`english/`、`setup-nathaniel.tp2`、`dialogues/`、`script/`、`items/`、`characters/`、`epilogues/`、`audio/`、`portraits/` 全部保持原样；只有 `crossmod/` 三个 `.d` 因台词内嵌而直接修改，并留有 `.bak`。
6. **回滚**：删掉 `schinese/` 目录即可回到纯英文状态；crossmod 用 `fhklsy.d.bak`、`fhsolaconflict.d.bak`、`fhsolaconflicttob.d.bak` 覆盖回原文件。
