#!/bin/bash
set -euo pipefail
DIR="$(dirname "$0")/../designs/refs"
mkdir -p "$DIR"
cd "$DIR"
ids=(
417099c3-0bcd-4438-b623-a84a5676d504
9c171709-3706-4cff-8b9f-44f5895be61c
d814aa62-5bf7-4bb4-9f32-48af8e52436f
1ea422bd-4548-4074-8c30-2354e45a5e8e
a4d4607b-9b7f-40ae-ae96-5a0025cf8334
3d3f1436-e398-4046-887d-c4db48f52e5b
265e150b-a205-4e36-b586-4866b77352c5
c0609cf6-fefe-4ec1-a783-cd3493dcf880
ce85df70-946a-41e4-b623-7c0c2f39d7ce
d6e054fd-3282-4a06-86f0-5918ae15ca7f
72078ed6-43b2-414b-91d0-0f8a401b3243
15c18f16-19f1-4829-9e4f-04c9a037b147
f01648c8-32c7-4410-8b34-fe35e01a3b01
ce5f53c4-7a46-4680-93cf-3f19ac6286e1
b791d269-bf14-4970-9079-7a0bc9238cd1
c882991e-247e-45ed-aa13-004d8742c152
e88d2242-724f-42da-8ac0-2127cb16acb3
b1565258-a8d8-419c-bd18-dd6071c679e2
94d3811a-42cb-45d1-bcbe-69f9ad948358
33551642-6a41-4a03-a174-e4ea1687a72c
d2e0123a-c4eb-4c95-b94c-be42c7f90fa1
bda299b3-5b46-4cac-ae53-45bbb0fb1bfc
d3f6422a-6ef4-41d8-bbb5-195389b92d2c
0bd5f527-b912-4be5-810c-c933e019a5e7
a42d49c1-3119-4e62-af6f-b11355ae3723
a309ee52-a51b-48a3-b3c9-2f80c0e464d4
238148b4-84cf-4e3e-be8c-4ed327298ee2
c12bee96-2deb-4ed6-8635-a07b21c15fe6
e3fac184-9b6c-43b3-a61f-43178b03d127
170cf9cc-af7a-456e-97cc-b957742879d7
)
i=1
for id in "${ids[@]}"; do
  fn=$(printf "%02d.png" "$i")
  echo "dl $i/30 $fn"
  curl -fsSL "https://api2.cookclub.ai/media/asset/$id" -o "$fn"
  i=$((i+1))
done
echo "done: $(ls -1 *.png | wc -l | tr -d ' ') files"
