# Terraform GCP

> Terraform 을 이용하여 Google Cloud Platform을 설정합니다.

1. Google Cloud Platform 프로바이더 설정
  - Google Cloud Console에서 프로젝트를 하나 생성합니다.
  - 사용자 인증 정보 탭을 선택
  - 사용자 인증 정보를 생성합니다. ( `서비스 계정키`를 생성 )
  - 생성된 키를 선택하고 키탭으로 이용합니다.
  - 키 추가를 선택하여 JSON 형태로 비공개 키를 생성합니다.
  - 받은 키를 해당 폴더로 이동시키고 파일명을 단순하게 변경합니다.
  - 키가 Github에 올라가지 않게 gitignore에 적용합니다.
  - providers.tf파일을 생성하고 코드를 작성합니다.
  - terraform init 명령어로 플러그인을 가져옵니다.