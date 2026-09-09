# ESTIA Residences Taipei — Design & Strategy Repository

ESTIA Residences(es-TEE-ah)品牌、營運與客源策略完整文件庫。
「飯店的紀律,家的靈魂」— Greek in spirit. Taiwanese in hands.

## 專案總結

34 天完成品牌系統建置(名稱、價值觀、視覺、語言、服務設計、組織文化、考核獎金),
之後進入執行期:員工手冊定稿、官網規劃、正隆官邸客源攻堅、公司方向公告。

**核心定案:**
- 品牌四句話與位階:`A city address. A world apart.`(主標)/ `Every detail, a welcome.` / `Warmth, made in Taiwan.` / `Hosted, not served.`(僅限內部)
- 五色系統:Marble #F4F0E8 · Linen #E4DCCC · Stone #A49E94 · Oak #8B6F47 · Ember #221D17
- 字標:Italiana 全大寫 +0.42em;M11「門中之 E」僅用於封蠟與迎賓卡(向量檔定稿中)
- 九條價值觀含 Value 09「對事直接,對人溫柔」;押金級距(<1月半個月/1–3月1個月/3月+2個月)
- 公司現行方向:增加營業額 —— 五方向(案源/流程/渠道/補助/外籍房務)+ 正隆週報機制

## 目錄結構

| 資料夾 | 內容 |
|---|---|
| `conversations/` | Claude 對話完整逐字稿(5 份)+ 索引 + 各階段摘要 |
| `brand/documents/` | 全部品牌/營運 HTML 文件(手冊、報告、規劃書、腳本、規格書) |
| `brand/visual/` | 視覺輸出(logo、字標、票選頁、大頭貼、M11) |
| `office/` | Word 手冊、方向公告 PPT、品牌文件 Office 版 |
| `zhenglong/` | 正隆官邸:房客結構分析、詢問週報表 |
| `scripts/` | 備份同步腳本 |
| `skills/estia-backup/` | Claude 備份 skill(自動同步本 repo 的操作規範) |

## 同步規則

- 每次 Claude 工作階段結束或使用者說「備份」,執行 `scripts/sync.sh`
- 內容:對話紀錄/摘要 → `conversations/`;新產出檔案 → 對應資料夾;README 更新
- 一律直接 commit + push 到 `main`
- Token 不入 repo(GitHub push protection 會自動撤銷入庫的 token)

> 命名規則:品牌對外一律使用全名 **ESTIA Residences Taipei**(避免與全球希臘餐廳 Estia 的搜尋衝突)。

_Last sync: 2026-09-09 · by Claude_
