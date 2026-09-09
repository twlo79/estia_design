---
name: estia-backup
description: 當使用者說「備份」「同步」「backup」或完成重要 ESTIA 交付時,將工作成果同步至 github.com/twlo79/estia_design(直接 push main)。
---

# ESTIA Repo 備份流程

1. 讀取 token:`TOKEN=$(cat "$(dirname "$0")/token.txt")`(token.txt 與本檔同資料夾,由使用者保管;**絕不放進 repo**)
2. Clone:`git clone https://twlo79:$TOKEN@github.com/twlo79/estia_design.git /home/claude/estia_design`
3. 同步檔案(同 `scripts/sync.sh` 邏輯):
   - `/mnt/user-data/outputs/*.html → brand/documents/`
   - `*.jpg *.png → brand/visual/`
   - `*.docx *.pptx → office/`;`正隆*.xlsx → zhenglong/`
   - `/mnt/transcripts/*.txt → conversations/`
4. 為本次對話寫摘要:`conversations/YYYY-MM-DD_digest.md`(內容:本次決策、交付清單、未了事項)
5. 更新 README:`_Last sync:` 日期;若有重大新定案,補進「核心定案」段
6. 提交:`git add -A && git commit -m "sync: <主題> YYYY-MM-DD" && git push origin main`(一律直接 main)
7. 安全檢查:push 前 `grep -rn "github_pat" . | grep -v .git` 必須為空——token 入庫會被 GitHub 自動撤銷
