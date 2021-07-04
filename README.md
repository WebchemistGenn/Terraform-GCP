# Terraform GCP

> Terraform 을 이용하여 Google Cloud Platform을 설정합니다.

1. Google Cloud Platform Provider 설정
  - Google Cloud Console에서 프로젝트를 하나 생성합니다.
  - 사용자 인증 정보 탭을 선택
  - 사용자 인증 정보를 생성합니다. ( `서비스 계정키`를 생성 )
  - 생성된 키를 선택하고 키탭으로 이용합니다.
  - 키 추가를 선택하여 JSON 형태로 비공개 키를 생성합니다.
  - 받은 키를 해당 폴더로 이동시키고 파일명을 단순하게 변경합니다.
  - 키가 Github에 올라가지 않게 gitignore에 적용합니다.
  - providers.tf파일을 생성하고 코드를 작성합니다.
  - terraform init 명령어로 플러그인을 가져옵니다.

2. Google Cloud Platform Instance 설정
  - 우선 서버의 이름을 지정합니다.
  - 사용할 서버 성능을 지정합니다. ( 1대 무료를 위해서 f1-micro로 선택하였습니다. )
  - 설치될 운영제체와 용량을 선택합니다. ( ubuntu 18.04를 선택하였습니다.  용량은 30GB )
  - 추가로 무료로 사용하기 위해 provider를 `us-central1`로 변경하였습니다.
  - 다음은 네트워크를 설정합니다. 이름을 설정하고 subnet은 자동 생성되게했습니다.
  - firewall을 설정하여 allow 설정하였습니다. ( 미설정시에 22 포트가 열리지 않아서 ssh를 이용한 서버 접근이 불가능할 수 있습니다. )
  - 서버접근시에 매번 확인하지 않기 위해 static ip도 설정하였습니다.
  - 이제 모든 연관정보를 연결하고, instence의 network 정보를 연결합니다.
  