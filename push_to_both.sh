#!/bin/bash

# === 사용자 설정 ===
BRANCH="main"

# 여기에 GitHub 레포지토리 주소를 입력하세요
REPO1_URL="https://github.com/EwhaKing/49Days.git"
REPO2_URL="hhttps://github.com/BorderLee/49days_m.git"
# ===================

# 현재 경로 확인
echo "📁 현재 디렉토리: $(pwd)"

# Git 저장소인지 확인
if [ ! -d .git ]; then
    echo "이 폴더는 Git 저장소가 아닙니다. 먼저 git init 또는 git clone을 수행하세요."
    exit 1
fi

# 기존 origin 삭제 (이미 있을 경우)
git remote remove origin 2>/dev/null

# origin으로 등록 및 push 대상 추가
git remote add origin "$REPO1_URL"
git remote set-url --add --push origin "$REPO1_URL"
git remote set-url --add --push origin "$REPO2_URL"

# 푸시 실행
echo "🚀 $BRANCH 브랜치를 두 저장소에 푸시 중..."
git push origin "$BRANCH"

echo "✅ 푸시 완료!"
