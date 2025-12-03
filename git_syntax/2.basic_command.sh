# 현재 working directory, staginf area 상태 확인
git status

# .은 모든 수정/추가 사항
git add .

# 특정 파일만 add할 경우(경로까지 포함)
git add test_folder/test1.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi 모드 -> 첫 줄: 타이틀, 두번째 줄부터 내용 -> :wq 저장 후 종료시 커밋ID 생성
git commit

# commit 이력 확인
git log
git log --oneline

# head 하단의 로그만 보이는 것이 아니라, 모든 commit 이력을 조회
# head : 현재 사용(checkout) 하고 있는 commitID 의미
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명
# 충돌 발생시 충돌 무시하고, 로컬 기준의 코드를 원격에 덮어쓰기 (절대 사용하지 말 것)
git push origin 브랜치명 -- force

# 특정 commit ID로의 전환
git checkout 커밋ID
# 특정 브랜치로의 전환
git checkout 브랜치명

# pull은 원격사항을 local로 내려받는 것 (fetch + merge) 
git pull origin main

# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch origin main

# commitID간 또는 브랜치 사이의 비교 명령어
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push commit 사항을 되돌리는 새로운 commit 생성
# commit 지워지지 않음xxx
git revert 커밋ID

# 작업중인사항을 임시저장
git stash 
# 임시저장한 작업사항을 다시 적용
git stash pop
# 저장한 작업목록 조회
git stash list
# 저장한 목록 전체 삭제
git stash clear