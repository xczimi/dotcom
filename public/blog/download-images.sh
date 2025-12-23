#!/bin/bash
# Download all blog images (thumbnails + originals)
# Run this script from the dotcom directory:
#   bash public/blog/download-images.sh

cd "public/blog/images"

TOTAL=518
COUNT=0
SKIPPED=0
FAILED=0

echo "Downloading 270 thumbnails + 248 originals = $TOTAL images..."
echo ""

COUNT=$((COUNT + 1))
if [ -f 'southsidersWithMe-6336b34cc7de.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): southsidersWithMe-6336b34cc7de.jpg"
elif [ -f 'southsidersWithMe-6336b34cc7de.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): southsidersWithMe-6336b34cc7de.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'southsidersWithMe-6336b34cc7de.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJ_0_HxMPPTpY_yni_0lBhgTv9bix_W9LGyFisC9Ec4W19RT3MwDMDDDGKAc7XKE_lMmB6So7uPXs62gADPO91rK9l8GFBgT59Of9TjpTFh6dMKJm_mvBJTe5bg-sshDYbdRWa8bTbVmjY/s400/southsidersWithMe.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: southsidersWithMe-6336b34cc7de.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'southsidersWithMe-6336b34cc7de.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJ_0_HxMPPTpY_yni_0lBhgTv9bix_W9LGyFisC9Ec4W19RT3MwDMDDDGKAc7XKE_lMmB6So7uPXs62gADPO91rK9l8GFBgT59Of9TjpTFh6dMKJm_mvBJTe5bg-sshDYbdRWa8bTbVmjY/s400/southsidersWithMe.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'southsiders-c5878b0cd89b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): southsiders-c5878b0cd89b.jpg"
elif [ -f 'southsiders-c5878b0cd89b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): southsiders-c5878b0cd89b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'southsiders-c5878b0cd89b.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhze5rD0X2SU7OmmSqTvIhVZ02F9YACx3j-4YCnwXjp_da9dpAO1HipFt7ESlRSs9Z2hDfWkrUJ2vXuN1U14F9Nss6m1H4s3fOy6JJG1E5_y9-G_K6oSTfbK-q_QdYJWuVDPfDjDrnejgNI/s200/southsiders.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: southsiders-c5878b0cd89b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'southsiders-c5878b0cd89b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhze5rD0X2SU7OmmSqTvIhVZ02F9YACx3j-4YCnwXjp_da9dpAO1HipFt7ESlRSs9Z2hDfWkrUJ2vXuN1U14F9Nss6m1H4s3fOy6JJG1E5_y9-G_K6oSTfbK-q_QdYJWuVDPfDjDrnejgNI/s200/southsiders.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Canucks2010PreseasonVsCal-8123c68eff56.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Canucks2010PreseasonVsCal-8123c68eff56.jpg"
elif [ -f 'Canucks2010PreseasonVsCal-8123c68eff56.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Canucks2010PreseasonVsCal-8123c68eff56.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Canucks2010PreseasonVsCal-8123c68eff56.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJ0kPyWKOXITKzA3kkfB_2fQaMWiWsGhI-LIGXePU-cQ4dL1SKpeWkmKRpErtSduSMug3jxy4LxshXhWD0PoxevO5iSisZaAiDoXi_VzErFUydQI3IROkGwa_9erf4W0hrKUeVAwX3YPL-/s200/Canucks2010PreseasonVsCalgary.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Canucks2010PreseasonVsCal-8123c68eff56.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Canucks2010PreseasonVsCal-8123c68eff56.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJ0kPyWKOXITKzA3kkfB_2fQaMWiWsGhI-LIGXePU-cQ4dL1SKpeWkmKRpErtSduSMug3jxy4LxshXhWD0PoxevO5iSisZaAiDoXi_VzErFUydQI3IROkGwa_9erf4W0hrKUeVAwX3YPL-/s200/Canucks2010PreseasonVsCalgary.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'spoiler-1c64b8ccc736.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): spoiler-1c64b8ccc736.jpg"
elif [ -f 'spoiler-1c64b8ccc736.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): spoiler-1c64b8ccc736.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'spoiler-1c64b8ccc736.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR8i6lLPHuaad43cGfkczl5Z2gk-OMtXjsffxeoDqrKpFTLIW3J2aZprGOM70I-oCYI2xlT8p4mPE0kUADWMJcIjijwXVUvzWYzsp9Y8Odu9qhXeS_7RQ9N9c_5dwf3EjpEkBrt7R_wOeu/s400/spoiler.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: spoiler-1c64b8ccc736.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'spoiler-1c64b8ccc736.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR8i6lLPHuaad43cGfkczl5Z2gk-OMtXjsffxeoDqrKpFTLIW3J2aZprGOM70I-oCYI2xlT8p4mPE0kUADWMJcIjijwXVUvzWYzsp9Y8Odu9qhXeS_7RQ9N9c_5dwf3EjpEkBrt7R_wOeu/s400/spoiler.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg"
elif [ -f 'kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdGYpAHpyyEj8ZKGKTuS5nsGtmV5kZQ44KnONBD5M1dZsmHG8b8XkIK1Sp5l6sdawA3FFUsQ89LMduBzqHharStabc41RzMn-tnwp_Dv4GHnASx4dZD_DmUbABQWedK2sQVWaM_5C1nt_m/s400/kisKanadZaszlosUnneplos.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'kisKanadZaszlosUnneplos-ddd65f5c4aab.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdGYpAHpyyEj8ZKGKTuS5nsGtmV5kZQ44KnONBD5M1dZsmHG8b8XkIK1Sp5l6sdawA3FFUsQ89LMduBzqHharStabc41RzMn-tnwp_Dv4GHnASx4dZD_DmUbABQWedK2sQVWaM_5C1nt_m/s400/kisKanadZaszlosUnneplos.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'utcaiHoki-73ca72e4d3f0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): utcaiHoki-73ca72e4d3f0.jpg"
elif [ -f 'utcaiHoki-73ca72e4d3f0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): utcaiHoki-73ca72e4d3f0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'utcaiHoki-73ca72e4d3f0.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgOQnwigsrqhN98IAQPsTfyijHsXO35v_3AQlTetaX9UK31sL9Q2exOq1VVATYixvRG1plZx2JlazrXw1xfvsyi2S_Eok7rWqGS6ae0SZ3TTy0Ifbx-Q7j9p1yYfyoKGBJyOD6T2gMpuNhC/s400/utcaiHoki.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: utcaiHoki-73ca72e4d3f0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'utcaiHoki-73ca72e4d3f0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgOQnwigsrqhN98IAQPsTfyijHsXO35v_3AQlTetaX9UK31sL9Q2exOq1VVATYixvRG1plZx2JlazrXw1xfvsyi2S_Eok7rWqGS6ae0SZ3TTy0Ifbx-Q7j9p1yYfyoKGBJyOD6T2gMpuNhC/s400/utcaiHoki.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'magyarBobCsapat-c7b4f6407ed0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): magyarBobCsapat-c7b4f6407ed0.jpg"
elif [ -f 'magyarBobCsapat-c7b4f6407ed0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): magyarBobCsapat-c7b4f6407ed0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'magyarBobCsapat-c7b4f6407ed0.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPMPgcTpHqq5b_0cKycSagxSj9WOxHX_NWZBz7LPd4ErZktVxn766h10hIFek1DPWYfcuuqVuRpiD4mFeqpUyFVdFQpPQboheRMZ-bXgNriu0_Gcz70DX4UrWNik45P8CdvkyhvUAJlwMo/s400/magyarBobCsapat.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: magyarBobCsapat-c7b4f6407ed0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'magyarBobCsapat-c7b4f6407ed0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPMPgcTpHqq5b_0cKycSagxSj9WOxHX_NWZBz7LPd4ErZktVxn766h10hIFek1DPWYfcuuqVuRpiD4mFeqpUyFVdFQpPQboheRMZ-bXgNriu0_Gcz70DX4UrWNik45P8CdvkyhvUAJlwMo/s400/magyarBobCsapat.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'hunFlagTrio-8ad6d155faba.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): hunFlagTrio-8ad6d155faba.jpg"
elif [ -f 'hunFlagTrio-8ad6d155faba.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): hunFlagTrio-8ad6d155faba.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'hunFlagTrio-8ad6d155faba.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgE5CXpXDp9c9yel5rckmeIoSAHVViqxtAQM21peBOhNh2ZrK2LcFIlcgzFa4Y1c4XY9T_V1-fUIuLoeqlr3UFowHAWJW-i9WfdWhTGiOmNC_orhb3-ViCmrgiIDv2AfSq_DVBcYDiSAnWi/s400/hunFlagTrio.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: hunFlagTrio-8ad6d155faba.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'hunFlagTrio-8ad6d155faba.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgE5CXpXDp9c9yel5rckmeIoSAHVViqxtAQM21peBOhNh2ZrK2LcFIlcgzFa4Y1c4XY9T_V1-fUIuLoeqlr3UFowHAWJW-i9WfdWhTGiOmNC_orhb3-ViCmrgiIDv2AfSq_DVBcYDiSAnWi/s400/hunFlagTrio.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'checzScarfJersey-0534f7966948.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): checzScarfJersey-0534f7966948.jpg"
elif [ -f 'checzScarfJersey-0534f7966948.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): checzScarfJersey-0534f7966948.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'checzScarfJersey-0534f7966948.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-cZ3ho8s3nSDJ2nffwKpGsyB3xJSqJzLLO6c-kFnEYegTRFsk8gzonbTjHZPAYu0SoLlYtkqa5xfzGkn2ONiS8lbPkKEu-x6ZvgUvFpgjv_R7UcDMu8OOifkXCpQoqO8LFT_X4b-dDyg0/s400/checzScarfJersey.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: checzScarfJersey-0534f7966948.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'checzScarfJersey-0534f7966948.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-cZ3ho8s3nSDJ2nffwKpGsyB3xJSqJzLLO6c-kFnEYegTRFsk8gzonbTjHZPAYu0SoLlYtkqa5xfzGkn2ONiS8lbPkKEu-x6ZvgUvFpgjv_R7UcDMu8OOifkXCpQoqO8LFT_X4b-dDyg0/s400/checzScarfJersey.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'czech-lineup-5c32a30e5841.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): czech-lineup-5c32a30e5841.jpg"
elif [ -f 'czech-lineup-5c32a30e5841.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): czech-lineup-5c32a30e5841.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'czech-lineup-5c32a30e5841.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhHSAqjEeAx7pdztUio1kskID678KHZEK260o52mUrpq8ukQjKq83rCVBQiwpcUzaksnkEEMAK1bHHF3ZdHWJBleA16BsP2UZsWMpamlls0ebYVdfFCgg6SZVYEfewXGl6bEEpIGocewd2c/s400/czech-lineup.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: czech-lineup-5c32a30e5841.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'czech-lineup-5c32a30e5841.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhHSAqjEeAx7pdztUio1kskID678KHZEK260o52mUrpq8ukQjKq83rCVBQiwpcUzaksnkEEMAK1bHHF3ZdHWJBleA16BsP2UZsWMpamlls0ebYVdfFCgg6SZVYEfewXGl6bEEpIGocewd2c/s400/czech-lineup.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'ILoveYourSmile-f49a30ae8fa4.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): ILoveYourSmile-f49a30ae8fa4.jpg"
elif [ -f 'ILoveYourSmile-f49a30ae8fa4.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): ILoveYourSmile-f49a30ae8fa4.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'ILoveYourSmile-f49a30ae8fa4.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbNcdL9s9yrS5Ot7UOJM82sRLOz2206xGpXIEL2qTUPNpZF8ajk6OD1Qb2GFlHK2J93l32-rfGsHAYvYnZGFuJsJjh275yJL72lKmNnAHxRpIWm8-xiAykl04F87EIT8tYRMu47K2F6GsB/s400/ILoveYourSmile.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: ILoveYourSmile-f49a30ae8fa4.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'ILoveYourSmile-f49a30ae8fa4.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbNcdL9s9yrS5Ot7UOJM82sRLOz2206xGpXIEL2qTUPNpZF8ajk6OD1Qb2GFlHK2J93l32-rfGsHAYvYnZGFuJsJjh275yJL72lKmNnAHxRpIWm8-xiAykl04F87EIT8tYRMu47K2F6GsB/s400/ILoveYourSmile.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'germanFanFest-6ad9d0bf7707.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): germanFanFest-6ad9d0bf7707.jpg"
elif [ -f 'germanFanFest-6ad9d0bf7707.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): germanFanFest-6ad9d0bf7707.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'germanFanFest-6ad9d0bf7707.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQLCVWUZaPzFwbVmziURJrNJYo6DcSfPVhltHx5rmkET4Gij9UxWXKhcjOfnIPnvaclmSWEGn1giMGMQAy-fgDY1YurOjxkqRJieoMRi2eTk1W-CNCrqaN1KE1vsp-aVxaA-aHBCUibtQ6/s320/germanFanFest.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: germanFanFest-6ad9d0bf7707.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'germanFanFest-6ad9d0bf7707.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQLCVWUZaPzFwbVmziURJrNJYo6DcSfPVhltHx5rmkET4Gij9UxWXKhcjOfnIPnvaclmSWEGn1giMGMQAy-fgDY1YurOjxkqRJieoMRi2eTk1W-CNCrqaN1KE1vsp-aVxaA-aHBCUibtQ6/s320/germanFanFest.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'PeterKimFlag-b3730df5f320.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): PeterKimFlag-b3730df5f320.jpg"
elif [ -f 'PeterKimFlag-b3730df5f320.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): PeterKimFlag-b3730df5f320.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'PeterKimFlag-b3730df5f320.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhymBm_odDFl7SNnMBrJv0Kq9nNUFObCiaEsh-19aZ75nsW4w_hNR-Y2Qm20IukkCCv0eluZjBmtRuUPd9qAwdpznTuGJYG0YUzK6wafPYQrOjy3GkxPUKHyBLG6gpH0y2TElM1VCjfLNdp/s320/PeterKimFlag.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: PeterKimFlag-b3730df5f320.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'PeterKimFlag-b3730df5f320.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhymBm_odDFl7SNnMBrJv0Kq9nNUFObCiaEsh-19aZ75nsW4w_hNR-Y2Qm20IukkCCv0eluZjBmtRuUPd9qAwdpznTuGJYG0YUzK6wafPYQrOjy3GkxPUKHyBLG6gpH0y2TElM1VCjfLNdp/s320/PeterKimFlag.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'blueSkiJump-e7586a815de2.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): blueSkiJump-e7586a815de2.jpg"
elif [ -f 'blueSkiJump-e7586a815de2.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): blueSkiJump-e7586a815de2.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'blueSkiJump-e7586a815de2.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhv1yOo0tiCnzGtayI4wVWfTTNt689Ye0EUFqnDt5UYM8XI7DNE1bL2TH51KXGWJg5MxmRxXgM4hcYlvGYLtxn-2Eo1Ly4kB7Aue9vWaSPcQuMm-_DcbLiloxZoqSVdo3P4qRQdBRR50kwG/s320/blueSkiJump.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: blueSkiJump-e7586a815de2.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'blueSkiJump-e7586a815de2.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhv1yOo0tiCnzGtayI4wVWfTTNt689Ye0EUFqnDt5UYM8XI7DNE1bL2TH51KXGWJg5MxmRxXgM4hcYlvGYLtxn-2Eo1Ly4kB7Aue9vWaSPcQuMm-_DcbLiloxZoqSVdo3P4qRQdBRR50kwG/s320/blueSkiJump.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'cauldron-50bf1a6d442a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): cauldron-50bf1a6d442a.jpg"
elif [ -f 'cauldron-50bf1a6d442a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): cauldron-50bf1a6d442a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'cauldron-50bf1a6d442a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjLtee_Raa-kqlqXckqIj9CxThhVUAXsZVJPkzOk24n9F0Q7b0o5JprDrdSzAKt1q48BlLZPIQ4oRacfl9NHF2D4FbesBMhTsxgdfG159z0wAS1hkCRL6ewLNImFMySNDeFcbJqaK9gbDB/s320/cauldron.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: cauldron-50bf1a6d442a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'cauldron-50bf1a6d442a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjLtee_Raa-kqlqXckqIj9CxThhVUAXsZVJPkzOk24n9F0Q7b0o5JprDrdSzAKt1q48BlLZPIQ4oRacfl9NHF2D4FbesBMhTsxgdfG159z0wAS1hkCRL6ewLNImFMySNDeFcbJqaK9gbDB/s320/cauldron.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'RobsonSquareStreetPerform-b4679bd367ae.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): RobsonSquareStreetPerform-b4679bd367ae.jpg"
elif [ -f 'RobsonSquareStreetPerform-b4679bd367ae.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): RobsonSquareStreetPerform-b4679bd367ae.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'RobsonSquareStreetPerform-b4679bd367ae.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDtXhpZPIxQPorMUpXjqnVdmk5zZC8MQHBeeWkmc689m0JSAbDyJ95osK_2oyW90t4YfU0YcGrRjWguR-J6csEBC6RAGoaHScKJVvNn94GXb-nycOpuBOOyYCKFlz0rhPUVxlc7uTJlK76/s320/RobsonSquareStreetPerformer.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: RobsonSquareStreetPerform-b4679bd367ae.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'RobsonSquareStreetPerform-b4679bd367ae.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDtXhpZPIxQPorMUpXjqnVdmk5zZC8MQHBeeWkmc689m0JSAbDyJ95osK_2oyW90t4YfU0YcGrRjWguR-J6csEBC6RAGoaHScKJVvNn94GXb-nycOpuBOOyYCKFlz0rhPUVxlc7uTJlK76/s320/RobsonSquareStreetPerformer.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'countdown0-fe8d991a9524.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): countdown0-fe8d991a9524.jpg"
elif [ -f 'countdown0-fe8d991a9524.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): countdown0-fe8d991a9524.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'countdown0-fe8d991a9524.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbW_VA4NapSsjPmh3HHEsPagEvkY1i_2J3RtnFoobutdZbY9dbLowj7f6W7wDsmIiTDiC0MmhPF0KvvJ6ZOEWU_yhxtsi5x-ADo9nfYbxxgmFSbdkmu8SG-BUyLc17LESEK2NyjdCjgeUf/s200/countdown0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: countdown0-fe8d991a9524.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'countdown0-fe8d991a9524.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbW_VA4NapSsjPmh3HHEsPagEvkY1i_2J3RtnFoobutdZbY9dbLowj7f6W7wDsmIiTDiC0MmhPF0KvvJ6ZOEWU_yhxtsi5x-ADo9nfYbxxgmFSbdkmu8SG-BUyLc17LESEK2NyjdCjgeUf/s200/countdown0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'cypressSnow-f71eb48ed78f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): cypressSnow-f71eb48ed78f.jpg"
elif [ -f 'cypressSnow-f71eb48ed78f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): cypressSnow-f71eb48ed78f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'cypressSnow-f71eb48ed78f.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJInKTNDZBnF5gAlQMfWcEhbYkw9FxwkwwEsp_G_py8cAenbp8EZQbAT0XgRS6SJh5XohBqfJcuem49lTmi3QcLtcBVpb1RblNnf7oJWv3-VoLtvM8cMMXejY4fnaJseX7gnpV5aRfvDyV/s320/cypressSnow.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: cypressSnow-f71eb48ed78f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'cypressSnow-f71eb48ed78f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJInKTNDZBnF5gAlQMfWcEhbYkw9FxwkwwEsp_G_py8cAenbp8EZQbAT0XgRS6SJh5XohBqfJcuem49lTmi3QcLtcBVpb1RblNnf7oJWv3-VoLtvM8cMMXejY4fnaJseX7gnpV5aRfvDyV/s320/cypressSnow.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'green-Marlboro-78f870c2486a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): green-Marlboro-78f870c2486a.jpg"
elif [ -f 'green-Marlboro-78f870c2486a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): green-Marlboro-78f870c2486a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'green-Marlboro-78f870c2486a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinE5VsfYc0xgsyRui5k3VTqquGxQo6m0xhXUQ0ey6kHkXHS4ULd4monXP8g3IJw63K8FUGxE_miv8nlFMR_97XDVF9kP_nkxMxXm9ehlg2jZNwiVGN6qTph5cfos9qmqypl502MNUknLQk/s200/green-Marlboro.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: green-Marlboro-78f870c2486a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'green-Marlboro-78f870c2486a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinE5VsfYc0xgsyRui5k3VTqquGxQo6m0xhXUQ0ey6kHkXHS4ULd4monXP8g3IJw63K8FUGxE_miv8nlFMR_97XDVF9kP_nkxMxXm9ehlg2jZNwiVGN6qTph5cfos9qmqypl502MNUknLQk/s200/green-Marlboro.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'real2010Tickets-dfd95009f13f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): real2010Tickets-dfd95009f13f.jpg"
elif [ -f 'real2010Tickets-dfd95009f13f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): real2010Tickets-dfd95009f13f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'real2010Tickets-dfd95009f13f.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjS0Y7DDtSlmX4HUHb_HLyrp9ATAz17shCoMFyWBY4c_dz9w8IS8eUCjiL_N1NTubGqSQgd8WnCGp3O2jQTkmWomvhCel7bAHQgDoEQXI2Mn3_6j9BbyebIZ3FJCzGkdIDl9gmSLxQauuDG/s200/real2010Tickets.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: real2010Tickets-dfd95009f13f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'real2010Tickets-dfd95009f13f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjS0Y7DDtSlmX4HUHb_HLyrp9ATAz17shCoMFyWBY4c_dz9w8IS8eUCjiL_N1NTubGqSQgd8WnCGp3O2jQTkmWomvhCel7bAHQgDoEQXI2Mn3_6j9BbyebIZ3FJCzGkdIDl9gmSLxQauuDG/s200/real2010Tickets.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'olympic-art-56original-Dd-542f2fa52536.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): olympic-art-56original-Dd-542f2fa52536.jpg"
elif [ -f 'olympic-art-56original-Dd-542f2fa52536.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): olympic-art-56original-Dd-542f2fa52536.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'olympic-art-56original-Dd-542f2fa52536.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCo0FIcIVtYSs_OBSQi9HE8d-Vc9VjsIzsYOK_FkvQSzQ5EMhC9-yi0FQ7Fefy49XhWfTI6qfQqTlAmdLYzOamhJsoNdxExkwo-_jWBYgLA9Osv8mkNhN4F6wXQaeQbk1YYQODfM5ybxzH/s320/olympic_art_56original-Dd.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: olympic-art-56original-Dd-542f2fa52536.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'olympic-art-56original-Dd-542f2fa52536.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCo0FIcIVtYSs_OBSQi9HE8d-Vc9VjsIzsYOK_FkvQSzQ5EMhC9-yi0FQ7Fefy49XhWfTI6qfQqTlAmdLYzOamhJsoNdxExkwo-_jWBYgLA9Osv8mkNhN4F6wXQaeQbk1YYQODfM5ybxzH/s320/olympic_art_56original-Dd.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'olympic-gold-medal-46imgF-44d81e2143e0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): olympic-gold-medal-46imgF-44d81e2143e0.jpg"
elif [ -f 'olympic-gold-medal-46imgF-44d81e2143e0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): olympic-gold-medal-46imgF-44d81e2143e0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'olympic-gold-medal-46imgF-44d81e2143e0.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_TyghnEGVlo30pG1vG9b6naxGi2VrMuk2e71lZSshtVRAEq8pyZbdAfzdisiiea1hHV7_lE8h8MQ5TZM4kinUqAZ8TzBEV7Z939d5-Ca43SSyp6kkBT_cMbKbfiQu5-ZI9GLDxAB4K26A/s320/olympic_gold_medal_46imgFLead-DN.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: olympic-gold-medal-46imgF-44d81e2143e0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'olympic-gold-medal-46imgF-44d81e2143e0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_TyghnEGVlo30pG1vG9b6naxGi2VrMuk2e71lZSshtVRAEq8pyZbdAfzdisiiea1hHV7_lE8h8MQ5TZM4kinUqAZ8TzBEV7Z939d5-Ca43SSyp6kkBT_cMbKbfiQu5-ZI9GLDxAB4K26A/s320/olympic_gold_medal_46imgFLead-DN.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'lookRight-57caaa517d9b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): lookRight-57caaa517d9b.jpg"
elif [ -f 'lookRight-57caaa517d9b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): lookRight-57caaa517d9b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'lookRight-57caaa517d9b.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmSGhv_pwGZ_1dMG5CFUgxFeK9URlj1sly8SPhJXsPD1u1V9xefe_lCG-Ep-i9heVGaTYAeTMGMIHTSx8c13KYjg1llcgFYNagJXDHryDTDbWlhT5MZc4FHqdDcqOYbn8NeqMAk8BxkKvl/s320/lookRight.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: lookRight-57caaa517d9b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'lookRight-57caaa517d9b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmSGhv_pwGZ_1dMG5CFUgxFeK9URlj1sly8SPhJXsPD1u1V9xefe_lCG-Ep-i9heVGaTYAeTMGMIHTSx8c13KYjg1llcgFYNagJXDHryDTDbWlhT5MZc4FHqdDcqOYbn8NeqMAk8BxkKvl/s320/lookRight.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'img-0827-3ebeb701a4a9.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): img-0827-3ebeb701a4a9.jpg"
elif [ -f 'img-0827-3ebeb701a4a9.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): img-0827-3ebeb701a4a9.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'img-0827-3ebeb701a4a9.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJ7bYgDwCDf7reWqS2vq3hDxwegd5OS1O_v6GZqbjMm0QjEdQh7qWXZpYY-OAy_tExmeSCuMzlJrZ_VDu4RX6jWWS-WHz0XST-N_BB3suw47C438ich9BUB4h3UP09JWUU5fxbBUzyh3pq/s320/img_0827.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: img-0827-3ebeb701a4a9.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'img-0827-3ebeb701a4a9.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJ7bYgDwCDf7reWqS2vq3hDxwegd5OS1O_v6GZqbjMm0QjEdQh7qWXZpYY-OAy_tExmeSCuMzlJrZ_VDu4RX6jWWS-WHz0XST-N_BB3suw47C438ich9BUB4h3UP09JWUU5fxbBUzyh3pq/s320/img_0827.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '10234-145740197524-616027-9d11b9993a95.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 10234-145740197524-616027-9d11b9993a95.jpg"
elif [ -f '10234-145740197524-616027-9d11b9993a95.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 10234-145740197524-616027-9d11b9993a95.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '10234-145740197524-616027-9d11b9993a95.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgYAk0KtTa9PnllhkBFBWUvu3yBwLLCN2wMtUo3iV_S7pyUF1DN6aIi2mGC-rNF0lhC0IoK5j-veY4OmjzNqM4r4jvRhK1KqGvFlQl3R_X3fziJRFgD7lkmmX4ln9lywxtpt2-P1DyN7A89/s320/10234_145740197524_616027524_3129070_1388148_n.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 10234-145740197524-616027-9d11b9993a95.jpg"
else
  FAILED=$((FAILED + 1))
  touch '10234-145740197524-616027-9d11b9993a95.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgYAk0KtTa9PnllhkBFBWUvu3yBwLLCN2wMtUo3iV_S7pyUF1DN6aIi2mGC-rNF0lhC0IoK5j-veY4OmjzNqM4r4jvRhK1KqGvFlQl3R_X3fziJRFgD7lkmmX4ln9lywxtpt2-P1DyN7A89/s320/10234_145740197524_616027524_3129070_1388148_n.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0624-70c5e402efbe.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0624-70c5e402efbe.jpg"
elif [ -f 'IMG-0624-70c5e402efbe.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0624-70c5e402efbe.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0624-70c5e402efbe.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi1OWL6-c9o-dqkBX1mmlkQiKHT8Y1ByQJtMm8Xejv2b3Fq9PK3Y76r56YOsQVlWbrFvRxJ0Xcb0i0eHaEYEzhZu1oxig62Meb-eleCbNXmBrTJqT6UNt-u7mbKWRd4lKsvExAY4OhMIfYQ/s320/IMG_0624.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0624-70c5e402efbe.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0624-70c5e402efbe.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi1OWL6-c9o-dqkBX1mmlkQiKHT8Y1ByQJtMm8Xejv2b3Fq9PK3Y76r56YOsQVlWbrFvRxJ0Xcb0i0eHaEYEzhZu1oxig62Meb-eleCbNXmBrTJqT6UNt-u7mbKWRd4lKsvExAY4OhMIfYQ/s320/IMG_0624.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0629-3655f194cabd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0629-3655f194cabd.jpg"
elif [ -f 'IMG-0629-3655f194cabd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0629-3655f194cabd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0629-3655f194cabd.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlxbW85eQGvqoYDTPat1nyoBJ4isTKeedFir6FF2j_YQEFSKFboxJgab-Jo_35M-1LMZw2T1ACKRZt2zXZqZmVRave70mv0VkHVNNz4L2F0amPbDE1rH6qPlZEqeP2nIwut_YHzsZQcw2K/s320/IMG_0629.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0629-3655f194cabd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0629-3655f194cabd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlxbW85eQGvqoYDTPat1nyoBJ4isTKeedFir6FF2j_YQEFSKFboxJgab-Jo_35M-1LMZw2T1ACKRZt2zXZqZmVRave70mv0VkHVNNz4L2F0amPbDE1rH6qPlZEqeP2nIwut_YHzsZQcw2K/s320/IMG_0629.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0632-a9c5be77aa84.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0632-a9c5be77aa84.jpg"
elif [ -f 'IMG-0632-a9c5be77aa84.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0632-a9c5be77aa84.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0632-a9c5be77aa84.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfE-KrLNdA_lq-PFNdluMtND7EYbj9TWi_auidpC-mr3oNYgMpGoSk0ICtRg9w7L0zQlGgaJ2S6ajoTWwDU72ERyhQmGXunECAVoWJxiMKKRFm1QOEkv16z2j_qi0WGwASTbsbhErQzZMO/s320/IMG_0632.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0632-a9c5be77aa84.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0632-a9c5be77aa84.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfE-KrLNdA_lq-PFNdluMtND7EYbj9TWi_auidpC-mr3oNYgMpGoSk0ICtRg9w7L0zQlGgaJ2S6ajoTWwDU72ERyhQmGXunECAVoWJxiMKKRFm1QOEkv16z2j_qi0WGwASTbsbhErQzZMO/s320/IMG_0632.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'canadaline-logo-427b175cd378.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): canadaline-logo-427b175cd378.jpg"
elif [ -f 'canadaline-logo-427b175cd378.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): canadaline-logo-427b175cd378.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'canadaline-logo-427b175cd378.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMryR2Be3DVRknU7FfitRSK3bz5f_uDPpNTNXd3JK8QKD4D2cjSiRCiOLn_Pz_QAZlWpxQHlHWWJrmck7tiJxhVByHR9cwpbrIcLTXlcGTvDNce09Pv5U0Ax047_Qv6KU8mniXfHbzEfpk/s320/canadaline_logo.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: canadaline-logo-427b175cd378.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'canadaline-logo-427b175cd378.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMryR2Be3DVRknU7FfitRSK3bz5f_uDPpNTNXd3JK8QKD4D2cjSiRCiOLn_Pz_QAZlWpxQHlHWWJrmck7tiJxhVByHR9cwpbrIcLTXlcGTvDNce09Pv5U0Ax047_Qv6KU8mniXfHbzEfpk/s320/canadaline_logo.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'canadaline-map-eab42acaa28c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): canadaline-map-eab42acaa28c.jpg"
elif [ -f 'canadaline-map-eab42acaa28c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): canadaline-map-eab42acaa28c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'canadaline-map-eab42acaa28c.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqeCKPPm4PUd2CLgGjqXtqHdcRNte3MWtG5NQI3F-DICka3rqWOJ8PpPeJe9bux113XASBv_PiruZijFa2Yt_qbajTd9R0J63BPjd4JrO3SkUAWaJ0Y1Y-wJhWZ6kTf5CMw6wZgPDbYgHs/s320/canadaline_map.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: canadaline-map-eab42acaa28c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'canadaline-map-eab42acaa28c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqeCKPPm4PUd2CLgGjqXtqHdcRNte3MWtG5NQI3F-DICka3rqWOJ8PpPeJe9bux113XASBv_PiruZijFa2Yt_qbajTd9R0J63BPjd4JrO3SkUAWaJ0Y1Y-wJhWZ6kTf5CMw6wZgPDbYgHs/s320/canadaline_map.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-04-c71c18672d21.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-04-c71c18672d21.jpg"
elif [ -f 'Ziptrek-Image-5-04-c71c18672d21.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-04-c71c18672d21.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Ziptrek-Image-5-04-c71c18672d21.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjQT4s0iUyQklUfQUTt3-sEbsVRg2tdcVkyrd3q-9s1bIxlVFFh1xHxG5m13D2uxm3CRcQ_bosTV5TlfAV6IXSe9ZRK8061XM1cBmukc2Uzkaqp23n0l5E7coHdZAm_w0y6fgGQhG_sViNn/s320/Ziptrek+Image+5-04.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-04-c71c18672d21.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-04-c71c18672d21.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjQT4s0iUyQklUfQUTt3-sEbsVRg2tdcVkyrd3q-9s1bIxlVFFh1xHxG5m13D2uxm3CRcQ_bosTV5TlfAV6IXSe9ZRK8061XM1cBmukc2Uzkaqp23n0l5E7coHdZAm_w0y6fgGQhG_sViNn/s320/Ziptrek+Image+5-04.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-03-d22598793c6f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-03-d22598793c6f.jpg"
elif [ -f 'Ziptrek-Image-5-03-d22598793c6f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-03-d22598793c6f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Ziptrek-Image-5-03-d22598793c6f.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgmQfSS2ye0_ATBX8NLpOcTo3IA3p8L39udrS3agpxRdUdzOowqkMwjA9cs3rfYrfUjr60Xrq1oDLIGS-pbj9FY2s-WSM-ql0iXXnWVEoMzVFXtF98c4TTngD1u7Y2dhqcgAwuw4mDgA9NG/s320/Ziptrek+Image+5-03.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-03-d22598793c6f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-03-d22598793c6f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgmQfSS2ye0_ATBX8NLpOcTo3IA3p8L39udrS3agpxRdUdzOowqkMwjA9cs3rfYrfUjr60Xrq1oDLIGS-pbj9FY2s-WSM-ql0iXXnWVEoMzVFXtF98c4TTngD1u7Y2dhqcgAwuw4mDgA9NG/s320/Ziptrek+Image+5-03.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-02-c61a250d01fb.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-02-c61a250d01fb.jpg"
elif [ -f 'Ziptrek-Image-5-02-c61a250d01fb.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-02-c61a250d01fb.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Ziptrek-Image-5-02-c61a250d01fb.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-Nv-Ts2ExmhVJa-vso7DLhroToIAhGOJgohVidWsrSRp1MZsQAMyUi8S5W2_vxSEGcdTp0BfLWAbVdbX5XTuQnnNpybzM8V1UOoaNe0bP1-oezYoiZRQaXUBBT-RazcoKjF2C_VDa_7Ev/s320/Ziptrek+Image+5-02.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-02-c61a250d01fb.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-02-c61a250d01fb.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-Nv-Ts2ExmhVJa-vso7DLhroToIAhGOJgohVidWsrSRp1MZsQAMyUi8S5W2_vxSEGcdTp0BfLWAbVdbX5XTuQnnNpybzM8V1UOoaNe0bP1-oezYoiZRQaXUBBT-RazcoKjF2C_VDa_7Ev/s320/Ziptrek+Image+5-02.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-01-dccc7f185aa8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-01-dccc7f185aa8.jpg"
elif [ -f 'Ziptrek-Image-5-01-dccc7f185aa8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-01-dccc7f185aa8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Ziptrek-Image-5-01-dccc7f185aa8.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguKp81Gi1jRrXhq8qu9kMyKa2AkMc6lywLv5GNcCXEUv8UZXz7iTPUvUqGSOAz3o-YZdLJZzpwIkhjC18_7exu3xXXVbt9KWZCq3dNhHA9Lj8MY_xqsgK_g_7eNoZZICsC-CAj9YDSyDL-/s320/Ziptrek+Image+5-01.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-01-dccc7f185aa8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-01-dccc7f185aa8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguKp81Gi1jRrXhq8qu9kMyKa2AkMc6lywLv5GNcCXEUv8UZXz7iTPUvUqGSOAz3o-YZdLJZzpwIkhjC18_7exu3xXXVbt9KWZCq3dNhHA9Lj8MY_xqsgK_g_7eNoZZICsC-CAj9YDSyDL-/s320/Ziptrek+Image+5-01.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020580-7e88ba3470e3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020580-7e88ba3470e3.jpg"
elif [ -f 'P1020580-7e88ba3470e3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020580-7e88ba3470e3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'P1020580-7e88ba3470e3.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh5P2Z9fwiuZacMVYRI9ffa_A2qDcfnATakDqTKEpnG0EkmhOJxUSZhnQiZHY8ZH6i2z_TUmYOnolE2lHmGa0HwRJkzOGOs-XH8-adjLZ1cfUvKbf3HdrexMPuDMGQFxV33LK2BghjA0JUd/s320/P1020580.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020580-7e88ba3470e3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020580-7e88ba3470e3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh5P2Z9fwiuZacMVYRI9ffa_A2qDcfnATakDqTKEpnG0EkmhOJxUSZhnQiZHY8ZH6i2z_TUmYOnolE2lHmGa0HwRJkzOGOs-XH8-adjLZ1cfUvKbf3HdrexMPuDMGQFxV33LK2BghjA0JUd/s320/P1020580.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020593-951a22b9f0eb.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020593-951a22b9f0eb.jpg"
elif [ -f 'P1020593-951a22b9f0eb.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020593-951a22b9f0eb.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'P1020593-951a22b9f0eb.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_W6QltHzCgA2W6ZazKWlkLCQ71WqFqsTm7O2aS7eriy1yXVHu6yvoUorLUSYFmRcPY4J6J56VqF3FY1bQLX-X53_9GcH9BI38hwj-Opx7vc9VFx1_QNfZLRHt6eBrDDCMP9uR_QtfqPMW/s320/P1020593.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020593-951a22b9f0eb.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020593-951a22b9f0eb.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_W6QltHzCgA2W6ZazKWlkLCQ71WqFqsTm7O2aS7eriy1yXVHu6yvoUorLUSYFmRcPY4J6J56VqF3FY1bQLX-X53_9GcH9BI38hwj-Opx7vc9VFx1_QNfZLRHt6eBrDDCMP9uR_QtfqPMW/s320/P1020593.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020584-8b19fe840446.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020584-8b19fe840446.jpg"
elif [ -f 'P1020584-8b19fe840446.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020584-8b19fe840446.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'P1020584-8b19fe840446.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbnboVdSTu6cjlKrGcRSe1HRjI94ZHk2E4qYWBYoHM2guOI5ZwuHFzKBix02HafN1hCbPl0YnHcSd3_m7u7h8Y222z09k6hXdxQHE4xr14NepS_itkluIHXy-e0Dh9X1lw8c9G_majiL0M/s320/P1020584.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020584-8b19fe840446.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020584-8b19fe840446.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbnboVdSTu6cjlKrGcRSe1HRjI94ZHk2E4qYWBYoHM2guOI5ZwuHFzKBix02HafN1hCbPl0YnHcSd3_m7u7h8Y222z09k6hXdxQHE4xr14NepS_itkluIHXy-e0Dh9X1lw8c9G_majiL0M/s320/P1020584.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'balogo-3a98c39fd30f.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): balogo-3a98c39fd30f.gif"
elif [ -f 'balogo-3a98c39fd30f.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): balogo-3a98c39fd30f.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'balogo-3a98c39fd30f.gif' 'http://www.britishairways.com/cms/global/assets/images/site/brand/balogo.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: balogo-3a98c39fd30f.gif"
else
  FAILED=$((FAILED + 1))
  touch 'balogo-3a98c39fd30f.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.britishairways.com/cms/global/assets/images/site/brand/balogo.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'yellowgreentelephone-b473dab2d12b.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): yellowgreentelephone-b473dab2d12b.gif"
elif [ -f 'yellowgreentelephone-b473dab2d12b.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): yellowgreentelephone-b473dab2d12b.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'yellowgreentelephone-b473dab2d12b.gif' 'http://www.telephoneart.com/clipart/yellowgreentelephone.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: yellowgreentelephone-b473dab2d12b.gif"
else
  FAILED=$((FAILED + 1))
  touch 'yellowgreentelephone-b473dab2d12b.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.telephoneart.com/clipart/yellowgreentelephone.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'vigyazz-a97c31728e59.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): vigyazz-a97c31728e59.jpg"
elif [ -f 'vigyazz-a97c31728e59.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): vigyazz-a97c31728e59.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'vigyazz-a97c31728e59.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtUj_j6rIzgwIj0ytUx59b9ynjbSknENxMqKsEuBUYWFALuJ2LX_oPBuYiyj4PhaDNj2drWnRnWOsUTvG5awYHRCkYN2gQZ7hA3TAZ-3G6G7mec55GCb2Zuxa7rovmvVsRun3a0Qm_OL_c/s200/vigyazz.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: vigyazz-a97c31728e59.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'vigyazz-a97c31728e59.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtUj_j6rIzgwIj0ytUx59b9ynjbSknENxMqKsEuBUYWFALuJ2LX_oPBuYiyj4PhaDNj2drWnRnWOsUTvG5awYHRCkYN2gQZ7hA3TAZ-3G6G7mec55GCb2Zuxa7rovmvVsRun3a0Qm_OL_c/s200/vigyazz.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0325-e7f80ba95c5a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0325-e7f80ba95c5a.jpg"
elif [ -f 'IMG-0325-e7f80ba95c5a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0325-e7f80ba95c5a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0325-e7f80ba95c5a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhMbfzVxXlIvXr8CQ8-ZUYFzLNEi3RaxBXTgMVtgArpKmnYHQYcw2a63Pen8wajg05l1EpICYMcYTSkvYE5jS33UfhwasnQdRLxWFtGJ_uvYoEEm5cLJMKZKi3VKVlT2InrgrcHTVup7E/s912/IMG_0325.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0325-e7f80ba95c5a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0325-e7f80ba95c5a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhMbfzVxXlIvXr8CQ8-ZUYFzLNEi3RaxBXTgMVtgArpKmnYHQYcw2a63Pen8wajg05l1EpICYMcYTSkvYE5jS33UfhwasnQdRLxWFtGJ_uvYoEEm5cLJMKZKi3VKVlT2InrgrcHTVup7E/s912/IMG_0325.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'smilingheals-67cf15e7c116.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): smilingheals-67cf15e7c116.jpg"
elif [ -f 'smilingheals-67cf15e7c116.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): smilingheals-67cf15e7c116.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'smilingheals-67cf15e7c116.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6Bibd1RPFKzeNcIhKDeLWB8fLBAnvMrZw3fiyoKFnlP_Hw8U0AsQGxqdrTg93mBzRRJfQduTtANc8y88vn9Jir8tZ6I7ymWUM1Ji9Y74oNVwqv3-u6fSEaqdHg4AGHwUOlC3CNkkfy_Bq/s200/smilingheals.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: smilingheals-67cf15e7c116.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'smilingheals-67cf15e7c116.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6Bibd1RPFKzeNcIhKDeLWB8fLBAnvMrZw3fiyoKFnlP_Hw8U0AsQGxqdrTg93mBzRRJfQduTtANc8y88vn9Jir8tZ6I7ymWUM1Ji9Y74oNVwqv3-u6fSEaqdHg4AGHwUOlC3CNkkfy_Bq/s200/smilingheals.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0286-1--b86971f5ae6d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0286-1--b86971f5ae6d.jpg"
elif [ -f 'IMG-0286-1--b86971f5ae6d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0286-1--b86971f5ae6d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0286-1--b86971f5ae6d.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiLyhXt_rUmzw_U0q7WciZd3JS4gsy2H264HsmbIWBRBLWGEwe_dOtH_JXA3TlocSwQDjM4mNAIVZSjpRLXh_a8Dbce3nrP4BsBFgMFEvB4NsavWKjhxcuppURf9BHutNQ_NJv3nKpOCBX-/s200/IMG_0286%5B1%5D.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0286-1--b86971f5ae6d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0286-1--b86971f5ae6d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiLyhXt_rUmzw_U0q7WciZd3JS4gsy2H264HsmbIWBRBLWGEwe_dOtH_JXA3TlocSwQDjM4mNAIVZSjpRLXh_a8Dbce3nrP4BsBFgMFEvB4NsavWKjhxcuppURf9BHutNQ_NJv3nKpOCBX-/s200/IMG_0286%5B1%5D.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'petiiphone-a7af2a4fd6ad.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): petiiphone-a7af2a4fd6ad.jpg"
elif [ -f 'petiiphone-a7af2a4fd6ad.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): petiiphone-a7af2a4fd6ad.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'petiiphone-a7af2a4fd6ad.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiaziFLNUEbycmV_pca8_OoexCnoZPI559mtPRp7L1V-nHHHMfeseXT48xaVeAr296j22VOFt5Dh-Xck2GnjZ4QLLLCbt3O2MPr77td_aRJWtTjkW-yMfZSAI_GrZr5QI6tFnQUUi0iOwS7/s200/petiiphone.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: petiiphone-a7af2a4fd6ad.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'petiiphone-a7af2a4fd6ad.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiaziFLNUEbycmV_pca8_OoexCnoZPI559mtPRp7L1V-nHHHMfeseXT48xaVeAr296j22VOFt5Dh-Xck2GnjZ4QLLLCbt3O2MPr77td_aRJWtTjkW-yMfZSAI_GrZr5QI6tFnQUUi0iOwS7/s200/petiiphone.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2220046-4263-66fa463eb1d2.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2220046-4263-66fa463eb1d2.jpg"
elif [ -f 'n725306787-2220046-4263-66fa463eb1d2.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2220046-4263-66fa463eb1d2.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'n725306787-2220046-4263-66fa463eb1d2.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSVIwVmC2Ieiq6C1BdTI_ffQUz4KLfd9oIQb4NVE9hDNc9MVpMWqKS1vXJ8V1-LJZZBeafRePrPRY9NeBo6dLlC03G3TfpIsTczZOtavHoM9yUDzelsxVKfygvrdZlFYHnzHfpVvCt2CPS/s200/n725306787_2220046_4263.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2220046-4263-66fa463eb1d2.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2220046-4263-66fa463eb1d2.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSVIwVmC2Ieiq6C1BdTI_ffQUz4KLfd9oIQb4NVE9hDNc9MVpMWqKS1vXJ8V1-LJZZBeafRePrPRY9NeBo6dLlC03G3TfpIsTczZOtavHoM9yUDzelsxVKfygvrdZlFYHnzHfpVvCt2CPS/s200/n725306787_2220046_4263.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2220041-2772-b298e8eaeb9a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2220041-2772-b298e8eaeb9a.jpg"
elif [ -f 'n725306787-2220041-2772-b298e8eaeb9a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2220041-2772-b298e8eaeb9a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'n725306787-2220041-2772-b298e8eaeb9a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjB_cvUmg5Tymm_dfMHZoXd7j5EWo19sIhshGsHyQspE8KFV9SKyt4vnCEA4LSAAbSh2J6bkzWGXU-Gn9_Y3hm9vkBd0tY7IbIk8cxDZ85uIuiJ_xiBLnmRnq-PRjPV2zaMUHhQnAuzQa0g/s200/n725306787_2220041_2772.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2220041-2772-b298e8eaeb9a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2220041-2772-b298e8eaeb9a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjB_cvUmg5Tymm_dfMHZoXd7j5EWo19sIhshGsHyQspE8KFV9SKyt4vnCEA4LSAAbSh2J6bkzWGXU-Gn9_Y3hm9vkBd0tY7IbIk8cxDZ85uIuiJ_xiBLnmRnq-PRjPV2zaMUHhQnAuzQa0g/s200/n725306787_2220041_2772.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2173847-8893-a1d1db2c096b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2173847-8893-a1d1db2c096b.jpg"
elif [ -f 'n725306787-2173847-8893-a1d1db2c096b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2173847-8893-a1d1db2c096b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'n725306787-2173847-8893-a1d1db2c096b.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsaiI7nUhJRy9tvHHgLObZJasfNDVK4b-Tbxg3e8Fz8qmtpS4BtTkdIExG9I8EuwoXlNmfF-nYxyLwXPa2jF-u26F_sg-d43L80PImhIVLjyHb_1qBCA_CNTt_JQZkmitp1lzOEFUCA5Df/s200/n725306787_2173847_8893.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2173847-8893-a1d1db2c096b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2173847-8893-a1d1db2c096b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsaiI7nUhJRy9tvHHgLObZJasfNDVK4b-Tbxg3e8Fz8qmtpS4BtTkdIExG9I8EuwoXlNmfF-nYxyLwXPa2jF-u26F_sg-d43L80PImhIVLjyHb_1qBCA_CNTt_JQZkmitp1lzOEFUCA5Df/s200/n725306787_2173847_8893.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2104394-7036-4114ffe8df4c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2104394-7036-4114ffe8df4c.jpg"
elif [ -f 'n725306787-2104394-7036-4114ffe8df4c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2104394-7036-4114ffe8df4c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'n725306787-2104394-7036-4114ffe8df4c.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXVtervso3xaeqkUoOYYd-lAt8IscBB4o4hHjC0sKbhInMDMxD6wNEfZgEqpPGFvZBc5BVwLMQwQmotiH_Rz-lmBLex07SL2GyFMpyG1FAFbDDYkzSG-Tj5-wQt4oL3pAIcDqxxY_RZBI8/s200/n725306787_2104394_7036.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2104394-7036-4114ffe8df4c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2104394-7036-4114ffe8df4c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXVtervso3xaeqkUoOYYd-lAt8IscBB4o4hHjC0sKbhInMDMxD6wNEfZgEqpPGFvZBc5BVwLMQwQmotiH_Rz-lmBLex07SL2GyFMpyG1FAFbDDYkzSG-Tj5-wQt4oL3pAIcDqxxY_RZBI8/s200/n725306787_2104394_7036.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'theartofquitting-00163-ca50ea8831f5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): theartofquitting-00163-ca50ea8831f5.jpg"
elif [ -f 'theartofquitting-00163-ca50ea8831f5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): theartofquitting-00163-ca50ea8831f5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'theartofquitting-00163-ca50ea8831f5.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhl62LY47VXtOqgA772slC3WISInMqS-oD_a2-UTIMAQT9is5ZZxs2IGpiVWqEWYxyh0EU_9idLkorBLH2u-ATzxm5kuWKZbdKxGCN9xqnxIr3qFq7Iq4zyCEjTLhIqNYq5w95-3QO6Uk__/s200/theartofquitting_00163.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: theartofquitting-00163-ca50ea8831f5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'theartofquitting-00163-ca50ea8831f5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhl62LY47VXtOqgA772slC3WISInMqS-oD_a2-UTIMAQT9is5ZZxs2IGpiVWqEWYxyh0EU_9idLkorBLH2u-ATzxm5kuWKZbdKxGCN9xqnxIr3qFq7Iq4zyCEjTLhIqNYq5w95-3QO6Uk__/s200/theartofquitting_00163.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'van-54638bc36f1d.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): van-54638bc36f1d.gif"
elif [ -f 'van-54638bc36f1d.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): van-54638bc36f1d.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'van-54638bc36f1d.gif' 'http://cdn.nhl.com/images/logos/75/van.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: van-54638bc36f1d.gif"
else
  FAILED=$((FAILED + 1))
  touch 'van-54638bc36f1d.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://cdn.nhl.com/images/logos/75/van.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0142ok-212747870023.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0142ok-212747870023.jpg"
elif [ -f 'IMG-0142ok-212747870023.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0142ok-212747870023.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0142ok-212747870023.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilKL3x6VJcjoYTHqiciP7vKEVyOG6MiT8VYQ_zMBt-bT6gjXdE1tVX4C-3ElBeyMDa-iXz0REQFN2gLpSdWCOo7KQ1Qv3U_aNSKrxuTDs-tlWLTiq1xC-OTgozq3C4BOTz3qOgjwgoM7cN/s320/IMG_0142ok.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0142ok-212747870023.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0142ok-212747870023.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilKL3x6VJcjoYTHqiciP7vKEVyOG6MiT8VYQ_zMBt-bT6gjXdE1tVX4C-3ElBeyMDa-iXz0REQFN2gLpSdWCOo7KQ1Qv3U_aNSKrxuTDs-tlWLTiq1xC-OTgozq3C4BOTz3qOgjwgoM7cN/s320/IMG_0142ok.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0140-2177bb336692.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0140-2177bb336692.jpg"
elif [ -f 'IMG-0140-2177bb336692.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0140-2177bb336692.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0140-2177bb336692.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEidfTeauzSLIdbj_xVUxhbQ8RCGuksJgHOUBrCUK7U1Zd8Irna9mfUMx-w6xDtiVtWdi8GScowhtlruzcnokcTRzmQEHXMt1IBgTBSkd8zh2OGGqQtPO_-fSrHHs5oPf42LlRw1mi8aX6IF/s320/IMG_0140.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0140-2177bb336692.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0140-2177bb336692.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEidfTeauzSLIdbj_xVUxhbQ8RCGuksJgHOUBrCUK7U1Zd8Irna9mfUMx-w6xDtiVtWdi8GScowhtlruzcnokcTRzmQEHXMt1IBgTBSkd8zh2OGGqQtPO_-fSrHHs5oPf42LlRw1mi8aX6IF/s320/IMG_0140.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-7006-018bdad1768e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-7006-018bdad1768e.jpg"
elif [ -f 'IMG-7006-018bdad1768e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-7006-018bdad1768e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-7006-018bdad1768e.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkPyDgEqLWLWOkp8mvQ1r3VNn4sxBRDzBBswNxSW6CXBp1gbKVl0WaegzZgFrbRzTXYt5Q-n7QAQKjTlNweiQOf5gVs-bsedDl3r73BSlaS-PwUZvwFQoTDHixv6oNU0Dbpuw9B8HL6ExA/s320/IMG_7006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-7006-018bdad1768e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-7006-018bdad1768e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkPyDgEqLWLWOkp8mvQ1r3VNn4sxBRDzBBswNxSW6CXBp1gbKVl0WaegzZgFrbRzTXYt5Q-n7QAQKjTlNweiQOf5gVs-bsedDl3r73BSlaS-PwUZvwFQoTDHixv6oNU0Dbpuw9B8HL6ExA/s320/IMG_7006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0124-a0198b0463d8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0124-a0198b0463d8.jpg"
elif [ -f 'IMG-0124-a0198b0463d8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0124-a0198b0463d8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0124-a0198b0463d8.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3SD-Ts0XSVdJpG-U8vOSoJOW4hU2TuwabHt0UYMWw3a8d763fIkAS3FDVZCVfXguCo2qUxMyG8oEsF6fziQljIptGkOxUQLfpamCGoX-imeUn2wLjEW1a2hvS_pSG81Kk8JQFj6dALkzn/s320/IMG_0124.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0124-a0198b0463d8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0124-a0198b0463d8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3SD-Ts0XSVdJpG-U8vOSoJOW4hU2TuwabHt0UYMWw3a8d763fIkAS3FDVZCVfXguCo2qUxMyG8oEsF6fziQljIptGkOxUQLfpamCGoX-imeUn2wLjEW1a2hvS_pSG81Kk8JQFj6dALkzn/s320/IMG_0124.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0126-3d18dd6f901c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0126-3d18dd6f901c.jpg"
elif [ -f 'IMG-0126-3d18dd6f901c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0126-3d18dd6f901c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0126-3d18dd6f901c.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKGw8fC7yDzOqX-PynhB8K_Gpe6jtzUV9ys3PXWCPLS_rVBEErxGoxeuaY7zQzx0xB27hBZ0anqO4gH2zf5XAy9bbXO9yHtTQ6WxIiYHyTAMWsuar8cTzy9WfRIALyzwr088QvcC8IEJux/s320/IMG_0126.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0126-3d18dd6f901c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0126-3d18dd6f901c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKGw8fC7yDzOqX-PynhB8K_Gpe6jtzUV9ys3PXWCPLS_rVBEErxGoxeuaY7zQzx0xB27hBZ0anqO4gH2zf5XAy9bbXO9yHtTQ6WxIiYHyTAMWsuar8cTzy9WfRIALyzwr088QvcC8IEJux/s320/IMG_0126.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'yvr2bud-b183b290671a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): yvr2bud-b183b290671a.jpg"
elif [ -f 'yvr2bud-b183b290671a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): yvr2bud-b183b290671a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'yvr2bud-b183b290671a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5vGwIyKqXicCcimOENNd9OIohevvyJd_WOerArh8s97E501bTtiFKwXXqFk1Ujxas3C9yTxMI3qGfoDJw1CD2iCdd9j5URjqV0WAyEd2O0ECIRP9GsC0HCbIOaFF3b58zA5lfSmu8E6jD/s320/yvr2bud.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: yvr2bud-b183b290671a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'yvr2bud-b183b290671a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5vGwIyKqXicCcimOENNd9OIohevvyJd_WOerArh8s97E501bTtiFKwXXqFk1Ujxas3C9yTxMI3qGfoDJw1CD2iCdd9j5URjqV0WAyEd2O0ECIRP9GsC0HCbIOaFF3b58zA5lfSmu8E6jD/s320/yvr2bud.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-6612-cde78897e07b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-6612-cde78897e07b.jpg"
elif [ -f 'IMG-6612-cde78897e07b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-6612-cde78897e07b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-6612-cde78897e07b.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgwMOSQ1GZ4CT5oFn441k3FzON5EYarN9G6BA4otK-vpRXf_aJniH0rlTU_xBHh0Z04Grf_Axpyvqz1H5J8wPT_163FiveCHqd5qC9vXw-EdxvG2wfXNLGKs1YpQfltu1JDcFXZyZ2Bll_U/s320/IMG_6612.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-6612-cde78897e07b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-6612-cde78897e07b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgwMOSQ1GZ4CT5oFn441k3FzON5EYarN9G6BA4otK-vpRXf_aJniH0rlTU_xBHh0Z04Grf_Axpyvqz1H5J8wPT_163FiveCHqd5qC9vXw-EdxvG2wfXNLGKs1YpQfltu1JDcFXZyZ2Bll_U/s320/IMG_6612.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin1-46c385c90aae.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin1-46c385c90aae.jpg"
elif [ -f 'tramboulin1-46c385c90aae.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin1-46c385c90aae.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'tramboulin1-46c385c90aae.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhHl0fwYeDx5lWqEhdG5Sp3PBR58Fo-JYRi9p3Pvw90Wq34oTKr9SE9q8w2nkjNsM_1MRRnDZ5xlL1b4tEgGlSmpxLRBIGb7nR-pzDLHlBD_-VGdWO6BWHNNhrfkMivLRQeOgXOWK8UTsQ/s320/tramboulin1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin1-46c385c90aae.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin1-46c385c90aae.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhHl0fwYeDx5lWqEhdG5Sp3PBR58Fo-JYRi9p3Pvw90Wq34oTKr9SE9q8w2nkjNsM_1MRRnDZ5xlL1b4tEgGlSmpxLRBIGb7nR-pzDLHlBD_-VGdWO6BWHNNhrfkMivLRQeOgXOWK8UTsQ/s320/tramboulin1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin2-5277bfb45759.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin2-5277bfb45759.jpg"
elif [ -f 'tramboulin2-5277bfb45759.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin2-5277bfb45759.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'tramboulin2-5277bfb45759.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEir7JvA1MUicqhMCnHaRZbCDrOfkrbfJelItQ32aR34Hx_oJx-G81tnR3bnEECz-WVhyphenhyphenvLFP81VttdtA25KpPg59KuAbWRW7SnrhGHOPMA6zBUJuPPPv9g_dFvRYDwAwm91o_EZU8v4Qjvd/s320/tramboulin2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin2-5277bfb45759.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin2-5277bfb45759.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEir7JvA1MUicqhMCnHaRZbCDrOfkrbfJelItQ32aR34Hx_oJx-G81tnR3bnEECz-WVhyphenhyphenvLFP81VttdtA25KpPg59KuAbWRW7SnrhGHOPMA6zBUJuPPPv9g_dFvRYDwAwm91o_EZU8v4Qjvd/s320/tramboulin2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin3-3f355381f036.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin3-3f355381f036.jpg"
elif [ -f 'tramboulin3-3f355381f036.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin3-3f355381f036.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'tramboulin3-3f355381f036.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKQIE8x8M6RI0MtNuJksqMO6dIu_k64nMWrBiPmmxQtY2KYJm2drFODS33mfjCUuf5GIQrEf3A5Di1mnik6RI4SQIpL-mat_OVaIU0peYe_iEn5mVRlcR-2g75Y-MpWSoFLuHR46EmlAcG/s320/tramboulin3.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin3-3f355381f036.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin3-3f355381f036.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKQIE8x8M6RI0MtNuJksqMO6dIu_k64nMWrBiPmmxQtY2KYJm2drFODS33mfjCUuf5GIQrEf3A5Di1mnik6RI4SQIpL-mat_OVaIU0peYe_iEn5mVRlcR-2g75Y-MpWSoFLuHR46EmlAcG/s320/tramboulin3.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'header-menus-ab18d636cb65.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): header-menus-ab18d636cb65.jpg"
elif [ -f 'header-menus-ab18d636cb65.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): header-menus-ab18d636cb65.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'header-menus-ab18d636cb65.jpg' 'http://www.simplythairestaurant.com/_images/header_menus.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: header-menus-ab18d636cb65.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'header-menus-ab18d636cb65.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.simplythairestaurant.com/_images/header_menus.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '2007-canada-cup-of-beer-f-21251ed7c272.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 2007-canada-cup-of-beer-f-21251ed7c272.jpg"
elif [ -f '2007-canada-cup-of-beer-f-21251ed7c272.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 2007-canada-cup-of-beer-f-21251ed7c272.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '2007-canada-cup-of-beer-f-21251ed7c272.jpg' 'http://www.justhereforthebeer.com/Images/events/2007%20canada%20cup%20of%20beer%20flag.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 2007-canada-cup-of-beer-f-21251ed7c272.jpg"
else
  FAILED=$((FAILED + 1))
  touch '2007-canada-cup-of-beer-f-21251ed7c272.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.justhereforthebeer.com/Images/events/2007%20canada%20cup%20of%20beer%20flag.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'pbp-eb101fbf78f7.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): pbp-eb101fbf78f7.gif"
elif [ -f 'pbp-eb101fbf78f7.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): pbp-eb101fbf78f7.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'pbp-eb101fbf78f7.gif' 'http://photos1.blogger.com/pbp.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: pbp-eb101fbf78f7.gif"
else
  FAILED=$((FAILED + 1))
  touch 'pbp-eb101fbf78f7.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/pbp.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'czimidiota-de96add7c41b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): czimidiota-de96add7c41b.jpg"
elif [ -f 'czimidiota-de96add7c41b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): czimidiota-de96add7c41b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'czimidiota-de96add7c41b.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh24JqWOZqMi9UabKRM6tBOCKQ6lRvtLqHj3k3lNkew3Ic3PbVj7BzM8AwTG_aGrFVdSGEEDIheQfXQtTKmPjD1yC4IiKzS-T7bMX4i36AQ6Dot3O1-g4FwoG23YV4UW8Q_69C4a5py99rO/s200/czimidiota.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: czimidiota-de96add7c41b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'czimidiota-de96add7c41b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh24JqWOZqMi9UabKRM6tBOCKQ6lRvtLqHj3k3lNkew3Ic3PbVj7BzM8AwTG_aGrFVdSGEEDIheQfXQtTKmPjD1yC4IiKzS-T7bMX4i36AQ6Dot3O1-g4FwoG23YV4UW8Q_69C4a5py99rO/s200/czimidiota.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '300px-VancouverSunRun-f4c84e79d852.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 300px-VancouverSunRun-f4c84e79d852.jpg"
elif [ -f '300px-VancouverSunRun-f4c84e79d852.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 300px-VancouverSunRun-f4c84e79d852.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '300px-VancouverSunRun-f4c84e79d852.jpg' 'http://upload.wikimedia.org/wikipedia/commons/thumb/2/24/VancouverSunRun.JPG/300px-VancouverSunRun.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 300px-VancouverSunRun-f4c84e79d852.jpg"
else
  FAILED=$((FAILED + 1))
  touch '300px-VancouverSunRun-f4c84e79d852.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://upload.wikimedia.org/wikipedia/commons/thumb/2/24/VancouverSunRun.JPG/300px-VancouverSunRun.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f '1393-20a-09838d3eb961.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 1393-20a-09838d3eb961.jpg"
elif [ -f '1393-20a-09838d3eb961.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 1393-20a-09838d3eb961.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '1393-20a-09838d3eb961.jpg' 'http://www.seethewestend.com/magic/1393-20a.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 1393-20a-09838d3eb961.jpg"
else
  FAILED=$((FAILED + 1))
  touch '1393-20a-09838d3eb961.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.seethewestend.com/magic/1393-20a.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'trollybus-panorama-a93f4e46d696.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): trollybus-panorama-a93f4e46d696.jpg"
elif [ -f 'trollybus-panorama-a93f4e46d696.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): trollybus-panorama-a93f4e46d696.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'trollybus-panorama-a93f4e46d696.jpg' 'http://www.translink.bc.ca/files/banners/trollybus_panorama.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: trollybus-panorama-a93f4e46d696.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'trollybus-panorama-a93f4e46d696.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.translink.bc.ca/files/banners/trollybus_panorama.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00081-0be43624d64a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00081-0be43624d64a.jpg"
elif [ -f 'DSC00081-0be43624d64a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00081-0be43624d64a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00081-0be43624d64a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMq0Kfew3l1KZCH614G_lnIfRr4dxxKLs7cl_d6A_KrX0JvX3xyQVTgt2vvxXaUE79NNqGFxx82XQw3Sjqx-RiprofUVHUaWsWEnnqrIcDefxsc0gFniykqj52stqwhfaAN2CKGDgmfMPg/s320/DSC00081.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00081-0be43624d64a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00081-0be43624d64a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMq0Kfew3l1KZCH614G_lnIfRr4dxxKLs7cl_d6A_KrX0JvX3xyQVTgt2vvxXaUE79NNqGFxx82XQw3Sjqx-RiprofUVHUaWsWEnnqrIcDefxsc0gFniykqj52stqwhfaAN2CKGDgmfMPg/s320/DSC00081.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'closed-for-holiday-71874d263dd0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): closed-for-holiday-71874d263dd0.jpg"
elif [ -f 'closed-for-holiday-71874d263dd0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): closed-for-holiday-71874d263dd0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'closed-for-holiday-71874d263dd0.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQpLvruQBFiWoVB_1aSj8mJozjbhsnl7W9Dyu24aEEND9WTBDQj_GAw2AHGoxWXiPCF9xMgpFu6I6Z2gd9WEdIvrjRMx7FMT1twgcJFZ0xvIk_SAKnzzmK4V4cXPycAKQiovUIEeWlbj6v/s320/closed-for-holiday.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: closed-for-holiday-71874d263dd0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'closed-for-holiday-71874d263dd0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQpLvruQBFiWoVB_1aSj8mJozjbhsnl7W9Dyu24aEEND9WTBDQj_GAw2AHGoxWXiPCF9xMgpFu6I6Z2gd9WEdIvrjRMx7FMT1twgcJFZ0xvIk_SAKnzzmK4V4cXPycAKQiovUIEeWlbj6v/s320/closed-for-holiday.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'img-d2e90192d16f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): img-d2e90192d16f.jpg"
elif [ -f 'img-d2e90192d16f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): img-d2e90192d16f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'img-d2e90192d16f.jpg' 'http://spreadsheets.google.com/pub?key=p62RSgF8BFgy_opLR_GvUHA&oid=4&output=image' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: img-d2e90192d16f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'img-d2e90192d16f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://spreadsheets.google.com/pub?key=p62RSgF8BFgy_opLR_GvUHA&oid=4&output=image"
fi
COUNT=$((COUNT + 1))
if [ -f '95703-32507-bfde6bc41176.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 95703-32507-bfde6bc41176.jpg"
elif [ -f '95703-32507-bfde6bc41176.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 95703-32507-bfde6bc41176.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '95703-32507-bfde6bc41176.jpg' 'http://a123.g.akamai.net/f/123/12465/1d/media.canada.com/idl/vasn/20071126/95703-32507.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 95703-32507-bfde6bc41176.jpg"
else
  FAILED=$((FAILED + 1))
  touch '95703-32507-bfde6bc41176.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://a123.g.akamai.net/f/123/12465/1d/media.canada.com/idl/vasn/20071126/95703-32507.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'stroganoffcsirke-ad35d92aeeba.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): stroganoffcsirke-ad35d92aeeba.jpg"
elif [ -f 'stroganoffcsirke-ad35d92aeeba.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): stroganoffcsirke-ad35d92aeeba.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'stroganoffcsirke-ad35d92aeeba.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFQqmM9fJl7DIq8J6L6Neoxtx66KjkGyvrrw_7dacgKjJIlohrE9NVw-pXQlVlq4mw8l8oVxJ3aLk85c5wD0NWAR2p2dp7J-KwxcO8AN4vW367ke4VhiCIlQCdPR-meRXC8Ps5rLhEjf2A/s320/stroganoffcsirke.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: stroganoffcsirke-ad35d92aeeba.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'stroganoffcsirke-ad35d92aeeba.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFQqmM9fJl7DIq8J6L6Neoxtx66KjkGyvrrw_7dacgKjJIlohrE9NVw-pXQlVlq4mw8l8oVxJ3aLk85c5wD0NWAR2p2dp7J-KwxcO8AN4vW367ke4VhiCIlQCdPR-meRXC8Ps5rLhEjf2A/s320/stroganoffcsirke.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'bc-baaa627e9146.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): bc-baaa627e9146.png"
elif [ -f 'bc-baaa627e9146.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): bc-baaa627e9146.png"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'bc-baaa627e9146.png' 'http://www.bclions.com/themes/bc3/graphics/logo_mini/bc.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: bc-baaa627e9146.png"
else
  FAILED=$((FAILED + 1))
  touch 'bc-baaa627e9146.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.bclions.com/themes/bc3/graphics/logo_mini/bc.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'is-satrad-na-ca-all-all-e-09f443cd3a00.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): is-satrad-na-ca-all-all-e-09f443cd3a00.jpg"
elif [ -f 'is-satrad-na-ca-all-all-e-09f443cd3a00.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): is-satrad-na-ca-all-all-e-09f443cd3a00.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'is-satrad-na-ca-all-all-e-09f443cd3a00.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiAn5WKkHoMmsipqxUJtXqZQaGYVdUytDB5lcfcyYqVV5iz9xI4eYr3FthBTGR4856ftY1IRSr4sqJvs_sehe6OUuBgKgtoTxxXBs3dNaC-B-5XCd3VDk2CxBhyuYmJ-u_r0Lx2bvNwmx5r/s320/is_satrad_na_ca_all_all_en.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: is-satrad-na-ca-all-all-e-09f443cd3a00.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'is-satrad-na-ca-all-all-e-09f443cd3a00.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiAn5WKkHoMmsipqxUJtXqZQaGYVdUytDB5lcfcyYqVV5iz9xI4eYr3FthBTGR4856ftY1IRSr4sqJvs_sehe6OUuBgKgtoTxxXBs3dNaC-B-5XCd3VDk2CxBhyuYmJ-u_r0Lx2bvNwmx5r/s320/is_satrad_na_ca_all_all_en.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '180px-Jack-o--Lantern-200-8597c8b5f726.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 180px-Jack-o--Lantern-200-8597c8b5f726.jpg"
elif [ -f '180px-Jack-o--Lantern-200-8597c8b5f726.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 180px-Jack-o--Lantern-200-8597c8b5f726.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '180px-Jack-o--Lantern-200-8597c8b5f726.jpg' 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Jack-o%27-Lantern_2003-10-31.jpg/180px-Jack-o%27-Lantern_2003-10-31.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 180px-Jack-o--Lantern-200-8597c8b5f726.jpg"
else
  FAILED=$((FAILED + 1))
  touch '180px-Jack-o--Lantern-200-8597c8b5f726.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Jack-o%27-Lantern_2003-10-31.jpg/180px-Jack-o%27-Lantern_2003-10-31.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'theartofquitting-00147-2e5bf1f8fc10.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): theartofquitting-00147-2e5bf1f8fc10.jpg"
elif [ -f 'theartofquitting-00147-2e5bf1f8fc10.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): theartofquitting-00147-2e5bf1f8fc10.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'theartofquitting-00147-2e5bf1f8fc10.jpg' 'http://www.theartofquitting.com/wp-content/images/01/theartofquitting_00147.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: theartofquitting-00147-2e5bf1f8fc10.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'theartofquitting-00147-2e5bf1f8fc10.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.theartofquitting.com/wp-content/images/01/theartofquitting_00147.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'slideshow-f41275103edf.swf' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): slideshow-f41275103edf.swf"
elif [ -f 'slideshow-f41275103edf.swf.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): slideshow-f41275103edf.swf"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'slideshow-f41275103edf.swf' 'http://picasaweb.google.com/s/c/bin/slideshow.swf' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: slideshow-f41275103edf.swf"
else
  FAILED=$((FAILED + 1))
  touch 'slideshow-f41275103edf.swf.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://picasaweb.google.com/s/c/bin/slideshow.swf"
fi
COUNT=$((COUNT + 1))
if [ -f '05-3demoVancouver-49fa9ee145a3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 05-3demoVancouver-49fa9ee145a3.jpg"
elif [ -f '05-3demoVancouver-49fa9ee145a3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 05-3demoVancouver-49fa9ee145a3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '05-3demoVancouver-49fa9ee145a3.jpg' 'http://www.joelonsoftware.com/items/2007/09/05-3demoVancouver.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 05-3demoVancouver-49fa9ee145a3.jpg"
else
  FAILED=$((FAILED + 1))
  touch '05-3demoVancouver-49fa9ee145a3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.joelonsoftware.com/items/2007/09/05-3demoVancouver.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f '288602593-a827604b7f-5f99efa27696.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 288602593-a827604b7f-5f99efa27696.jpg"
elif [ -f '288602593-a827604b7f-5f99efa27696.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 288602593-a827604b7f-5f99efa27696.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '288602593-a827604b7f-5f99efa27696.jpg' 'http://go-karting-pro.com/cache/288602593_a827604b7f.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 288602593-a827604b7f-5f99efa27696.jpg"
else
  FAILED=$((FAILED + 1))
  touch '288602593-a827604b7f-5f99efa27696.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://go-karting-pro.com/cache/288602593_a827604b7f.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg"
elif [ -f '3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg' 'http://www.f440.com/content/images/3_44_DEH5KLOsbA-307x.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg"
else
  FAILED=$((FAILED + 1))
  touch '3-44-DEH5KLOsbA-307x-3b8b249b94e7.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.f440.com/content/images/3_44_DEH5KLOsbA-307x.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '4stopsign-c85b9bd887d5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 4stopsign-c85b9bd887d5.jpg"
elif [ -f '4stopsign-c85b9bd887d5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 4stopsign-c85b9bd887d5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '4stopsign-c85b9bd887d5.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEih1t20XuA42JI2L4Vrn5S-1d92zAWr-T9EM2Po7zoumcorDIyJ-RoaCqRN0zkjQEEN_U5qYH7MuJcU1IFSr3ZbwQvtNuNNFxPqNxDQujyqMyyCs4gDV9jf6neh2uygxhCxT_9V0p4Z94Ab/s320/4stopsign.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 4stopsign-c85b9bd887d5.jpg"
else
  FAILED=$((FAILED + 1))
  touch '4stopsign-c85b9bd887d5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEih1t20XuA42JI2L4Vrn5S-1d92zAWr-T9EM2Po7zoumcorDIyJ-RoaCqRN0zkjQEEN_U5qYH7MuJcU1IFSr3ZbwQvtNuNNFxPqNxDQujyqMyyCs4gDV9jf6neh2uygxhCxT_9V0p4Z94Ab/s320/4stopsign.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '1021913683-40405be171-7d6476472c90.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 1021913683-40405be171-7d6476472c90.jpg"
elif [ -f '1021913683-40405be171-7d6476472c90.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 1021913683-40405be171-7d6476472c90.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '1021913683-40405be171-7d6476472c90.jpg' 'http://farm2.static.flickr.com/1250/1021913683_40405be171.jpg?v=0' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 1021913683-40405be171-7d6476472c90.jpg"
else
  FAILED=$((FAILED + 1))
  touch '1021913683-40405be171-7d6476472c90.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://farm2.static.flickr.com/1250/1021913683_40405be171.jpg?v=0"
fi
COUNT=$((COUNT + 1))
if [ -f '1021816871-66bf2871e2-39b93ba0ba2f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 1021816871-66bf2871e2-39b93ba0ba2f.jpg"
elif [ -f '1021816871-66bf2871e2-39b93ba0ba2f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 1021816871-66bf2871e2-39b93ba0ba2f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '1021816871-66bf2871e2-39b93ba0ba2f.jpg' 'http://farm2.static.flickr.com/1200/1021816871_66bf2871e2.jpg?v=0' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 1021816871-66bf2871e2-39b93ba0ba2f.jpg"
else
  FAILED=$((FAILED + 1))
  touch '1021816871-66bf2871e2-39b93ba0ba2f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://farm2.static.flickr.com/1200/1021816871_66bf2871e2.jpg?v=0"
fi
COUNT=$((COUNT + 1))
if [ -f '1022595552-514e389955-225f900d677a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 1022595552-514e389955-225f900d677a.jpg"
elif [ -f '1022595552-514e389955-225f900d677a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 1022595552-514e389955-225f900d677a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '1022595552-514e389955-225f900d677a.jpg' 'http://farm2.static.flickr.com/1340/1022595552_514e389955.jpg?v=0' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 1022595552-514e389955-225f900d677a.jpg"
else
  FAILED=$((FAILED + 1))
  touch '1022595552-514e389955-225f900d677a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://farm2.static.flickr.com/1340/1022595552_514e389955.jpg?v=0"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00213-832ea68c32f1.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00213-832ea68c32f1.jpg"
elif [ -f 'DSC00213-832ea68c32f1.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00213-832ea68c32f1.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00213-832ea68c32f1.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFXCLwQnqyCJG4KrtAV7SoNvk-MfFIl8g2z5VsNOLLsiEO6hMsA-dgsW82TF-3RyzaWrLlkSRTbdj9tqK0vSrhyphenhyphenUQlGPYoX8jRO4yXNHmarpLJTOr4f_0-do_COO7t8sNbMCpcY2un27Ow/s320/DSC00213.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00213-832ea68c32f1.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00213-832ea68c32f1.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFXCLwQnqyCJG4KrtAV7SoNvk-MfFIl8g2z5VsNOLLsiEO6hMsA-dgsW82TF-3RyzaWrLlkSRTbdj9tqK0vSrhyphenhyphenUQlGPYoX8jRO4yXNHmarpLJTOr4f_0-do_COO7t8sNbMCpcY2un27Ow/s320/DSC00213.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00241-4fc6200d79ea.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00241-4fc6200d79ea.jpg"
elif [ -f 'DSC00241-4fc6200d79ea.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00241-4fc6200d79ea.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00241-4fc6200d79ea.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEic_qU3Jh2Zibu0iXHiPSa4ASfg8AfFJynBzMXOlx9m5aFcri_EIZoN-SaZnl9m-WKKl1IyyZHXWo3yJo0JZ2G6qZEzryPBlxRSn7-rjGoU3T7aiTmxMMWDjEb0opD0lVzhp1zqP2ZhYz29/s400/DSC00241.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00241-4fc6200d79ea.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00241-4fc6200d79ea.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEic_qU3Jh2Zibu0iXHiPSa4ASfg8AfFJynBzMXOlx9m5aFcri_EIZoN-SaZnl9m-WKKl1IyyZHXWo3yJo0JZ2G6qZEzryPBlxRSn7-rjGoU3T7aiTmxMMWDjEb0opD0lVzhp1zqP2ZhYz29/s400/DSC00241.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00242-3030916e558c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00242-3030916e558c.jpg"
elif [ -f 'DSC00242-3030916e558c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00242-3030916e558c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00242-3030916e558c.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjaErU6RU-cs9HkMCxQEXuA9wUE1Vzide6dPNd4qgDX68YGVJ0VDwC814Rlv_zida9Axgcpm8stvBFQ9eCzFbe-pg3l8aqL0-TASsaNQjtBJkOvsGAPXs7Fayu412d1Bp0tR_ywwCLSPYkr/s400/DSC00242.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00242-3030916e558c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00242-3030916e558c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjaErU6RU-cs9HkMCxQEXuA9wUE1Vzide6dPNd4qgDX68YGVJ0VDwC814Rlv_zida9Axgcpm8stvBFQ9eCzFbe-pg3l8aqL0-TASsaNQjtBJkOvsGAPXs7Fayu412d1Bp0tR_ywwCLSPYkr/s400/DSC00242.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00243-d172b0c8acbe.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00243-d172b0c8acbe.jpg"
elif [ -f 'DSC00243-d172b0c8acbe.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00243-d172b0c8acbe.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00243-d172b0c8acbe.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJgg4NPY35Yhg6YnoTd39jnpSRoD7hn5BLNGrJZj9qvXeMFKLeKhFBL06jid3Gdy1Movi0g3A_GhyIUFdtaqFaBGIWfndbQWlhdGfXVRhdFSN7AqibYvPBZqnipqfoqJJ4wM4KGe46tQj-/s400/DSC00243.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00243-d172b0c8acbe.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00243-d172b0c8acbe.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJgg4NPY35Yhg6YnoTd39jnpSRoD7hn5BLNGrJZj9qvXeMFKLeKhFBL06jid3Gdy1Movi0g3A_GhyIUFdtaqFaBGIWfndbQWlhdGfXVRhdFSN7AqibYvPBZqnipqfoqJJ4wM4KGe46tQj-/s400/DSC00243.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00244-812ef50556b6.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00244-812ef50556b6.jpg"
elif [ -f 'DSC00244-812ef50556b6.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00244-812ef50556b6.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00244-812ef50556b6.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVl6_CdYCLyciqBpICanm3zP4OEBBYE-om2Qs1y8PKYH5Olh3Rf5mTmxJP30IUurienSQgTppo0Jr2M3LIQ4lUIhFVpvdqpCfLWGrA5W9xW6XlSQzTlfLHvW0s58M2IsFtYuln2FPTuEX5/s400/DSC00244.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00244-812ef50556b6.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00244-812ef50556b6.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVl6_CdYCLyciqBpICanm3zP4OEBBYE-om2Qs1y8PKYH5Olh3Rf5mTmxJP30IUurienSQgTppo0Jr2M3LIQ4lUIhFVpvdqpCfLWGrA5W9xW6XlSQzTlfLHvW0s58M2IsFtYuln2FPTuEX5/s400/DSC00244.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00248-003c1b82785d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00248-003c1b82785d.jpg"
elif [ -f 'DSC00248-003c1b82785d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00248-003c1b82785d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00248-003c1b82785d.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEharRw2UHLNOFML-Vn8dNmPPd0akJXad169z-_1Xb0iMJVfeFpS6I13ISlti0mAc29WJbkWJkWjXSeX8pxyTJTY8A-K6Hzacp9KKiit3Lp-XkBC1HFja3TTTp5dMl9yZwi5aZKZzJn5GGop/s400/DSC00248.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00248-003c1b82785d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00248-003c1b82785d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEharRw2UHLNOFML-Vn8dNmPPd0akJXad169z-_1Xb0iMJVfeFpS6I13ISlti0mAc29WJbkWJkWjXSeX8pxyTJTY8A-K6Hzacp9KKiit3Lp-XkBC1HFja3TTTp5dMl9yZwi5aZKZzJn5GGop/s400/DSC00248.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00255-8ad0ffe61a28.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00255-8ad0ffe61a28.jpg"
elif [ -f 'DSC00255-8ad0ffe61a28.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00255-8ad0ffe61a28.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00255-8ad0ffe61a28.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgb_OJLcM-FqQTHtLMeLj4ujuF5PzlhmMetvhbYooCt3cgcEZVdQbUmyYb1N4o9xweKNTmKjIP1M1865ZV1wrPrfJDcK_Sv0Ps_cf2_wXPocHd_tcPLaY7h1xisNMHEbjukp2R603m-lMq2/s400/DSC00255.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00255-8ad0ffe61a28.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00255-8ad0ffe61a28.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgb_OJLcM-FqQTHtLMeLj4ujuF5PzlhmMetvhbYooCt3cgcEZVdQbUmyYb1N4o9xweKNTmKjIP1M1865ZV1wrPrfJDcK_Sv0Ps_cf2_wXPocHd_tcPLaY7h1xisNMHEbjukp2R603m-lMq2/s400/DSC00255.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00256-c6674912d28a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00256-c6674912d28a.jpg"
elif [ -f 'DSC00256-c6674912d28a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00256-c6674912d28a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00256-c6674912d28a.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSAuL01Hy1KBRYfAOK5tEHmAocjAI3olDD40-PhcNv_H4JHrYPk-R0FC3uik_CmUNUY_KUOwKQ6zCwwVavu8fufQsbMiLpbzNagjIZkyWp3mAsij8tV-hlvYVdKnRXGngHjXKlHc0giPkr/s400/DSC00256.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00256-c6674912d28a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00256-c6674912d28a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSAuL01Hy1KBRYfAOK5tEHmAocjAI3olDD40-PhcNv_H4JHrYPk-R0FC3uik_CmUNUY_KUOwKQ6zCwwVavu8fufQsbMiLpbzNagjIZkyWp3mAsij8tV-hlvYVdKnRXGngHjXKlHc0giPkr/s400/DSC00256.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00234-d48330411aec.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00234-d48330411aec.jpg"
elif [ -f 'DSC00234-d48330411aec.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00234-d48330411aec.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00234-d48330411aec.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUYP1BW6ktqfFPNgVohcs10K_O1hkIg3D9AVbMiZ8WazyyZ2KDIPGgqE36gNL5t0vmpl48OdfE4LnInN6wAmOXCESVMyT_31lclTqBb4g7CLwASPpgpqvxQTQ2HSfX9BUvzIA1yHSOlmfW/s400/DSC00234.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00234-d48330411aec.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00234-d48330411aec.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUYP1BW6ktqfFPNgVohcs10K_O1hkIg3D9AVbMiZ8WazyyZ2KDIPGgqE36gNL5t0vmpl48OdfE4LnInN6wAmOXCESVMyT_31lclTqBb4g7CLwASPpgpqvxQTQ2HSfX9BUvzIA1yHSOlmfW/s400/DSC00234.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'diagram02-e4fc5a897d05.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): diagram02-e4fc5a897d05.png"
elif [ -f 'diagram02-e4fc5a897d05.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): diagram02-e4fc5a897d05.png"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'diagram02-e4fc5a897d05.png' 'http://www.codeproject.com/KB/architecture/scrum/diagram02.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: diagram02-e4fc5a897d05.png"
else
  FAILED=$((FAILED + 1))
  touch 'diagram02-e4fc5a897d05.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.codeproject.com/KB/architecture/scrum/diagram02.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'burndown-chart-6c3326fc698d.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): burndown-chart-6c3326fc698d.png"
elif [ -f 'burndown-chart-6c3326fc698d.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): burndown-chart-6c3326fc698d.png"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'burndown-chart-6c3326fc698d.png' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilWhyphenhyphenK1iq3WXkIn4tR4LGy4Ehbq1PZQKx7KAlyO0vkLbqllJZjYtppLyzmcVJr4yix4XJAAW_eYhWzYQ7A6F6AIauqwyKxUAePEMww4N4ez9waHSvf-0W9rhD9U2IK8Bbq6tSvwaQfOGfE/s400/burndown_chart.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: burndown-chart-6c3326fc698d.png"
else
  FAILED=$((FAILED + 1))
  touch 'burndown-chart-6c3326fc698d.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilWhyphenhyphenK1iq3WXkIn4tR4LGy4Ehbq1PZQKx7KAlyO0vkLbqllJZjYtppLyzmcVJr4yix4XJAAW_eYhWzYQ7A6F6AIauqwyKxUAePEMww4N4ez9waHSvf-0W9rhD9U2IK8Bbq6tSvwaQfOGfE/s400/burndown_chart.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'wanted-vote-a6758500dc9f.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): wanted-vote-a6758500dc9f.png"
elif [ -f 'wanted-vote-a6758500dc9f.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): wanted-vote-a6758500dc9f.png"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'wanted-vote-a6758500dc9f.png' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgykg2uQknoWP7jcwjd8Lo1u1kDif0Iy2FdSgslZn8678f0p3bEeXnmzlydnlZWKjLFu8QGidjn-GeJxy761FYKXWE5_6OHt_rcj0JuO7qNQPVa5QnRCFgrOkHJEMqnERSuixMQEriMrwqL/s320/wanted_vote.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: wanted-vote-a6758500dc9f.png"
else
  FAILED=$((FAILED + 1))
  touch 'wanted-vote-a6758500dc9f.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgykg2uQknoWP7jcwjd8Lo1u1kDif0Iy2FdSgslZn8678f0p3bEeXnmzlydnlZWKjLFu8QGidjn-GeJxy761FYKXWE5_6OHt_rcj0JuO7qNQPVa5QnRCFgrOkHJEMqnERSuixMQEriMrwqL/s320/wanted_vote.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg"
elif [ -f 'i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUux56DCVD3z2kK-bLbD0FluEWdRifgAQhU0oFNvlNN_sOwWYY_Yujmsx5i_BoQdWbhgEBpP78vltF5FPAyiXRSMuWtQTPaD5o2AUBks4H-JTZdCFsHWmVml2_5NRPm4ax-8qVXMKw1gXQ/s320/i7E044001-FFB2-43C1-AF4D-CC6AB4432DFE.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'i7E044001-FFB2-43C1-AF4D--57d2437eb353.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUux56DCVD3z2kK-bLbD0FluEWdRifgAQhU0oFNvlNN_sOwWYY_Yujmsx5i_BoQdWbhgEBpP78vltF5FPAyiXRSMuWtQTPaD5o2AUBks4H-JTZdCFsHWmVml2_5NRPm4ax-8qVXMKw1gXQ/s320/i7E044001-FFB2-43C1-AF4D-CC6AB4432DFE.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00047-cf1b28c4d8d9.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00047-cf1b28c4d8d9.jpg"
elif [ -f 'DSC00047-cf1b28c4d8d9.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00047-cf1b28c4d8d9.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00047-cf1b28c4d8d9.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgN91IGGy0EvrTvB77YBH139fke58mMEwCPthnw9iPK_Dc46qD9ipK2AylB3ScGBAKmrba-JL5Lh_5g1mNbhr2mKSTtaYunlcdWnwQkwne3BM6IyxcTvFU4jWf8oxNOKqJPug_wGRbuFSbu/s320/DSC00047.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00047-cf1b28c4d8d9.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00047-cf1b28c4d8d9.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgN91IGGy0EvrTvB77YBH139fke58mMEwCPthnw9iPK_Dc46qD9ipK2AylB3ScGBAKmrba-JL5Lh_5g1mNbhr2mKSTtaYunlcdWnwQkwne3BM6IyxcTvFU4jWf8oxNOKqJPug_wGRbuFSbu/s320/DSC00047.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00224-cd44b7a5ba47.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00224-cd44b7a5ba47.jpg"
elif [ -f 'DSC00224-cd44b7a5ba47.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00224-cd44b7a5ba47.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00224-cd44b7a5ba47.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxIzSvAT8VXCHvNoA07YXk7QPV_m3jvvDYqY-iLexjSwjgLGaeTRkJYZ3ZI75Pd6Ym-YfIZy9crSDPp-xx8qMkCL07rOb8B3-7u3fjcXyFV3c_u_MK1d2bPmIDiAy-xmpVmKM3dP8W_jsP/s320/DSC00224.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00224-cd44b7a5ba47.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00224-cd44b7a5ba47.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxIzSvAT8VXCHvNoA07YXk7QPV_m3jvvDYqY-iLexjSwjgLGaeTRkJYZ3ZI75Pd6Ym-YfIZy9crSDPp-xx8qMkCL07rOb8B3-7u3fjcXyFV3c_u_MK1d2bPmIDiAy-xmpVmKM3dP8W_jsP/s320/DSC00224.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00210-8eaa9673703d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00210-8eaa9673703d.jpg"
elif [ -f 'DSC00210-8eaa9673703d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00210-8eaa9673703d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00210-8eaa9673703d.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgqvNGsZF6bbVl_W-alIO6ZU6iJjXa4zlbfaYt7IO3fVBTE-p_j7vhXcfccIRC77pu4DBiFPTmWynryjWFfmu_D2kYKJnGZLL0oREOW5Km9Up1quAWeZYvg9Rq4-rTv8j3MZp1EqPuiW673/s320/DSC00210.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00210-8eaa9673703d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00210-8eaa9673703d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgqvNGsZF6bbVl_W-alIO6ZU6iJjXa4zlbfaYt7IO3fVBTE-p_j7vhXcfccIRC77pu4DBiFPTmWynryjWFfmu_D2kYKJnGZLL0oREOW5Km9Up1quAWeZYvg9Rq4-rTv8j3MZp1EqPuiW673/s320/DSC00210.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00225-76f94bd7de3e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00225-76f94bd7de3e.jpg"
elif [ -f 'DSC00225-76f94bd7de3e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00225-76f94bd7de3e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00225-76f94bd7de3e.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiD7RpilB3jftryqSZce6eAS4UWgF9lq16qOJIFmNBMx9v3SkWrjEwIRoX5acXY1zIA69PS3VEIt2DI3DImClW2G3xB-1dfXgiaRrTiX4DX4SBxSXmnI7kITpdBC2gYjcxpLLh1z3eq4udy/s320/DSC00225.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00225-76f94bd7de3e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00225-76f94bd7de3e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiD7RpilB3jftryqSZce6eAS4UWgF9lq16qOJIFmNBMx9v3SkWrjEwIRoX5acXY1zIA69PS3VEIt2DI3DImClW2G3xB-1dfXgiaRrTiX4DX4SBxSXmnI7kITpdBC2gYjcxpLLh1z3eq4udy/s320/DSC00225.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'images2-ca75e2862705.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): images2-ca75e2862705.jpg"
elif [ -f 'images2-ca75e2862705.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): images2-ca75e2862705.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'images2-ca75e2862705.jpg' 'http://hero.freeblog.hu/files/images2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: images2-ca75e2862705.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'images2-ca75e2862705.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://hero.freeblog.hu/files/images2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00188-5b793b758d3d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00188-5b793b758d3d.jpg"
elif [ -f 'DSC00188-5b793b758d3d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00188-5b793b758d3d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00188-5b793b758d3d.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9wVQgQlbtozauD8EkZO9Pw-MIsO15qV_U9GH2ZXqcFauabas99gsnSkyF9LsD1rSOxGEOFcPyIyJXChmv3KRunVo83un4OXiXRB_Ot2SZOCadvaryZrscURK7ZY32DEl5Pt7MiyrEQgII/s320/DSC00188.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00188-5b793b758d3d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00188-5b793b758d3d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9wVQgQlbtozauD8EkZO9Pw-MIsO15qV_U9GH2ZXqcFauabas99gsnSkyF9LsD1rSOxGEOFcPyIyJXChmv3KRunVo83un4OXiXRB_Ot2SZOCadvaryZrscURK7ZY32DEl5Pt7MiyrEQgII/s320/DSC00188.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00196-0ee73f1a94ca.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00196-0ee73f1a94ca.jpg"
elif [ -f 'DSC00196-0ee73f1a94ca.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00196-0ee73f1a94ca.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00196-0ee73f1a94ca.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWIyYzS0vVG6JdzA4I87S_ghU3MCfiqMKHwC_C_TcRgul4hvx36jnfVivagIXFJuPgFHGoYD72kO6m1sIvnY2pYCwAXakoQPQvtryQGawd1d1ASSrPraP5Irbp78NbKtYosFnHyV9yHkJR/s320/DSC00196.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00196-0ee73f1a94ca.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00196-0ee73f1a94ca.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWIyYzS0vVG6JdzA4I87S_ghU3MCfiqMKHwC_C_TcRgul4hvx36jnfVivagIXFJuPgFHGoYD72kO6m1sIvnY2pYCwAXakoQPQvtryQGawd1d1ASSrPraP5Irbp78NbKtYosFnHyV9yHkJR/s320/DSC00196.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00197-134855484ef6.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00197-134855484ef6.jpg"
elif [ -f 'DSC00197-134855484ef6.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00197-134855484ef6.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00197-134855484ef6.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdTcHCv72bXeMH-dCwdHakV7NJBWjeen6BqjexeoI1YD1VU6wx75p6pd2NZFG26NjXf7B93uzxemn3VRv9VoOzPKiO1F2oGyBzWU4awJrX23lwyeBWBP7efMPN5hhZAYNrNQFwl1OPPuUr/s320/DSC00197.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00197-134855484ef6.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00197-134855484ef6.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdTcHCv72bXeMH-dCwdHakV7NJBWjeen6BqjexeoI1YD1VU6wx75p6pd2NZFG26NjXf7B93uzxemn3VRv9VoOzPKiO1F2oGyBzWU4awJrX23lwyeBWBP7efMPN5hhZAYNrNQFwl1OPPuUr/s320/DSC00197.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00198-8c5c6cb80e90.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00198-8c5c6cb80e90.jpg"
elif [ -f 'DSC00198-8c5c6cb80e90.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00198-8c5c6cb80e90.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00198-8c5c6cb80e90.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgENWg94J3pmvPbkrRX2BZUXguE_14Fy-cjimZmP3_NObdSLAesjlT6qDmjJ_Tl-W8k2PJGpWwqPNHef7MpiM_IZNWcyjOUGdzjV-sM3d_y0Jo70hfyhkRkPe1-b2U-53_vNX8vdbRMMJvS/s320/DSC00198.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00198-8c5c6cb80e90.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00198-8c5c6cb80e90.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgENWg94J3pmvPbkrRX2BZUXguE_14Fy-cjimZmP3_NObdSLAesjlT6qDmjJ_Tl-W8k2PJGpWwqPNHef7MpiM_IZNWcyjOUGdzjV-sM3d_y0Jo70hfyhkRkPe1-b2U-53_vNX8vdbRMMJvS/s320/DSC00198.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00171-c4a489b9de55.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00171-c4a489b9de55.jpg"
elif [ -f 'DSC00171-c4a489b9de55.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00171-c4a489b9de55.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00171-c4a489b9de55.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzur7eojZa2IYdecBXNO-IOQlivY32KxV7z-4P84IcUaBw-5qGCwuZXca51OOuZ3jBCBjh0TsjdUkUbEnp9N7cysK8HycQAMlXZNtof0m34EkJfBs3Nurmt7nDTwxSG9o_ahd8hGQ3gIWy/s200/DSC00171.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00171-c4a489b9de55.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00171-c4a489b9de55.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzur7eojZa2IYdecBXNO-IOQlivY32KxV7z-4P84IcUaBw-5qGCwuZXca51OOuZ3jBCBjh0TsjdUkUbEnp9N7cysK8HycQAMlXZNtof0m34EkJfBs3Nurmt7nDTwxSG9o_ahd8hGQ3gIWy/s200/DSC00171.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00186-80dbcc98aae5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00186-80dbcc98aae5.jpg"
elif [ -f 'DSC00186-80dbcc98aae5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00186-80dbcc98aae5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00186-80dbcc98aae5.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGhLfKHDZBaJzHh8aFZIu55qmVNxPMo-aTRce8FRwagn9I-iOhlUmOLwhEJqrNsiTfexWtFCJcgiDTs6dggCg4ti5pz9QUHoJk4O0e0UE5BrLT6RmNi2FIMHJJK8JBfQZdigzCXa3kx6wu/s200/DSC00186.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00186-80dbcc98aae5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00186-80dbcc98aae5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGhLfKHDZBaJzHh8aFZIu55qmVNxPMo-aTRce8FRwagn9I-iOhlUmOLwhEJqrNsiTfexWtFCJcgiDTs6dggCg4ti5pz9QUHoJk4O0e0UE5BrLT6RmNi2FIMHJJK8JBfQZdigzCXa3kx6wu/s200/DSC00186.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00177-7e4a857e8d47.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00177-7e4a857e8d47.jpg"
elif [ -f 'DSC00177-7e4a857e8d47.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00177-7e4a857e8d47.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00177-7e4a857e8d47.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEim0Wf_YtrFvMdy7xdszB2wtq9GCpyrHDu0zThgBN5Gni9LSmgjVgSAQxumKVKsjkcJeBZk3hIcJliHdZKMaO73H0tnIMXp8fHhTjEx04-iK7N1KyDwEGvalIN2DXFmwZ-WGFwHhXglK0Y6/s200/DSC00177.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00177-7e4a857e8d47.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00177-7e4a857e8d47.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEim0Wf_YtrFvMdy7xdszB2wtq9GCpyrHDu0zThgBN5Gni9LSmgjVgSAQxumKVKsjkcJeBZk3hIcJliHdZKMaO73H0tnIMXp8fHhTjEx04-iK7N1KyDwEGvalIN2DXFmwZ-WGFwHhXglK0Y6/s200/DSC00177.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00179-19de7476c864.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00179-19de7476c864.jpg"
elif [ -f 'DSC00179-19de7476c864.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00179-19de7476c864.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00179-19de7476c864.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd888qWyMOXvMlHMW7Nq1Joi6JktqA1tWByh9mGm84Cxqlaxi9h1pws_7XMGv-3iFtj9x06YEpezFW2JychnFzeb4BOMfsl3Z7ozyvjqqGYhBByU0FGPcLpN_LAtZX9e3Do_HGlZ_i-WMj/s200/DSC00179.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00179-19de7476c864.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00179-19de7476c864.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd888qWyMOXvMlHMW7Nq1Joi6JktqA1tWByh9mGm84Cxqlaxi9h1pws_7XMGv-3iFtj9x06YEpezFW2JychnFzeb4BOMfsl3Z7ozyvjqqGYhBByU0FGPcLpN_LAtZX9e3Do_HGlZ_i-WMj/s200/DSC00179.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00161-370736f2e4da.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00161-370736f2e4da.jpg"
elif [ -f 'DSC00161-370736f2e4da.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00161-370736f2e4da.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00161-370736f2e4da.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIiL-DUq2ySrRtLTRXxzEaAxzq-eC19cisXVDn9LZvMSGeyLRXoIqUHXuAGG_TJ5M_gcYSGkdOc9R-NpzP4_h9p5xVGW6xqfuIHB2C4kytCZrCfNK5ri5xaTuFtQ-VVBsezvSIfILYNvKX/s200/DSC00161.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00161-370736f2e4da.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00161-370736f2e4da.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIiL-DUq2ySrRtLTRXxzEaAxzq-eC19cisXVDn9LZvMSGeyLRXoIqUHXuAGG_TJ5M_gcYSGkdOc9R-NpzP4_h9p5xVGW6xqfuIHB2C4kytCZrCfNK5ri5xaTuFtQ-VVBsezvSIfILYNvKX/s200/DSC00161.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00163-49ad15678c7d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00163-49ad15678c7d.jpg"
elif [ -f 'DSC00163-49ad15678c7d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00163-49ad15678c7d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00163-49ad15678c7d.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFS2EmfSL9FlNfVvQOHKRjfyBryCaPLAWZtqhuAyvMZgmRYzviY4mX9xsJxtnIjNI9YivYT7bM72RonhpO06x91q_-RNSOYF4Kt-TkP3Tj2xOZVqtfBuC8fm0KrR8YYJfw0JO5Hb4H-76y/s200/DSC00163.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00163-49ad15678c7d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00163-49ad15678c7d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFS2EmfSL9FlNfVvQOHKRjfyBryCaPLAWZtqhuAyvMZgmRYzviY4mX9xsJxtnIjNI9YivYT7bM72RonhpO06x91q_-RNSOYF4Kt-TkP3Tj2xOZVqtfBuC8fm0KrR8YYJfw0JO5Hb4H-76y/s200/DSC00163.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f '200px-Dsotm-7c55731d0a90.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 200px-Dsotm-7c55731d0a90.jpg"
elif [ -f '200px-Dsotm-7c55731d0a90.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 200px-Dsotm-7c55731d0a90.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '200px-Dsotm-7c55731d0a90.jpg' 'http://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Dsotm.jpg/200px-Dsotm.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 200px-Dsotm-7c55731d0a90.jpg"
else
  FAILED=$((FAILED + 1))
  touch '200px-Dsotm-7c55731d0a90.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Dsotm.jpg/200px-Dsotm.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00152-14caa625f4d6.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00152-14caa625f4d6.jpg"
elif [ -f 'DSC00152-14caa625f4d6.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00152-14caa625f4d6.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00152-14caa625f4d6.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiinH4EeI-cBLWrD06duGz6hf2RIrn6zFsO8S7Y_5S6P6p6q0gSKmrz_uffwoRz1uCcTVJ3ddIVX9MtTAeON48ywk8n8yOFFtMobZLJnBJmrdaUT9EaCrTYHRnWOa6vGngfE8Sln5kvH5Ty/s320/DSC00152.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00152-14caa625f4d6.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00152-14caa625f4d6.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiinH4EeI-cBLWrD06duGz6hf2RIrn6zFsO8S7Y_5S6P6p6q0gSKmrz_uffwoRz1uCcTVJ3ddIVX9MtTAeON48ywk8n8yOFFtMobZLJnBJmrdaUT9EaCrTYHRnWOa6vGngfE8Sln5kvH5Ty/s320/DSC00152.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00154-d8340c5eefbb.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00154-d8340c5eefbb.jpg"
elif [ -f 'DSC00154-d8340c5eefbb.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00154-d8340c5eefbb.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00154-d8340c5eefbb.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMDKJYGjDm31KIz3DgRVkT75LOkl3nB8dUw6DlolOYLYtsOBDgZCEbMik_NYLxXS6u6CERPBQW2Xsx4Fi7rwp59xb572C6YsrLkLuekrYhRns4-e2lBs64-oR_0cr4zN3qgktDUudmTOc1/s320/DSC00154.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00154-d8340c5eefbb.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00154-d8340c5eefbb.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMDKJYGjDm31KIz3DgRVkT75LOkl3nB8dUw6DlolOYLYtsOBDgZCEbMik_NYLxXS6u6CERPBQW2Xsx4Fi7rwp59xb572C6YsrLkLuekrYhRns4-e2lBs64-oR_0cr4zN3qgktDUudmTOc1/s320/DSC00154.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00131-ee8f7512f921.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00131-ee8f7512f921.jpg"
elif [ -f 'DSC00131-ee8f7512f921.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00131-ee8f7512f921.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00131-ee8f7512f921.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhD3MWNNsEBK_DQgnbOyhLzr64Qh4vYIFiIA6ZFEvpKRUz9riXOS20TpVh-n9K6-dw0ZvsQ_hJKT5a2J2Y2IhyphenhyphenGiFjrbxjUj50kdJ_DESUD0JNTrC7nq1JR6yKQOq3ynkVzqGxXN1meIi7r/s320/DSC00131.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00131-ee8f7512f921.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00131-ee8f7512f921.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhD3MWNNsEBK_DQgnbOyhLzr64Qh4vYIFiIA6ZFEvpKRUz9riXOS20TpVh-n9K6-dw0ZvsQ_hJKT5a2J2Y2IhyphenhyphenGiFjrbxjUj50kdJ_DESUD0JNTrC7nq1JR6yKQOq3ynkVzqGxXN1meIi7r/s320/DSC00131.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00132-c02efb49d498.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00132-c02efb49d498.jpg"
elif [ -f 'DSC00132-c02efb49d498.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00132-c02efb49d498.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00132-c02efb49d498.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi63SlHKTOUZ4mT8GqIfqCBAv7JECZWTJiEuH-GWE7xy0pv2Nff1RpDMuCQwPp9N7xAnVsl6NiQ9m5XvwWc-bTr-_bawU7S5f3YmUNd9Z2EZ5x-xpSurnJja3bRQeKyWzsvWTICeknhdWGf/s320/DSC00132.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00132-c02efb49d498.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00132-c02efb49d498.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi63SlHKTOUZ4mT8GqIfqCBAv7JECZWTJiEuH-GWE7xy0pv2Nff1RpDMuCQwPp9N7xAnVsl6NiQ9m5XvwWc-bTr-_bawU7S5f3YmUNd9Z2EZ5x-xpSurnJja3bRQeKyWzsvWTICeknhdWGf/s320/DSC00132.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00136-2c24ba6568b3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00136-2c24ba6568b3.jpg"
elif [ -f 'DSC00136-2c24ba6568b3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00136-2c24ba6568b3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00136-2c24ba6568b3.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhlRizjoB_BzRFsvcQtYPNJ4q5Ld_-EFuw-n7ti_tVYKvE58-HPicaam3yjpQmTrnNufV5AuXU6kiJtSMyFMXV0MUln0i-FDIjDlFU2vKzEi5wWK8UP7zqeJjqfxqVnJrGiDha7vZ4MNBXQ/s320/DSC00136.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00136-2c24ba6568b3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00136-2c24ba6568b3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhlRizjoB_BzRFsvcQtYPNJ4q5Ld_-EFuw-n7ti_tVYKvE58-HPicaam3yjpQmTrnNufV5AuXU6kiJtSMyFMXV0MUln0i-FDIjDlFU2vKzEi5wWK8UP7zqeJjqfxqVnJrGiDha7vZ4MNBXQ/s320/DSC00136.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00144-52ef232815b8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00144-52ef232815b8.jpg"
elif [ -f 'DSC00144-52ef232815b8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00144-52ef232815b8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00144-52ef232815b8.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAzNJvIBGAasyaHRslNwd8-sdYL1jF17-LUe9a-CBrAKuVGRngpLFkRNOKQ78IK8aPA1LSB1ejN_Nar_NVF-twcIGmWOZw-nWrjHN_1CEjmGwZsbcqJQVoR1doMrKvkATMDsalfsQIFYJ4/s320/DSC00144.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00144-52ef232815b8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00144-52ef232815b8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAzNJvIBGAasyaHRslNwd8-sdYL1jF17-LUe9a-CBrAKuVGRngpLFkRNOKQ78IK8aPA1LSB1ejN_Nar_NVF-twcIGmWOZw-nWrjHN_1CEjmGwZsbcqJQVoR1doMrKvkATMDsalfsQIFYJ4/s320/DSC00144.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00127-61d9c3cdeea4.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00127-61d9c3cdeea4.jpg"
elif [ -f 'DSC00127-61d9c3cdeea4.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00127-61d9c3cdeea4.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00127-61d9c3cdeea4.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnT5bmzYVfvQEzyeRSMXHq1O93ouOvQYq1D-3JUprXYEBjkKmjdY2UqBMxb7gXuYsz-vtvND2M8bLEaUAbi02qFjwFfaiXzn-uX_JPxqiIXZezf3o-o9_GN3z4wHFQH8993gGViO8uQWJi/s320/DSC00127.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00127-61d9c3cdeea4.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00127-61d9c3cdeea4.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnT5bmzYVfvQEzyeRSMXHq1O93ouOvQYq1D-3JUprXYEBjkKmjdY2UqBMxb7gXuYsz-vtvND2M8bLEaUAbi02qFjwFfaiXzn-uX_JPxqiIXZezf3o-o9_GN3z4wHFQH8993gGViO8uQWJi/s320/DSC00127.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00126-3a483569dcf0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00126-3a483569dcf0.jpg"
elif [ -f 'DSC00126-3a483569dcf0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00126-3a483569dcf0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00126-3a483569dcf0.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjobZpKtW8zRc-Ug3RoNEM0QSK_SW7MzRWSZQv8yR9Vz7p2kCArzGqc0l2YQwMIi1hirp6m5r-TmTHPPbbVfmlbnvDzItG9Dt0mRf0OM6U-rL3gK53ueIo8Oeto4zlmDLiNXhRESlO0Qp8a/s320/DSC00126.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00126-3a483569dcf0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00126-3a483569dcf0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjobZpKtW8zRc-Ug3RoNEM0QSK_SW7MzRWSZQv8yR9Vz7p2kCArzGqc0l2YQwMIi1hirp6m5r-TmTHPPbbVfmlbnvDzItG9Dt0mRf0OM6U-rL3gK53ueIo8Oeto4zlmDLiNXhRESlO0Qp8a/s320/DSC00126.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00107-cee2ea10b682.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00107-cee2ea10b682.jpg"
elif [ -f 'DSC00107-cee2ea10b682.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00107-cee2ea10b682.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00107-cee2ea10b682.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhRcC_K1RlkBQPMVF3JdQB3CKCZyXh0lsSZYLXa0F9zjWt1SpxxOKLDXYiHCymsuB3Nk-BB-0jkMzO0VuBL2eHvs-1QAtfXg0OySovTzD7EzknasipH6a9j6_1lTQyOHcr6gB2Bs971MZ-0/s320/DSC00107.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00107-cee2ea10b682.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00107-cee2ea10b682.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhRcC_K1RlkBQPMVF3JdQB3CKCZyXh0lsSZYLXa0F9zjWt1SpxxOKLDXYiHCymsuB3Nk-BB-0jkMzO0VuBL2eHvs-1QAtfXg0OySovTzD7EzknasipH6a9j6_1lTQyOHcr6gB2Bs971MZ-0/s320/DSC00107.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00046-0d8cc48a9035.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00046-0d8cc48a9035.jpg"
elif [ -f 'DSC00046-0d8cc48a9035.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00046-0d8cc48a9035.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00046-0d8cc48a9035.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzpZ16FExcKh7KJiMxaY1mQIai5UqDgASBl2DJo2cIeg7vYPWUr5cf1YBK6IdVXrjS9hkWNYZKDvypQaWw1SWdbCShdMgy9rOOkfQQFAY69giOcbvsDFZnewpUt3fjhZIITlnTkkSG2T8d/s320/DSC00046.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00046-0d8cc48a9035.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00046-0d8cc48a9035.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzpZ16FExcKh7KJiMxaY1mQIai5UqDgASBl2DJo2cIeg7vYPWUr5cf1YBK6IdVXrjS9hkWNYZKDvypQaWw1SWdbCShdMgy9rOOkfQQFAY69giOcbvsDFZnewpUt3fjhZIITlnTkkSG2T8d/s320/DSC00046.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'couch-999cad-ikea-5285a6f4bd6f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): couch-999cad-ikea-5285a6f4bd6f.jpg"
elif [ -f 'couch-999cad-ikea-5285a6f4bd6f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): couch-999cad-ikea-5285a6f4bd6f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'couch-999cad-ikea-5285a6f4bd6f.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQTxtjk35IzR0s3_nZLKn3NLM3fF_HcdZflXsRP_KYSX0Q8U7KM5Njp-uEGsHMBe4ZeVemKnhBGFJsxdyU4kvrAsTCanoI8kZ2VgcDs5UfrRkhDlsAvrxij6T0_1hAYB8ylOVUy9VCzdGu/s320/couch-999cad-ikea.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: couch-999cad-ikea-5285a6f4bd6f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'couch-999cad-ikea-5285a6f4bd6f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQTxtjk35IzR0s3_nZLKn3NLM3fF_HcdZflXsRP_KYSX0Q8U7KM5Njp-uEGsHMBe4ZeVemKnhBGFJsxdyU4kvrAsTCanoI8kZ2VgcDs5UfrRkhDlsAvrxij6T0_1hAYB8ylOVUy9VCzdGu/s320/couch-999cad-ikea.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '57434-PE163018-S4-0763682a5514.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 57434-PE163018-S4-0763682a5514.jpg"
elif [ -f '57434-PE163018-S4-0763682a5514.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 57434-PE163018-S4-0763682a5514.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '57434-PE163018-S4-0763682a5514.jpg' 'http://www.ikea.com/PIAimages/57434_PE163018_S4.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 57434-PE163018-S4-0763682a5514.jpg"
else
  FAILED=$((FAILED + 1))
  touch '57434-PE163018-S4-0763682a5514.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.ikea.com/PIAimages/57434_PE163018_S4.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Canucks-7a867971945a.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Canucks-7a867971945a.gif"
elif [ -f 'Canucks-7a867971945a.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Canucks-7a867971945a.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Canucks-7a867971945a.gif' 'http://www.canucks.com/images/team_logos/Canucks.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Canucks-7a867971945a.gif"
else
  FAILED=$((FAILED + 1))
  touch 'Canucks-7a867971945a.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.canucks.com/images/team_logos/Canucks.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'w810i-5f76d4f9566e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): w810i-5f76d4f9566e.jpg"
elif [ -f 'w810i-5f76d4f9566e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): w810i-5f76d4f9566e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'w810i-5f76d4f9566e.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfcml5de3FCHay8R2IMhwOHw1gMkFia-_5WDpFRYQq62vBc3zX6K9WZoBw_W0ThVTYb_XjWVUuCcYkYaap_32Jf598KBF15mbzM0tU2eL9ICMCuy_ZUK7aMPsPoOe04iOvTfB7_15Qhpco/s200/w810i.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: w810i-5f76d4f9566e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'w810i-5f76d4f9566e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfcml5de3FCHay8R2IMhwOHw1gMkFia-_5WDpFRYQq62vBc3zX6K9WZoBw_W0ThVTYb_XjWVUuCcYkYaap_32Jf598KBF15mbzM0tU2eL9ICMCuy_ZUK7aMPsPoOe04iOvTfB7_15Qhpco/s200/w810i.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00018-4abfd9db34c3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00018-4abfd9db34c3.jpg"
elif [ -f 'DSC00018-4abfd9db34c3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00018-4abfd9db34c3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00018-4abfd9db34c3.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfUYe6hacEi-_-4nRreiVIgBIwjP7mWUbEMkAk3Q8ud2doI_DudHDgCFoWJCBqiYEJQPPzECwqIdbmExAYS4q7KgNdG-9zi0_1P2wz91HzcwLhKn46hqMV8-pQ2cKdscYheSTNY7FH0jmg/s400/DSC00018.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00018-4abfd9db34c3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00018-4abfd9db34c3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfUYe6hacEi-_-4nRreiVIgBIwjP7mWUbEMkAk3Q8ud2doI_DudHDgCFoWJCBqiYEJQPPzECwqIdbmExAYS4q7KgNdG-9zi0_1P2wz91HzcwLhKn46hqMV8-pQ2cKdscYheSTNY7FH0jmg/s400/DSC00018.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00012-4f3bb9e7509f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00012-4f3bb9e7509f.jpg"
elif [ -f 'DSC00012-4f3bb9e7509f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00012-4f3bb9e7509f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00012-4f3bb9e7509f.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicw-LpWoqLfPR5q820P1xug4el9g78saG2X2YlERYhp74AYnc5JE68zYeY-yHowd7h1ikUSggRvOFbz4sAADZGZlFy5Usdblt-C1TA_R6MOqGZBGwe9vEcBu9wRW5t_AJghLiGbyUG6C6Z/s400/DSC00012.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00012-4f3bb9e7509f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00012-4f3bb9e7509f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicw-LpWoqLfPR5q820P1xug4el9g78saG2X2YlERYhp74AYnc5JE68zYeY-yHowd7h1ikUSggRvOFbz4sAADZGZlFy5Usdblt-C1TA_R6MOqGZBGwe9vEcBu9wRW5t_AJghLiGbyUG6C6Z/s400/DSC00012.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00017-231205ddf6be.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00017-231205ddf6be.jpg"
elif [ -f 'DSC00017-231205ddf6be.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00017-231205ddf6be.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00017-231205ddf6be.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgM-HCtrGrU0m00cNgG7QTPq8DUc8FmqbID3lFap06s1ZdKoEDZ0aJiAKtQekpDVU-4E_UL8iT5KTWqG-KD3Tqh2-RAmgO1Lrhd7sszDu88_LyJp2M1bL-8-weLLDWJ_x1Gy7QmEdeqomr9/s400/DSC00017.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00017-231205ddf6be.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00017-231205ddf6be.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgM-HCtrGrU0m00cNgG7QTPq8DUc8FmqbID3lFap06s1ZdKoEDZ0aJiAKtQekpDVU-4E_UL8iT5KTWqG-KD3Tqh2-RAmgO1Lrhd7sszDu88_LyJp2M1bL-8-weLLDWJ_x1Gy7QmEdeqomr9/s400/DSC00017.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00015-45c868214fbd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00015-45c868214fbd.jpg"
elif [ -f 'DSC00015-45c868214fbd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00015-45c868214fbd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00015-45c868214fbd.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhsTvchFj8LQHbDXf6_uNCwQKlT6nFg5QeiRymmI8eiLXBm0OxjItIWH-K1sVdmk9_n7OywGpYfP3b03VRpk9kjd_Z8rReOxOWjj7dRw7CLWCLIRJV2pNPl5nv7DHmfrF02Ef-NcWfem6x/s400/DSC00015.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00015-45c868214fbd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00015-45c868214fbd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhsTvchFj8LQHbDXf6_uNCwQKlT6nFg5QeiRymmI8eiLXBm0OxjItIWH-K1sVdmk9_n7OywGpYfP3b03VRpk9kjd_Z8rReOxOWjj7dRw7CLWCLIRJV2pNPl5nv7DHmfrF02Ef-NcWfem6x/s400/DSC00015.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Picture-20-da7e5b00cec5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Picture-20-da7e5b00cec5.jpg"
elif [ -f 'Picture-20-da7e5b00cec5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Picture-20-da7e5b00cec5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Picture-20-da7e5b00cec5.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGDdXxXYbSefHG-MWUf9s_gSN32PiYs5Zr0BbWiZc9UcQVpR_PEh9zAveHgc0A0lSlY1OvB2__iGK03soIITfutRlPjztX3HC5X6HSpxlw5AY-LhRdFRqXNJmaDQQy3HNig642m-5Q6CxG/s400/Picture+20.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Picture-20-da7e5b00cec5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Picture-20-da7e5b00cec5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGDdXxXYbSefHG-MWUf9s_gSN32PiYs5Zr0BbWiZc9UcQVpR_PEh9zAveHgc0A0lSlY1OvB2__iGK03soIITfutRlPjztX3HC5X6HSpxlw5AY-LhRdFRqXNJmaDQQy3HNig642m-5Q6CxG/s400/Picture+20.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Picture-21-08b9bc22144e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Picture-21-08b9bc22144e.jpg"
elif [ -f 'Picture-21-08b9bc22144e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Picture-21-08b9bc22144e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'Picture-21-08b9bc22144e.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8ZcTlcZvVg5_6dkexK8Ht1WYw7sj2COjydBioX_IPIwQcL1uoUd6_DJth-LgolkO7lhWU9j5JCA3en-U7iEam7VQRDFV6Ahi0fsZ2SNCC8ubiEPW70o-_0XnWqJyOeHpJ2yS2ou9gRIMU/s400/Picture+21.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Picture-21-08b9bc22144e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Picture-21-08b9bc22144e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8ZcTlcZvVg5_6dkexK8Ht1WYw7sj2COjydBioX_IPIwQcL1uoUd6_DJth-LgolkO7lhWU9j5JCA3en-U7iEam7VQRDFV6Ahi0fsZ2SNCC8ubiEPW70o-_0XnWqJyOeHpJ2yS2ou9gRIMU/s400/Picture+21.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00085-f8c6f4534d72.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00085-f8c6f4534d72.jpg"
elif [ -f 'DSC00085-f8c6f4534d72.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00085-f8c6f4534d72.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00085-f8c6f4534d72.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7JWDPVKKkxPHi9JmLmCmQAQ728L4FdfdlMW6bJl6Ne-kUrPB3XN2OAs28LCZxnmHY9-bVz-ELam-YDFgLYABmPqUX6S36efJN1WdxT4BzxzdmMzshk1aE7Oz6cHDnr27blv2f9GPshaWw/s400/DSC00085.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00085-f8c6f4534d72.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00085-f8c6f4534d72.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7JWDPVKKkxPHi9JmLmCmQAQ728L4FdfdlMW6bJl6Ne-kUrPB3XN2OAs28LCZxnmHY9-bVz-ELam-YDFgLYABmPqUX6S36efJN1WdxT4BzxzdmMzshk1aE7Oz6cHDnr27blv2f9GPshaWw/s400/DSC00085.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f '1129048338building-f23759c155c9.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 1129048338building-f23759c155c9.jpg"
elif [ -f '1129048338building-f23759c155c9.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 1129048338building-f23759c155c9.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '1129048338building-f23759c155c9.jpg' 'http://www.lestwarog.com/admin/uploads/building/main_image/1129048338building.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 1129048338building-f23759c155c9.jpg"
else
  FAILED=$((FAILED + 1))
  touch '1129048338building-f23759c155c9.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.lestwarog.com/admin/uploads/building/main_image/1129048338building.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'aerialmap-9ab7ee12a173.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): aerialmap-9ab7ee12a173.jpg"
elif [ -f 'aerialmap-9ab7ee12a173.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): aerialmap-9ab7ee12a173.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'aerialmap-9ab7ee12a173.jpg' 'http://www.lestwarog.com/777burrard/images/aerialmap.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: aerialmap-9ab7ee12a173.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'aerialmap-9ab7ee12a173.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.lestwarog.com/777burrard/images/aerialmap.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tabella-a9cafd438e8d.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tabella-a9cafd438e8d.gif"
elif [ -f 'tabella-a9cafd438e8d.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tabella-a9cafd438e8d.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'tabella-a9cafd438e8d.gif' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEivx0qThbDfFQkFIidgi5cpKK83G0x0W-WxJKQkwgs1Jjm6LPHKye3x04Y5x8MpNXkoHawm76by3dIjRqSl_uysS5MYQr13GfD5CkK72Wa82d-gEokJyJWjUPxMdtN6ELQhhduPMHafeVY/s400/tabella.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tabella-a9cafd438e8d.gif"
else
  FAILED=$((FAILED + 1))
  touch 'tabella-a9cafd438e8d.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEivx0qThbDfFQkFIidgi5cpKK83G0x0W-WxJKQkwgs1Jjm6LPHKye3x04Y5x8MpNXkoHawm76by3dIjRqSl_uysS5MYQr13GfD5CkK72Wa82d-gEokJyJWjUPxMdtN6ELQhhduPMHafeVY/s400/tabella.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00044-da32e77af99e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00044-da32e77af99e.jpg"
elif [ -f 'DSC00044-da32e77af99e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00044-da32e77af99e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00044-da32e77af99e.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/320/280557/DSC00044.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00044-da32e77af99e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00044-da32e77af99e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/320/280557/DSC00044.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00043-fbf86c58ac42.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00043-fbf86c58ac42.jpg"
elif [ -f 'DSC00043-fbf86c58ac42.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00043-fbf86c58ac42.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00043-fbf86c58ac42.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/320/65504/DSC00043.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00043-fbf86c58ac42.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00043-fbf86c58ac42.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/320/65504/DSC00043.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00045-4c0675bc933a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00045-4c0675bc933a.jpg"
elif [ -f 'DSC00045-4c0675bc933a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00045-4c0675bc933a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00045-4c0675bc933a.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/320/655695/DSC00045.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00045-4c0675bc933a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00045-4c0675bc933a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/320/655695/DSC00045.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00046-9c40bd376f1d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00046-9c40bd376f1d.jpg"
elif [ -f 'DSC00046-9c40bd376f1d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00046-9c40bd376f1d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00046-9c40bd376f1d.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/320/757723/DSC00046.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00046-9c40bd376f1d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00046-9c40bd376f1d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/320/757723/DSC00046.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00048-6baae7fc1df1.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00048-6baae7fc1df1.jpg"
elif [ -f 'DSC00048-6baae7fc1df1.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00048-6baae7fc1df1.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00048-6baae7fc1df1.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/320/923854/DSC00048.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00048-6baae7fc1df1.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00048-6baae7fc1df1.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/320/923854/DSC00048.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00020-b5ebd6e5ffc0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00020-b5ebd6e5ffc0.jpg"
elif [ -f 'DSC00020-b5ebd6e5ffc0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00020-b5ebd6e5ffc0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00020-b5ebd6e5ffc0.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/DSC00020.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00020-b5ebd6e5ffc0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00020-b5ebd6e5ffc0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/DSC00020.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00006-1fd481243942.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00006-1fd481243942.jpg"
elif [ -f 'DSC00006-1fd481243942.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00006-1fd481243942.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00006-1fd481243942.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/DSC00006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00006-1fd481243942.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00006-1fd481243942.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/DSC00006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00007-32397c5e18c4.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00007-32397c5e18c4.jpg"
elif [ -f 'DSC00007-32397c5e18c4.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00007-32397c5e18c4.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'DSC00007-32397c5e18c4.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/DSC00007.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00007-32397c5e18c4.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00007-32397c5e18c4.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/DSC00007.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0082-3c44f4996f6d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0082-3c44f4996f6d.jpg"
elif [ -f 'IMG-0082-3c44f4996f6d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0082-3c44f4996f6d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0082-3c44f4996f6d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0082.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0082-3c44f4996f6d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0082-3c44f4996f6d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0082.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0093-41a088f4f2f7.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0093-41a088f4f2f7.jpg"
elif [ -f 'IMG-0093-41a088f4f2f7.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0093-41a088f4f2f7.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0093-41a088f4f2f7.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0093.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0093-41a088f4f2f7.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0093-41a088f4f2f7.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0093.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0079-2cacdbeecda0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0079-2cacdbeecda0.jpg"
elif [ -f 'IMG-0079-2cacdbeecda0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0079-2cacdbeecda0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0079-2cacdbeecda0.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0079.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0079-2cacdbeecda0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0079-2cacdbeecda0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0079.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0098-b065b1f92e16.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0098-b065b1f92e16.jpg"
elif [ -f 'IMG-0098-b065b1f92e16.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0098-b065b1f92e16.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0098-b065b1f92e16.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0098.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0098-b065b1f92e16.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0098-b065b1f92e16.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0098.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0105-2b95c5c358f6.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0105-2b95c5c358f6.jpg"
elif [ -f 'IMG-0105-2b95c5c358f6.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0105-2b95c5c358f6.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0105-2b95c5c358f6.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0105.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0105-2b95c5c358f6.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0105-2b95c5c358f6.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0105.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '67011814-m-d5f675944289.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 67011814-m-d5f675944289.jpg"
elif [ -f '67011814-m-d5f675944289.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 67011814-m-d5f675944289.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '67011814-m-d5f675944289.jpg' 'http://myspace-814.vo.llnwd.net/00067/41/81/67011814_m.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 67011814-m-d5f675944289.jpg"
else
  FAILED=$((FAILED + 1))
  touch '67011814-m-d5f675944289.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://myspace-814.vo.llnwd.net/00067/41/81/67011814_m.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0044-1af2d037f817.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0044-1af2d037f817.jpg"
elif [ -f 'IMG-0044-1af2d037f817.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0044-1af2d037f817.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0044-1af2d037f817.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0044.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0044-1af2d037f817.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0044-1af2d037f817.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0044.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0057-0-2fcea3f65b1b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0057-0-2fcea3f65b1b.jpg"
elif [ -f 'IMG-0057-0-2fcea3f65b1b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0057-0-2fcea3f65b1b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0057-0-2fcea3f65b1b.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0057.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0057-0-2fcea3f65b1b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0057-0-2fcea3f65b1b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0057.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0056-0-2a09cb6e86ee.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0056-0-2a09cb6e86ee.jpg"
elif [ -f 'IMG-0056-0-2a09cb6e86ee.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0056-0-2a09cb6e86ee.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0056-0-2a09cb6e86ee.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0056.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0056-0-2a09cb6e86ee.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0056-0-2a09cb6e86ee.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0056.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0095-0-9033003ef975.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0095-0-9033003ef975.jpg"
elif [ -f 'IMG-0095-0-9033003ef975.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0095-0-9033003ef975.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0095-0-9033003ef975.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0095.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0095-0-9033003ef975.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0095-0-9033003ef975.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0095.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0065-0-5eb493b87667.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0065-0-5eb493b87667.jpg"
elif [ -f 'IMG-0065-0-5eb493b87667.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0065-0-5eb493b87667.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0065-0-5eb493b87667.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0065.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0065-0-5eb493b87667.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0065-0-5eb493b87667.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0065.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0051-0-a051d6b188f3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0051-0-a051d6b188f3.jpg"
elif [ -f 'IMG-0051-0-a051d6b188f3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0051-0-a051d6b188f3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0051-0-a051d6b188f3.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0051.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0051-0-a051d6b188f3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0051-0-a051d6b188f3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0051.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0053-ffed177a2642.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0053-ffed177a2642.jpg"
elif [ -f 'IMG-0053-ffed177a2642.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0053-ffed177a2642.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0053-ffed177a2642.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0053.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0053-ffed177a2642.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0053-ffed177a2642.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0053.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-1-83554d09fe5b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-1-83554d09fe5b.jpg"
elif [ -f 'IMG-0063-1-83554d09fe5b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-1-83554d09fe5b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0063-1-83554d09fe5b.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-1-83554d09fe5b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-1-83554d09fe5b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-2-cd543dd61c0d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-2-cd543dd61c0d.jpg"
elif [ -f 'IMG-0071-2-cd543dd61c0d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-2-cd543dd61c0d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0071-2-cd543dd61c0d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-2-cd543dd61c0d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-2-cd543dd61c0d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0062-0-22f5219dd8e8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0062-0-22f5219dd8e8.jpg"
elif [ -f 'IMG-0062-0-22f5219dd8e8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0062-0-22f5219dd8e8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0062-0-22f5219dd8e8.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0062.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0062-0-22f5219dd8e8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0062-0-22f5219dd8e8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0062.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0072-0-f566141f8a54.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0072-0-f566141f8a54.jpg"
elif [ -f 'IMG-0072-0-f566141f8a54.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0072-0-f566141f8a54.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0072-0-f566141f8a54.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0072.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0072-0-f566141f8a54.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0072-0-f566141f8a54.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0072.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0091-353d02d1bec3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0091-353d02d1bec3.jpg"
elif [ -f 'IMG-0091-353d02d1bec3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0091-353d02d1bec3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0091-353d02d1bec3.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0091.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0091-353d02d1bec3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0091-353d02d1bec3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0091.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-1-f7b2503e808f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-1-f7b2503e808f.jpg"
elif [ -f 'IMG-0006-1-f7b2503e808f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-1-f7b2503e808f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0006-1-f7b2503e808f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-1-f7b2503e808f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-1-f7b2503e808f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0014-0-47adb123a29a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0014-0-47adb123a29a.jpg"
elif [ -f 'IMG-0014-0-47adb123a29a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0014-0-47adb123a29a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0014-0-47adb123a29a.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0014.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0014-0-47adb123a29a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0014-0-47adb123a29a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0014.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-1-d9d3ce8f40bf.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-1-d9d3ce8f40bf.jpg"
elif [ -f 'IMG-0007-1-d9d3ce8f40bf.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-1-d9d3ce8f40bf.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0007-1-d9d3ce8f40bf.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-1-d9d3ce8f40bf.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-1-d9d3ce8f40bf.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0024-2-5f008f92222d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0024-2-5f008f92222d.jpg"
elif [ -f 'IMG-0024-2-5f008f92222d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0024-2-5f008f92222d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0024-2-5f008f92222d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0024.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0024-2-5f008f92222d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0024-2-5f008f92222d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0024.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-1-96bc65484f21.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-1-96bc65484f21.jpg"
elif [ -f 'IMG-0027-1-96bc65484f21.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-1-96bc65484f21.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0027-1-96bc65484f21.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-1-96bc65484f21.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-1-96bc65484f21.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0033-b1a91d899702.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0033-b1a91d899702.jpg"
elif [ -f 'IMG-0033-b1a91d899702.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0033-b1a91d899702.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0033-b1a91d899702.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0033.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0033-b1a91d899702.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0033-b1a91d899702.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0033.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'karoA-37ec083d6374.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): karoA-37ec083d6374.gif"
elif [ -f 'karoA-37ec083d6374.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): karoA-37ec083d6374.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'karoA-37ec083d6374.gif' 'http://onlinepokerhu.com/pic/lapok/karoA.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: karoA-37ec083d6374.gif"
else
  FAILED=$((FAILED + 1))
  touch 'karoA-37ec083d6374.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://onlinepokerhu.com/pic/lapok/karoA.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'karoK-330412c67966.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): karoK-330412c67966.gif"
elif [ -f 'karoK-330412c67966.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): karoK-330412c67966.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'karoK-330412c67966.gif' 'http://onlinepokerhu.com/pic/lapok/karoK.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: karoK-330412c67966.gif"
else
  FAILED=$((FAILED + 1))
  touch 'karoK-330412c67966.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://onlinepokerhu.com/pic/lapok/karoK.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'karoQ-caaf1a6fbe1d.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): karoQ-caaf1a6fbe1d.gif"
elif [ -f 'karoQ-caaf1a6fbe1d.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): karoQ-caaf1a6fbe1d.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'karoQ-caaf1a6fbe1d.gif' 'http://onlinepokerhu.com/pic/lapok/karoQ.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: karoQ-caaf1a6fbe1d.gif"
else
  FAILED=$((FAILED + 1))
  touch 'karoQ-caaf1a6fbe1d.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://onlinepokerhu.com/pic/lapok/karoQ.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'karoJ-6a1364dfa5c3.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): karoJ-6a1364dfa5c3.gif"
elif [ -f 'karoJ-6a1364dfa5c3.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): karoJ-6a1364dfa5c3.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'karoJ-6a1364dfa5c3.gif' 'http://onlinepokerhu.com/pic/lapok/karoJ.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: karoJ-6a1364dfa5c3.gif"
else
  FAILED=$((FAILED + 1))
  touch 'karoJ-6a1364dfa5c3.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://onlinepokerhu.com/pic/lapok/karoJ.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'karoT-044e609ca1e8.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): karoT-044e609ca1e8.gif"
elif [ -f 'karoT-044e609ca1e8.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): karoT-044e609ca1e8.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'karoT-044e609ca1e8.gif' 'http://onlinepokerhu.com/pic/lapok/karoT.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: karoT-044e609ca1e8.gif"
else
  FAILED=$((FAILED + 1))
  touch 'karoT-044e609ca1e8.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://onlinepokerhu.com/pic/lapok/karoT.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0055-1-efb6894ab2d0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0055-1-efb6894ab2d0.jpg"
elif [ -f 'IMG-0055-1-efb6894ab2d0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0055-1-efb6894ab2d0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0055-1-efb6894ab2d0.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0055.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0055-1-efb6894ab2d0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0055-1-efb6894ab2d0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0055.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0056-3953271402a7.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0056-3953271402a7.jpg"
elif [ -f 'IMG-0056-3953271402a7.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0056-3953271402a7.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0056-3953271402a7.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0056.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0056-3953271402a7.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0056-3953271402a7.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0056.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0095-7ae49012566f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0095-7ae49012566f.jpg"
elif [ -f 'IMG-0095-7ae49012566f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0095-7ae49012566f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0095-7ae49012566f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0095.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0095-7ae49012566f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0095-7ae49012566f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0095.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0072-846a9cbffc66.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0072-846a9cbffc66.jpg"
elif [ -f 'IMG-0072-846a9cbffc66.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0072-846a9cbffc66.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0072-846a9cbffc66.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0072.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0072-846a9cbffc66.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0072-846a9cbffc66.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0072.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0077-79a3bfc1f623.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0077-79a3bfc1f623.jpg"
elif [ -f 'IMG-0077-79a3bfc1f623.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0077-79a3bfc1f623.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0077-79a3bfc1f623.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0077.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0077-79a3bfc1f623.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0077-79a3bfc1f623.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0077.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0089-c80baa99b243.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0089-c80baa99b243.jpg"
elif [ -f 'IMG-0089-c80baa99b243.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0089-c80baa99b243.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0089-c80baa99b243.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0089.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0089-c80baa99b243.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0089-c80baa99b243.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0089.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0065-33bbd4a370b5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0065-33bbd4a370b5.jpg"
elif [ -f 'IMG-0065-33bbd4a370b5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0065-33bbd4a370b5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0065-33bbd4a370b5.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0065.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0065-33bbd4a370b5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0065-33bbd4a370b5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0065.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0062-98af8f02ad39.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0062-98af8f02ad39.jpg"
elif [ -f 'IMG-0062-98af8f02ad39.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0062-98af8f02ad39.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0062-98af8f02ad39.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0062.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0062-98af8f02ad39.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0062-98af8f02ad39.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0062.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-0-c3984e0ace9e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-0-c3984e0ace9e.jpg"
elif [ -f 'IMG-0063-0-c3984e0ace9e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-0-c3984e0ace9e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0063-0-c3984e0ace9e.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-0-c3984e0ace9e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-0-c3984e0ace9e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-1-5d60462ff676.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-1-5d60462ff676.jpg"
elif [ -f 'IMG-0071-1-5d60462ff676.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-1-5d60462ff676.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0071-1-5d60462ff676.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-1-5d60462ff676.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-1-5d60462ff676.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'seatosky-a4a59e4ba40e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): seatosky-a4a59e4ba40e.jpg"
elif [ -f 'seatosky-a4a59e4ba40e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): seatosky-a4a59e4ba40e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'seatosky-a4a59e4ba40e.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/seatosky.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: seatosky-a4a59e4ba40e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'seatosky-a4a59e4ba40e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/seatosky.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0046-30c6418367db.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0046-30c6418367db.jpg"
elif [ -f 'IMG-0046-30c6418367db.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0046-30c6418367db.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0046-30c6418367db.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0046.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0046-30c6418367db.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0046-30c6418367db.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0046.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0051-ba0576ee7871.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0051-ba0576ee7871.jpg"
elif [ -f 'IMG-0051-ba0576ee7871.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0051-ba0576ee7871.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0051-ba0576ee7871.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0051.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0051-ba0576ee7871.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0051-ba0576ee7871.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0051.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0054-2e197587c8da.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0054-2e197587c8da.jpg"
elif [ -f 'IMG-0054-2e197587c8da.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0054-2e197587c8da.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0054-2e197587c8da.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0054.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0054-2e197587c8da.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0054-2e197587c8da.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0054.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-78--48536c590fc2.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-78--48536c590fc2.jpg"
elif [ -f 'K--p-78--48536c590fc2.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-78--48536c590fc2.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-78--48536c590fc2.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2878%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-78--48536c590fc2.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-78--48536c590fc2.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2878%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-77--3c4ca6414c10.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-77--3c4ca6414c10.jpg"
elif [ -f 'K--p-77--3c4ca6414c10.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-77--3c4ca6414c10.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-77--3c4ca6414c10.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2877%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-77--3c4ca6414c10.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-77--3c4ca6414c10.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2877%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-80--4c46570ec71f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-80--4c46570ec71f.jpg"
elif [ -f 'K--p-80--4c46570ec71f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-80--4c46570ec71f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-80--4c46570ec71f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2880%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-80--4c46570ec71f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-80--4c46570ec71f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2880%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'brew-logo-512a005e3694.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): brew-logo-512a005e3694.gif"
elif [ -f 'brew-logo-512a005e3694.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): brew-logo-512a005e3694.gif"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'brew-logo-512a005e3694.gif' 'http://www.bestbeerbc.com/images/brew_logo.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: brew-logo-512a005e3694.gif"
else
  FAILED=$((FAILED + 1))
  touch 'brew-logo-512a005e3694.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.bestbeerbc.com/images/brew_logo.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0021-54e9f8c517ea.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0021-54e9f8c517ea.jpg"
elif [ -f 'IMG-0021-54e9f8c517ea.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0021-54e9f8c517ea.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0021-54e9f8c517ea.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0021.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0021-54e9f8c517ea.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0021-54e9f8c517ea.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0021.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00121-8b16eb3b12b2.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00121-8b16eb3b12b2.jpg"
elif [ -f 'IMG-00121-8b16eb3b12b2.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00121-8b16eb3b12b2.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00121-8b16eb3b12b2.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00121.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00121-8b16eb3b12b2.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00121-8b16eb3b12b2.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00121.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00131-66fa3311fa63.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00131-66fa3311fa63.jpg"
elif [ -f 'IMG-00131-66fa3311fa63.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00131-66fa3311fa63.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00131-66fa3311fa63.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00131.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00131-66fa3311fa63.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00131-66fa3311fa63.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00131.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00141-385e2ce81c4a.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00141-385e2ce81c4a.jpg"
elif [ -f 'IMG-00141-385e2ce81c4a.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00141-385e2ce81c4a.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00141-385e2ce81c4a.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00141.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00141-385e2ce81c4a.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00141-385e2ce81c4a.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00141.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00151-7a3ea5200100.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00151-7a3ea5200100.jpg"
elif [ -f 'IMG-00151-7a3ea5200100.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00151-7a3ea5200100.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00151-7a3ea5200100.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00151.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00151-7a3ea5200100.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00151-7a3ea5200100.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00151.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0017-64907c92d609.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0017-64907c92d609.jpg"
elif [ -f 'IMG-0017-64907c92d609.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0017-64907c92d609.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0017-64907c92d609.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0017.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0017-64907c92d609.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0017-64907c92d609.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0017.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0020-f9cb52817a1b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0020-f9cb52817a1b.jpg"
elif [ -f 'IMG-0020-f9cb52817a1b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0020-f9cb52817a1b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0020-f9cb52817a1b.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0020.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0020-f9cb52817a1b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0020-f9cb52817a1b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0020.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0019-04054fbcb783.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0019-04054fbcb783.jpg"
elif [ -f 'IMG-0019-04054fbcb783.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0019-04054fbcb783.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0019-04054fbcb783.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0019.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0019-04054fbcb783.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0019-04054fbcb783.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0019.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00161-86216e197259.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00161-86216e197259.jpg"
elif [ -f 'IMG-00161-86216e197259.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00161-86216e197259.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00161-86216e197259.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00161.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00161-86216e197259.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00161-86216e197259.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00161.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-67--6ec2a27fda46.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-67--6ec2a27fda46.jpg"
elif [ -f 'K--p-67--6ec2a27fda46.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-67--6ec2a27fda46.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-67--6ec2a27fda46.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2867%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-67--6ec2a27fda46.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-67--6ec2a27fda46.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2867%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-68--3e24c6f4ed28.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-68--3e24c6f4ed28.jpg"
elif [ -f 'K--p-68--3e24c6f4ed28.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-68--3e24c6f4ed28.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-68--3e24c6f4ed28.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2868%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-68--3e24c6f4ed28.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-68--3e24c6f4ed28.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2868%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-69--eae662733f7b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-69--eae662733f7b.jpg"
elif [ -f 'K--p-69--eae662733f7b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-69--eae662733f7b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-69--eae662733f7b.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2869%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-69--eae662733f7b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-69--eae662733f7b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2869%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-70--4d1e144703b9.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-70--4d1e144703b9.jpg"
elif [ -f 'K--p-70--4d1e144703b9.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-70--4d1e144703b9.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-70--4d1e144703b9.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2870%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-70--4d1e144703b9.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-70--4d1e144703b9.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%2870%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-3249-491ac4c3a53d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-3249-491ac4c3a53d.jpg"
elif [ -f 'IMG-3249-491ac4c3a53d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-3249-491ac4c3a53d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-3249-491ac4c3a53d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_3249.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-3249-491ac4c3a53d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-3249-491ac4c3a53d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_3249.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-6--dc8af88a4c38.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-6--dc8af88a4c38.jpg"
elif [ -f 'K--p-6--dc8af88a4c38.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-6--dc8af88a4c38.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-6--dc8af88a4c38.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%286%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-6--dc8af88a4c38.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-6--dc8af88a4c38.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%286%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-5--c7d675e9816f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-5--c7d675e9816f.jpg"
elif [ -f 'K--p-5--c7d675e9816f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-5--c7d675e9816f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-5--c7d675e9816f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%285%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-5--c7d675e9816f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-5--c7d675e9816f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%285%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-4--4e34e5e6d09f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-4--4e34e5e6d09f.jpg"
elif [ -f 'K--p-4--4e34e5e6d09f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-4--4e34e5e6d09f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'K--p-4--4e34e5e6d09f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%284%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-4--4e34e5e6d09f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-4--4e34e5e6d09f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/K%3F%3Fp%284%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0004-0-c7e193ef996c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0004-0-c7e193ef996c.jpg"
elif [ -f 'IMG-0004-0-c7e193ef996c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0004-0-c7e193ef996c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0004-0-c7e193ef996c.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0004.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0004-0-c7e193ef996c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0004-0-c7e193ef996c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0004.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0005-ebab9284b933.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0005-ebab9284b933.jpg"
elif [ -f 'IMG-0005-ebab9284b933.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0005-ebab9284b933.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0005-ebab9284b933.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0005.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0005-ebab9284b933.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0005-ebab9284b933.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0005.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-0-209bd6ade396.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-0-209bd6ade396.jpg"
elif [ -f 'IMG-0006-0-209bd6ade396.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-0-209bd6ade396.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0006-0-209bd6ade396.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-0-209bd6ade396.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-0-209bd6ade396.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-0-87568ea5ea99.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-0-87568ea5ea99.jpg"
elif [ -f 'IMG-0007-0-87568ea5ea99.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-0-87568ea5ea99.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0007-0-87568ea5ea99.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-0-87568ea5ea99.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-0-87568ea5ea99.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0008-0-632a273ba4a7.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0008-0-632a273ba4a7.jpg"
elif [ -f 'IMG-0008-0-632a273ba4a7.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0008-0-632a273ba4a7.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0008-0-632a273ba4a7.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0008.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0008-0-632a273ba4a7.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0008-0-632a273ba4a7.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0008.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0012-0-fab4c1f1abd0.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0012-0-fab4c1f1abd0.jpg"
elif [ -f 'IMG-0012-0-fab4c1f1abd0.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0012-0-fab4c1f1abd0.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0012-0-fab4c1f1abd0.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0012.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0012-0-fab4c1f1abd0.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0012-0-fab4c1f1abd0.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0012.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0025-0-b3d926cb8abd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0025-0-b3d926cb8abd.jpg"
elif [ -f 'IMG-0025-0-b3d926cb8abd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0025-0-b3d926cb8abd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0025-0-b3d926cb8abd.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0025.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0025-0-b3d926cb8abd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0025-0-b3d926cb8abd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0025.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-2-bd9eb6ab7814.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-2-bd9eb6ab7814.jpg"
elif [ -f 'IMG-0026-2-bd9eb6ab7814.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-2-bd9eb6ab7814.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0026-2-bd9eb6ab7814.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-2-bd9eb6ab7814.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-2-bd9eb6ab7814.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0029-1-5af506f51c58.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0029-1-5af506f51c58.jpg"
elif [ -f 'IMG-0029-1-5af506f51c58.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0029-1-5af506f51c58.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0029-1-5af506f51c58.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0029.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0029-1-5af506f51c58.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0029-1-5af506f51c58.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0029.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0028-0-7c79e5600f12.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0028-0-7c79e5600f12.jpg"
elif [ -f 'IMG-0028-0-7c79e5600f12.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0028-0-7c79e5600f12.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0028-0-7c79e5600f12.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0028.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0028-0-7c79e5600f12.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0028-0-7c79e5600f12.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0028.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-0-bcbf8a922e53.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-0-bcbf8a922e53.jpg"
elif [ -f 'IMG-0027-0-bcbf8a922e53.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-0-bcbf8a922e53.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0027-0-bcbf8a922e53.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-0-bcbf8a922e53.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-0-bcbf8a922e53.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0001-0-12109486a46c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0001-0-12109486a46c.jpg"
elif [ -f 'IMG-0001-0-12109486a46c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0001-0-12109486a46c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0001-0-12109486a46c.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0001.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0001-0-12109486a46c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0001-0-12109486a46c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0001.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0002-0-1fc0838211e5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0002-0-1fc0838211e5.jpg"
elif [ -f 'IMG-0002-0-1fc0838211e5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0002-0-1fc0838211e5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0002-0-1fc0838211e5.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0002.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0002-0-1fc0838211e5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0002-0-1fc0838211e5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0002.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0003-0-c463c509d731.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0003-0-c463c509d731.jpg"
elif [ -f 'IMG-0003-0-c463c509d731.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0003-0-c463c509d731.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0003-0-c463c509d731.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0003.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0003-0-c463c509d731.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0003-0-c463c509d731.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0003.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0013-0-d66de8a50c84.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0013-0-d66de8a50c84.jpg"
elif [ -f 'IMG-0013-0-d66de8a50c84.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0013-0-d66de8a50c84.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0013-0-d66de8a50c84.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0013.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0013-0-d66de8a50c84.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0013-0-d66de8a50c84.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0013.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0057-b010e6ad133d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0057-b010e6ad133d.jpg"
elif [ -f 'IMG-0057-b010e6ad133d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0057-b010e6ad133d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0057-b010e6ad133d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0057.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0057-b010e6ad133d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0057-b010e6ad133d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0057.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0059-c6cfec8eccbd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0059-c6cfec8eccbd.jpg"
elif [ -f 'IMG-0059-c6cfec8eccbd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0059-c6cfec8eccbd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0059-c6cfec8eccbd.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0059.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0059-c6cfec8eccbd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0059-c6cfec8eccbd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0059.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0061-6dcf9cf2b156.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0061-6dcf9cf2b156.jpg"
elif [ -f 'IMG-0061-6dcf9cf2b156.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0061-6dcf9cf2b156.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0061-6dcf9cf2b156.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0061.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0061-6dcf9cf2b156.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0061-6dcf9cf2b156.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0061.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-c5c63f3006cd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-c5c63f3006cd.jpg"
elif [ -f 'IMG-0063-c5c63f3006cd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-c5c63f3006cd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0063-c5c63f3006cd.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-c5c63f3006cd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-c5c63f3006cd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0063.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0068-0f785d6deb18.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0068-0f785d6deb18.jpg"
elif [ -f 'IMG-0068-0f785d6deb18.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0068-0f785d6deb18.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0068-0f785d6deb18.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0068.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0068-0f785d6deb18.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0068-0f785d6deb18.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0068.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-13a3c4ca641c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-13a3c4ca641c.jpg"
elif [ -f 'IMG-0071-13a3c4ca641c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-13a3c4ca641c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0071-13a3c4ca641c.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-13a3c4ca641c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-13a3c4ca641c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0071.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0076-b4f0eb2704ca.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0076-b4f0eb2704ca.jpg"
elif [ -f 'IMG-0076-b4f0eb2704ca.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0076-b4f0eb2704ca.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0076-b4f0eb2704ca.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0076.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0076-b4f0eb2704ca.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0076-b4f0eb2704ca.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0076.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '360-night-lo-11de72230e76.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 360-night-lo-11de72230e76.jpg"
elif [ -f '360-night-lo-11de72230e76.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 360-night-lo-11de72230e76.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '360-night-lo-11de72230e76.jpg' 'http://www.vancouverlookout.com/gallery/views/360-night_lo.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 360-night-lo-11de72230e76.jpg"
else
  FAILED=$((FAILED + 1))
  touch '360-night-lo-11de72230e76.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://www.vancouverlookout.com/gallery/views/360-night_lo.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-bcd317e2ba7f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-bcd317e2ba7f.jpg"
elif [ -f 'IMG-0007-bcd317e2ba7f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-bcd317e2ba7f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0007-bcd317e2ba7f.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-bcd317e2ba7f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-bcd317e2ba7f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0025-42d0d3b4d00f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0025-42d0d3b4d00f.jpg"
elif [ -f 'IMG-0025-42d0d3b4d00f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0025-42d0d3b4d00f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0025-42d0d3b4d00f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0025.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0025-42d0d3b4d00f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0025-42d0d3b4d00f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0025.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0024-0-57a15c8b060b.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0024-0-57a15c8b060b.jpg"
elif [ -f 'IMG-0024-0-57a15c8b060b.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0024-0-57a15c8b060b.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0024-0-57a15c8b060b.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0024.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0024-0-57a15c8b060b.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0024-0-57a15c8b060b.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0024.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-1-71b00f96671d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-1-71b00f96671d.jpg"
elif [ -f 'IMG-0026-1-71b00f96671d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-1-71b00f96671d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0026-1-71b00f96671d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-1-71b00f96671d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-1-71b00f96671d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0029-0-8306eaec7aa8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0029-0-8306eaec7aa8.jpg"
elif [ -f 'IMG-0029-0-8306eaec7aa8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0029-0-8306eaec7aa8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0029-0-8306eaec7aa8.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0029.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0029-0-8306eaec7aa8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0029-0-8306eaec7aa8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0029.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0032-0-bc4410bd4454.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0032-0-bc4410bd4454.jpg"
elif [ -f 'IMG-0032-0-bc4410bd4454.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0032-0-bc4410bd4454.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0032-0-bc4410bd4454.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0032.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0032-0-bc4410bd4454.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0032-0-bc4410bd4454.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0032.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0049-f5e31d98ca39.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0049-f5e31d98ca39.jpg"
elif [ -f 'IMG-0049-f5e31d98ca39.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0049-f5e31d98ca39.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0049-f5e31d98ca39.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0049.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0049-f5e31d98ca39.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0049-f5e31d98ca39.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0049.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0052-9607256adb3c.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0052-9607256adb3c.jpg"
elif [ -f 'IMG-0052-9607256adb3c.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0052-9607256adb3c.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0052-9607256adb3c.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0052.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0052-9607256adb3c.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0052-9607256adb3c.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0052.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0055-b1773054f4c8.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0055-b1773054f4c8.jpg"
elif [ -f 'IMG-0055-b1773054f4c8.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0055-b1773054f4c8.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0055-b1773054f4c8.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0055.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0055-b1773054f4c8.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0055-b1773054f4c8.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0055.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0048-6355a9b6de75.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0048-6355a9b6de75.jpg"
elif [ -f 'IMG-0048-6355a9b6de75.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0048-6355a9b6de75.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0048-6355a9b6de75.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0048.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0048-6355a9b6de75.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0048-6355a9b6de75.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0048.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0031-0-5ead604c36c1.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0031-0-5ead604c36c1.jpg"
elif [ -f 'IMG-0031-0-5ead604c36c1.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0031-0-5ead604c36c1.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0031-0-5ead604c36c1.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0031.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0031-0-5ead604c36c1.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0031-0-5ead604c36c1.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0031.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0018-0-5ebb4f0be157.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0018-0-5ebb4f0be157.jpg"
elif [ -f 'IMG-0018-0-5ebb4f0be157.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0018-0-5ebb4f0be157.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0018-0-5ebb4f0be157.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0018.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0018-0-5ebb4f0be157.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0018-0-5ebb4f0be157.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0018.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0019-0-38a572fa974f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0019-0-38a572fa974f.jpg"
elif [ -f 'IMG-0019-0-38a572fa974f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0019-0-38a572fa974f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0019-0-38a572fa974f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0019.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0019-0-38a572fa974f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0019-0-38a572fa974f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0019.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0004-c0578c1d29a4.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0004-c0578c1d29a4.jpg"
elif [ -f 'IMG-0004-c0578c1d29a4.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0004-c0578c1d29a4.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0004-c0578c1d29a4.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0004.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0004-c0578c1d29a4.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0004-c0578c1d29a4.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0004.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00061-e3a67fb01fde.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00061-e3a67fb01fde.jpg"
elif [ -f 'IMG-00061-e3a67fb01fde.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00061-e3a67fb01fde.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00061-e3a67fb01fde.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00061.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00061-e3a67fb01fde.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00061-e3a67fb01fde.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00061.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00071-68e35316a1fb.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00071-68e35316a1fb.jpg"
elif [ -f 'IMG-00071-68e35316a1fb.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00071-68e35316a1fb.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00071-68e35316a1fb.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00071.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00071-68e35316a1fb.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00071-68e35316a1fb.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00071.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0001-4ea9369e5bb7.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0001-4ea9369e5bb7.jpg"
elif [ -f 'IMG-0001-4ea9369e5bb7.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0001-4ea9369e5bb7.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0001-4ea9369e5bb7.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0001.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0001-4ea9369e5bb7.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0001-4ea9369e5bb7.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0001.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00122-dc2ef7a3a746.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00122-dc2ef7a3a746.jpg"
elif [ -f 'IMG-00122-dc2ef7a3a746.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00122-dc2ef7a3a746.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00122-dc2ef7a3a746.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00122.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00122-dc2ef7a3a746.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00122-dc2ef7a3a746.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00122.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-34a973146527.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-34a973146527.jpg"
elif [ -f 'IMG-0026-34a973146527.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-34a973146527.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0026-34a973146527.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-34a973146527.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-34a973146527.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0026.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-f757a6d5009f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-f757a6d5009f.jpg"
elif [ -f 'IMG-0027-f757a6d5009f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-f757a6d5009f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0027-f757a6d5009f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-f757a6d5009f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-f757a6d5009f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0027.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0031-449343f5abf5.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0031-449343f5abf5.jpg"
elif [ -f 'IMG-0031-449343f5abf5.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0031-449343f5abf5.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0031-449343f5abf5.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0031.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0031-449343f5abf5.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0031-449343f5abf5.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0031.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0030-ad7687b3c562.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0030-ad7687b3c562.jpg"
elif [ -f 'IMG-0030-ad7687b3c562.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0030-ad7687b3c562.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0030-ad7687b3c562.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0030.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0030-ad7687b3c562.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0030-ad7687b3c562.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0030.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0028-136826bb3a45.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0028-136826bb3a45.jpg"
elif [ -f 'IMG-0028-136826bb3a45.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0028-136826bb3a45.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0028-136826bb3a45.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0028.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0028-136826bb3a45.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0028-136826bb3a45.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0028.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0035-7ee1d0c2b9f3.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0035-7ee1d0c2b9f3.jpg"
elif [ -f 'IMG-0035-7ee1d0c2b9f3.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0035-7ee1d0c2b9f3.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0035-7ee1d0c2b9f3.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0035.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0035-7ee1d0c2b9f3.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0035-7ee1d0c2b9f3.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0035.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0002-a801f415480f.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0002-a801f415480f.jpg"
elif [ -f 'IMG-0002-a801f415480f.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0002-a801f415480f.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0002-a801f415480f.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0002.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0002-a801f415480f.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0002-a801f415480f.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0002.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-9dcf00fb7fbd.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-9dcf00fb7fbd.jpg"
elif [ -f 'IMG-0006-9dcf00fb7fbd.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-9dcf00fb7fbd.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0006-9dcf00fb7fbd.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-9dcf00fb7fbd.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-9dcf00fb7fbd.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-4ce7fa106345.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-4ce7fa106345.jpg"
elif [ -f 'IMG-0007-4ce7fa106345.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-4ce7fa106345.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0007-4ce7fa106345.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-4ce7fa106345.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-4ce7fa106345.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0007.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0009-f881fa0f5388.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0009-f881fa0f5388.jpg"
elif [ -f 'IMG-0009-f881fa0f5388.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0009-f881fa0f5388.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0009-f881fa0f5388.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0009.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0009-f881fa0f5388.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0009-f881fa0f5388.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0009.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00081-1ff37e4041d1.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00081-1ff37e4041d1.jpg"
elif [ -f 'IMG-00081-1ff37e4041d1.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00081-1ff37e4041d1.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00081-1ff37e4041d1.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00081.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00081-1ff37e4041d1.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00081-1ff37e4041d1.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00081.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00101-0fa630485e07.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00101-0fa630485e07.jpg"
elif [ -f 'IMG-00101-0fa630485e07.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00101-0fa630485e07.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-00101-0fa630485e07.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_00101.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00101-0fa630485e07.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00101-0fa630485e07.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_00101.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0016-7dd0cfe3b3d1.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0016-7dd0cfe3b3d1.jpg"
elif [ -f 'IMG-0016-7dd0cfe3b3d1.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0016-7dd0cfe3b3d1.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0016-7dd0cfe3b3d1.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0016.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0016-7dd0cfe3b3d1.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0016-7dd0cfe3b3d1.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0016.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0008-11c198e83c3e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0008-11c198e83c3e.jpg"
elif [ -f 'IMG-0008-11c198e83c3e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0008-11c198e83c3e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0008-11c198e83c3e.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0008.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0008-11c198e83c3e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0008-11c198e83c3e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0008.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0010-b12076af2e09.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0010-b12076af2e09.jpg"
elif [ -f 'IMG-0010-b12076af2e09.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0010-b12076af2e09.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0010-b12076af2e09.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0010.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0010-b12076af2e09.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0010-b12076af2e09.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0010.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0012-f6b11e28535d.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0012-f6b11e28535d.jpg"
elif [ -f 'IMG-0012-f6b11e28535d.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0012-f6b11e28535d.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0012-f6b11e28535d.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0012.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0012-f6b11e28535d.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0012-f6b11e28535d.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0012.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0011-5b72894ccf3e.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0011-5b72894ccf3e.jpg"
elif [ -f 'IMG-0011-5b72894ccf3e.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0011-5b72894ccf3e.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0011-5b72894ccf3e.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0011.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0011-5b72894ccf3e.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0011-5b72894ccf3e.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0011.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0013-b0d15e2229ea.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0013-b0d15e2229ea.jpg"
elif [ -f 'IMG-0013-b0d15e2229ea.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0013-b0d15e2229ea.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0013-b0d15e2229ea.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0013.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0013-b0d15e2229ea.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0013-b0d15e2229ea.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0013.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0014-d8a6c2c7ee85.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0014-d8a6c2c7ee85.jpg"
elif [ -f 'IMG-0014-d8a6c2c7ee85.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0014-d8a6c2c7ee85.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0014-d8a6c2c7ee85.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0014.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0014-d8a6c2c7ee85.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0014-d8a6c2c7ee85.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0014.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0015-b4c16474e7ee.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0015-b4c16474e7ee.jpg"
elif [ -f 'IMG-0015-b4c16474e7ee.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0015-b4c16474e7ee.jpg"
elif curl -fSL --connect-timeout 10 --max-time 30 -o 'IMG-0015-b4c16474e7ee.jpg' 'http://photos1.blogger.com/blogger/7433/817/320/IMG_0015.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0015-b4c16474e7ee.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0015-b4c16474e7ee.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/320/IMG_0015.jpg"
fi

echo ""
echo "--- Downloading 248 original full-size images ---"
echo ""
COUNT=$((COUNT + 1))
if [ -f 'southsidersWithMe-6336b34cc7de-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): southsidersWithMe-6336b34cc7de-orig.jpg"
elif [ -f 'southsidersWithMe-6336b34cc7de-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): southsidersWithMe-6336b34cc7de-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'southsidersWithMe-6336b34cc7de-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJ_0_HxMPPTpY_yni_0lBhgTv9bix_W9LGyFisC9Ec4W19RT3MwDMDDDGKAc7XKE_lMmB6So7uPXs62gADPO91rK9l8GFBgT59Of9TjpTFh6dMKJm_mvBJTe5bg-sshDYbdRWa8bTbVmjY/s1600/southsidersWithMe.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: southsidersWithMe-6336b34cc7de-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'southsidersWithMe-6336b34cc7de-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJ_0_HxMPPTpY_yni_0lBhgTv9bix_W9LGyFisC9Ec4W19RT3MwDMDDDGKAc7XKE_lMmB6So7uPXs62gADPO91rK9l8GFBgT59Of9TjpTFh6dMKJm_mvBJTe5bg-sshDYbdRWa8bTbVmjY/s1600/southsidersWithMe.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'southsiders-c5878b0cd89b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): southsiders-c5878b0cd89b-orig.jpg"
elif [ -f 'southsiders-c5878b0cd89b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): southsiders-c5878b0cd89b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'southsiders-c5878b0cd89b-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhze5rD0X2SU7OmmSqTvIhVZ02F9YACx3j-4YCnwXjp_da9dpAO1HipFt7ESlRSs9Z2hDfWkrUJ2vXuN1U14F9Nss6m1H4s3fOy6JJG1E5_y9-G_K6oSTfbK-q_QdYJWuVDPfDjDrnejgNI/s1600/southsiders.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: southsiders-c5878b0cd89b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'southsiders-c5878b0cd89b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhze5rD0X2SU7OmmSqTvIhVZ02F9YACx3j-4YCnwXjp_da9dpAO1HipFt7ESlRSs9Z2hDfWkrUJ2vXuN1U14F9Nss6m1H4s3fOy6JJG1E5_y9-G_K6oSTfbK-q_QdYJWuVDPfDjDrnejgNI/s1600/southsiders.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg"
elif [ -f 'Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJ0kPyWKOXITKzA3kkfB_2fQaMWiWsGhI-LIGXePU-cQ4dL1SKpeWkmKRpErtSduSMug3jxy4LxshXhWD0PoxevO5iSisZaAiDoXi_VzErFUydQI3IROkGwa_9erf4W0hrKUeVAwX3YPL-/s1600/Canucks2010PreseasonVsCalgary.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Canucks2010PreseasonVsCal-8123c68eff56-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJ0kPyWKOXITKzA3kkfB_2fQaMWiWsGhI-LIGXePU-cQ4dL1SKpeWkmKRpErtSduSMug3jxy4LxshXhWD0PoxevO5iSisZaAiDoXi_VzErFUydQI3IROkGwa_9erf4W0hrKUeVAwX3YPL-/s1600/Canucks2010PreseasonVsCalgary.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'spoiler-1c64b8ccc736-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): spoiler-1c64b8ccc736-orig.jpg"
elif [ -f 'spoiler-1c64b8ccc736-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): spoiler-1c64b8ccc736-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'spoiler-1c64b8ccc736-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR8i6lLPHuaad43cGfkczl5Z2gk-OMtXjsffxeoDqrKpFTLIW3J2aZprGOM70I-oCYI2xlT8p4mPE0kUADWMJcIjijwXVUvzWYzsp9Y8Odu9qhXeS_7RQ9N9c_5dwf3EjpEkBrt7R_wOeu/s1600/spoiler.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: spoiler-1c64b8ccc736-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'spoiler-1c64b8ccc736-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR8i6lLPHuaad43cGfkczl5Z2gk-OMtXjsffxeoDqrKpFTLIW3J2aZprGOM70I-oCYI2xlT8p4mPE0kUADWMJcIjijwXVUvzWYzsp9Y8Odu9qhXeS_7RQ9N9c_5dwf3EjpEkBrt7R_wOeu/s1600/spoiler.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg"
elif [ -f 'kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdGYpAHpyyEj8ZKGKTuS5nsGtmV5kZQ44KnONBD5M1dZsmHG8b8XkIK1Sp5l6sdawA3FFUsQ89LMduBzqHharStabc41RzMn-tnwp_Dv4GHnASx4dZD_DmUbABQWedK2sQVWaM_5C1nt_m/s1600-h/kisKanadZaszlosUnneplos.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'kisKanadZaszlosUnneplos-ddd65f5c4aab-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdGYpAHpyyEj8ZKGKTuS5nsGtmV5kZQ44KnONBD5M1dZsmHG8b8XkIK1Sp5l6sdawA3FFUsQ89LMduBzqHharStabc41RzMn-tnwp_Dv4GHnASx4dZD_DmUbABQWedK2sQVWaM_5C1nt_m/s1600-h/kisKanadZaszlosUnneplos.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'utcaiHoki-73ca72e4d3f0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): utcaiHoki-73ca72e4d3f0-orig.jpg"
elif [ -f 'utcaiHoki-73ca72e4d3f0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): utcaiHoki-73ca72e4d3f0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'utcaiHoki-73ca72e4d3f0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgOQnwigsrqhN98IAQPsTfyijHsXO35v_3AQlTetaX9UK31sL9Q2exOq1VVATYixvRG1plZx2JlazrXw1xfvsyi2S_Eok7rWqGS6ae0SZ3TTy0Ifbx-Q7j9p1yYfyoKGBJyOD6T2gMpuNhC/s1600-h/utcaiHoki.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: utcaiHoki-73ca72e4d3f0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'utcaiHoki-73ca72e4d3f0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgOQnwigsrqhN98IAQPsTfyijHsXO35v_3AQlTetaX9UK31sL9Q2exOq1VVATYixvRG1plZx2JlazrXw1xfvsyi2S_Eok7rWqGS6ae0SZ3TTy0Ifbx-Q7j9p1yYfyoKGBJyOD6T2gMpuNhC/s1600-h/utcaiHoki.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'magyarBobCsapat-c7b4f6407ed0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): magyarBobCsapat-c7b4f6407ed0-orig.jpg"
elif [ -f 'magyarBobCsapat-c7b4f6407ed0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): magyarBobCsapat-c7b4f6407ed0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'magyarBobCsapat-c7b4f6407ed0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPMPgcTpHqq5b_0cKycSagxSj9WOxHX_NWZBz7LPd4ErZktVxn766h10hIFek1DPWYfcuuqVuRpiD4mFeqpUyFVdFQpPQboheRMZ-bXgNriu0_Gcz70DX4UrWNik45P8CdvkyhvUAJlwMo/s1600-h/magyarBobCsapat.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: magyarBobCsapat-c7b4f6407ed0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'magyarBobCsapat-c7b4f6407ed0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPMPgcTpHqq5b_0cKycSagxSj9WOxHX_NWZBz7LPd4ErZktVxn766h10hIFek1DPWYfcuuqVuRpiD4mFeqpUyFVdFQpPQboheRMZ-bXgNriu0_Gcz70DX4UrWNik45P8CdvkyhvUAJlwMo/s1600-h/magyarBobCsapat.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'hunFlagTrio-8ad6d155faba-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): hunFlagTrio-8ad6d155faba-orig.jpg"
elif [ -f 'hunFlagTrio-8ad6d155faba-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): hunFlagTrio-8ad6d155faba-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'hunFlagTrio-8ad6d155faba-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgE5CXpXDp9c9yel5rckmeIoSAHVViqxtAQM21peBOhNh2ZrK2LcFIlcgzFa4Y1c4XY9T_V1-fUIuLoeqlr3UFowHAWJW-i9WfdWhTGiOmNC_orhb3-ViCmrgiIDv2AfSq_DVBcYDiSAnWi/s1600-h/hunFlagTrio.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: hunFlagTrio-8ad6d155faba-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'hunFlagTrio-8ad6d155faba-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgE5CXpXDp9c9yel5rckmeIoSAHVViqxtAQM21peBOhNh2ZrK2LcFIlcgzFa4Y1c4XY9T_V1-fUIuLoeqlr3UFowHAWJW-i9WfdWhTGiOmNC_orhb3-ViCmrgiIDv2AfSq_DVBcYDiSAnWi/s1600-h/hunFlagTrio.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'checzScarfJersey-0534f7966948-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): checzScarfJersey-0534f7966948-orig.jpg"
elif [ -f 'checzScarfJersey-0534f7966948-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): checzScarfJersey-0534f7966948-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'checzScarfJersey-0534f7966948-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-cZ3ho8s3nSDJ2nffwKpGsyB3xJSqJzLLO6c-kFnEYegTRFsk8gzonbTjHZPAYu0SoLlYtkqa5xfzGkn2ONiS8lbPkKEu-x6ZvgUvFpgjv_R7UcDMu8OOifkXCpQoqO8LFT_X4b-dDyg0/s1600-h/checzScarfJersey.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: checzScarfJersey-0534f7966948-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'checzScarfJersey-0534f7966948-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-cZ3ho8s3nSDJ2nffwKpGsyB3xJSqJzLLO6c-kFnEYegTRFsk8gzonbTjHZPAYu0SoLlYtkqa5xfzGkn2ONiS8lbPkKEu-x6ZvgUvFpgjv_R7UcDMu8OOifkXCpQoqO8LFT_X4b-dDyg0/s1600-h/checzScarfJersey.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'czech-lineup-5c32a30e5841-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): czech-lineup-5c32a30e5841-orig.jpg"
elif [ -f 'czech-lineup-5c32a30e5841-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): czech-lineup-5c32a30e5841-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'czech-lineup-5c32a30e5841-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhHSAqjEeAx7pdztUio1kskID678KHZEK260o52mUrpq8ukQjKq83rCVBQiwpcUzaksnkEEMAK1bHHF3ZdHWJBleA16BsP2UZsWMpamlls0ebYVdfFCgg6SZVYEfewXGl6bEEpIGocewd2c/s1600-h/czech-lineup.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: czech-lineup-5c32a30e5841-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'czech-lineup-5c32a30e5841-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhHSAqjEeAx7pdztUio1kskID678KHZEK260o52mUrpq8ukQjKq83rCVBQiwpcUzaksnkEEMAK1bHHF3ZdHWJBleA16BsP2UZsWMpamlls0ebYVdfFCgg6SZVYEfewXGl6bEEpIGocewd2c/s1600-h/czech-lineup.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'ILoveYourSmile-f49a30ae8fa4-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): ILoveYourSmile-f49a30ae8fa4-orig.jpg"
elif [ -f 'ILoveYourSmile-f49a30ae8fa4-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): ILoveYourSmile-f49a30ae8fa4-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'ILoveYourSmile-f49a30ae8fa4-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbNcdL9s9yrS5Ot7UOJM82sRLOz2206xGpXIEL2qTUPNpZF8ajk6OD1Qb2GFlHK2J93l32-rfGsHAYvYnZGFuJsJjh275yJL72lKmNnAHxRpIWm8-xiAykl04F87EIT8tYRMu47K2F6GsB/s1600-h/ILoveYourSmile.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: ILoveYourSmile-f49a30ae8fa4-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'ILoveYourSmile-f49a30ae8fa4-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbNcdL9s9yrS5Ot7UOJM82sRLOz2206xGpXIEL2qTUPNpZF8ajk6OD1Qb2GFlHK2J93l32-rfGsHAYvYnZGFuJsJjh275yJL72lKmNnAHxRpIWm8-xiAykl04F87EIT8tYRMu47K2F6GsB/s1600-h/ILoveYourSmile.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'germanFanFest-6ad9d0bf7707-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): germanFanFest-6ad9d0bf7707-orig.jpg"
elif [ -f 'germanFanFest-6ad9d0bf7707-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): germanFanFest-6ad9d0bf7707-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'germanFanFest-6ad9d0bf7707-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQLCVWUZaPzFwbVmziURJrNJYo6DcSfPVhltHx5rmkET4Gij9UxWXKhcjOfnIPnvaclmSWEGn1giMGMQAy-fgDY1YurOjxkqRJieoMRi2eTk1W-CNCrqaN1KE1vsp-aVxaA-aHBCUibtQ6/s1600-h/germanFanFest.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: germanFanFest-6ad9d0bf7707-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'germanFanFest-6ad9d0bf7707-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQLCVWUZaPzFwbVmziURJrNJYo6DcSfPVhltHx5rmkET4Gij9UxWXKhcjOfnIPnvaclmSWEGn1giMGMQAy-fgDY1YurOjxkqRJieoMRi2eTk1W-CNCrqaN1KE1vsp-aVxaA-aHBCUibtQ6/s1600-h/germanFanFest.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'PeterKimFlag-b3730df5f320-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): PeterKimFlag-b3730df5f320-orig.jpg"
elif [ -f 'PeterKimFlag-b3730df5f320-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): PeterKimFlag-b3730df5f320-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'PeterKimFlag-b3730df5f320-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhymBm_odDFl7SNnMBrJv0Kq9nNUFObCiaEsh-19aZ75nsW4w_hNR-Y2Qm20IukkCCv0eluZjBmtRuUPd9qAwdpznTuGJYG0YUzK6wafPYQrOjy3GkxPUKHyBLG6gpH0y2TElM1VCjfLNdp/s1600-h/PeterKimFlag.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: PeterKimFlag-b3730df5f320-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'PeterKimFlag-b3730df5f320-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhymBm_odDFl7SNnMBrJv0Kq9nNUFObCiaEsh-19aZ75nsW4w_hNR-Y2Qm20IukkCCv0eluZjBmtRuUPd9qAwdpznTuGJYG0YUzK6wafPYQrOjy3GkxPUKHyBLG6gpH0y2TElM1VCjfLNdp/s1600-h/PeterKimFlag.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'blueSkiJump-e7586a815de2-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): blueSkiJump-e7586a815de2-orig.jpg"
elif [ -f 'blueSkiJump-e7586a815de2-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): blueSkiJump-e7586a815de2-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'blueSkiJump-e7586a815de2-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhv1yOo0tiCnzGtayI4wVWfTTNt689Ye0EUFqnDt5UYM8XI7DNE1bL2TH51KXGWJg5MxmRxXgM4hcYlvGYLtxn-2Eo1Ly4kB7Aue9vWaSPcQuMm-_DcbLiloxZoqSVdo3P4qRQdBRR50kwG/s1600-h/blueSkiJump.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: blueSkiJump-e7586a815de2-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'blueSkiJump-e7586a815de2-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhv1yOo0tiCnzGtayI4wVWfTTNt689Ye0EUFqnDt5UYM8XI7DNE1bL2TH51KXGWJg5MxmRxXgM4hcYlvGYLtxn-2Eo1Ly4kB7Aue9vWaSPcQuMm-_DcbLiloxZoqSVdo3P4qRQdBRR50kwG/s1600-h/blueSkiJump.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'cauldron-50bf1a6d442a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): cauldron-50bf1a6d442a-orig.jpg"
elif [ -f 'cauldron-50bf1a6d442a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): cauldron-50bf1a6d442a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'cauldron-50bf1a6d442a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjLtee_Raa-kqlqXckqIj9CxThhVUAXsZVJPkzOk24n9F0Q7b0o5JprDrdSzAKt1q48BlLZPIQ4oRacfl9NHF2D4FbesBMhTsxgdfG159z0wAS1hkCRL6ewLNImFMySNDeFcbJqaK9gbDB/s1600-h/cauldron.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: cauldron-50bf1a6d442a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'cauldron-50bf1a6d442a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjLtee_Raa-kqlqXckqIj9CxThhVUAXsZVJPkzOk24n9F0Q7b0o5JprDrdSzAKt1q48BlLZPIQ4oRacfl9NHF2D4FbesBMhTsxgdfG159z0wAS1hkCRL6ewLNImFMySNDeFcbJqaK9gbDB/s1600-h/cauldron.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'RobsonSquareStreetPerform-b4679bd367ae-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): RobsonSquareStreetPerform-b4679bd367ae-orig.jpg"
elif [ -f 'RobsonSquareStreetPerform-b4679bd367ae-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): RobsonSquareStreetPerform-b4679bd367ae-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'RobsonSquareStreetPerform-b4679bd367ae-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDtXhpZPIxQPorMUpXjqnVdmk5zZC8MQHBeeWkmc689m0JSAbDyJ95osK_2oyW90t4YfU0YcGrRjWguR-J6csEBC6RAGoaHScKJVvNn94GXb-nycOpuBOOyYCKFlz0rhPUVxlc7uTJlK76/s1600-h/RobsonSquareStreetPerformer.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: RobsonSquareStreetPerform-b4679bd367ae-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'RobsonSquareStreetPerform-b4679bd367ae-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDtXhpZPIxQPorMUpXjqnVdmk5zZC8MQHBeeWkmc689m0JSAbDyJ95osK_2oyW90t4YfU0YcGrRjWguR-J6csEBC6RAGoaHScKJVvNn94GXb-nycOpuBOOyYCKFlz0rhPUVxlc7uTJlK76/s1600-h/RobsonSquareStreetPerformer.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'countdown0-fe8d991a9524-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): countdown0-fe8d991a9524-orig.jpg"
elif [ -f 'countdown0-fe8d991a9524-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): countdown0-fe8d991a9524-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'countdown0-fe8d991a9524-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbW_VA4NapSsjPmh3HHEsPagEvkY1i_2J3RtnFoobutdZbY9dbLowj7f6W7wDsmIiTDiC0MmhPF0KvvJ6ZOEWU_yhxtsi5x-ADo9nfYbxxgmFSbdkmu8SG-BUyLc17LESEK2NyjdCjgeUf/s1600-h/countdown0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: countdown0-fe8d991a9524-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'countdown0-fe8d991a9524-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbW_VA4NapSsjPmh3HHEsPagEvkY1i_2J3RtnFoobutdZbY9dbLowj7f6W7wDsmIiTDiC0MmhPF0KvvJ6ZOEWU_yhxtsi5x-ADo9nfYbxxgmFSbdkmu8SG-BUyLc17LESEK2NyjdCjgeUf/s1600-h/countdown0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'cypressSnow-f71eb48ed78f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): cypressSnow-f71eb48ed78f-orig.jpg"
elif [ -f 'cypressSnow-f71eb48ed78f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): cypressSnow-f71eb48ed78f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'cypressSnow-f71eb48ed78f-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJInKTNDZBnF5gAlQMfWcEhbYkw9FxwkwwEsp_G_py8cAenbp8EZQbAT0XgRS6SJh5XohBqfJcuem49lTmi3QcLtcBVpb1RblNnf7oJWv3-VoLtvM8cMMXejY4fnaJseX7gnpV5aRfvDyV/s1600-h/cypressSnow.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: cypressSnow-f71eb48ed78f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'cypressSnow-f71eb48ed78f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJInKTNDZBnF5gAlQMfWcEhbYkw9FxwkwwEsp_G_py8cAenbp8EZQbAT0XgRS6SJh5XohBqfJcuem49lTmi3QcLtcBVpb1RblNnf7oJWv3-VoLtvM8cMMXejY4fnaJseX7gnpV5aRfvDyV/s1600-h/cypressSnow.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'green-Marlboro-78f870c2486a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): green-Marlboro-78f870c2486a-orig.jpg"
elif [ -f 'green-Marlboro-78f870c2486a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): green-Marlboro-78f870c2486a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'green-Marlboro-78f870c2486a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinE5VsfYc0xgsyRui5k3VTqquGxQo6m0xhXUQ0ey6kHkXHS4ULd4monXP8g3IJw63K8FUGxE_miv8nlFMR_97XDVF9kP_nkxMxXm9ehlg2jZNwiVGN6qTph5cfos9qmqypl502MNUknLQk/s1600-h/green-Marlboro.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: green-Marlboro-78f870c2486a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'green-Marlboro-78f870c2486a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinE5VsfYc0xgsyRui5k3VTqquGxQo6m0xhXUQ0ey6kHkXHS4ULd4monXP8g3IJw63K8FUGxE_miv8nlFMR_97XDVF9kP_nkxMxXm9ehlg2jZNwiVGN6qTph5cfos9qmqypl502MNUknLQk/s1600-h/green-Marlboro.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'real2010Tickets-dfd95009f13f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): real2010Tickets-dfd95009f13f-orig.jpg"
elif [ -f 'real2010Tickets-dfd95009f13f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): real2010Tickets-dfd95009f13f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'real2010Tickets-dfd95009f13f-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjS0Y7DDtSlmX4HUHb_HLyrp9ATAz17shCoMFyWBY4c_dz9w8IS8eUCjiL_N1NTubGqSQgd8WnCGp3O2jQTkmWomvhCel7bAHQgDoEQXI2Mn3_6j9BbyebIZ3FJCzGkdIDl9gmSLxQauuDG/s1600-h/real2010Tickets.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: real2010Tickets-dfd95009f13f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'real2010Tickets-dfd95009f13f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjS0Y7DDtSlmX4HUHb_HLyrp9ATAz17shCoMFyWBY4c_dz9w8IS8eUCjiL_N1NTubGqSQgd8WnCGp3O2jQTkmWomvhCel7bAHQgDoEQXI2Mn3_6j9BbyebIZ3FJCzGkdIDl9gmSLxQauuDG/s1600-h/real2010Tickets.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'olympic-art-56original-Dd-542f2fa52536-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): olympic-art-56original-Dd-542f2fa52536-orig.jpg"
elif [ -f 'olympic-art-56original-Dd-542f2fa52536-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): olympic-art-56original-Dd-542f2fa52536-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'olympic-art-56original-Dd-542f2fa52536-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCo0FIcIVtYSs_OBSQi9HE8d-Vc9VjsIzsYOK_FkvQSzQ5EMhC9-yi0FQ7Fefy49XhWfTI6qfQqTlAmdLYzOamhJsoNdxExkwo-_jWBYgLA9Osv8mkNhN4F6wXQaeQbk1YYQODfM5ybxzH/s1600/olympic_art_56original-Dd.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: olympic-art-56original-Dd-542f2fa52536-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'olympic-art-56original-Dd-542f2fa52536-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCo0FIcIVtYSs_OBSQi9HE8d-Vc9VjsIzsYOK_FkvQSzQ5EMhC9-yi0FQ7Fefy49XhWfTI6qfQqTlAmdLYzOamhJsoNdxExkwo-_jWBYgLA9Osv8mkNhN4F6wXQaeQbk1YYQODfM5ybxzH/s1600/olympic_art_56original-Dd.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg"
elif [ -f 'olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_TyghnEGVlo30pG1vG9b6naxGi2VrMuk2e71lZSshtVRAEq8pyZbdAfzdisiiea1hHV7_lE8h8MQ5TZM4kinUqAZ8TzBEV7Z939d5-Ca43SSyp6kkBT_cMbKbfiQu5-ZI9GLDxAB4K26A/s1600/olympic_gold_medal_46imgFLead-DN.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'olympic-gold-medal-46imgF-44d81e2143e0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_TyghnEGVlo30pG1vG9b6naxGi2VrMuk2e71lZSshtVRAEq8pyZbdAfzdisiiea1hHV7_lE8h8MQ5TZM4kinUqAZ8TzBEV7Z939d5-Ca43SSyp6kkBT_cMbKbfiQu5-ZI9GLDxAB4K26A/s1600/olympic_gold_medal_46imgFLead-DN.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'lookRight-57caaa517d9b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): lookRight-57caaa517d9b-orig.jpg"
elif [ -f 'lookRight-57caaa517d9b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): lookRight-57caaa517d9b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'lookRight-57caaa517d9b-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmSGhv_pwGZ_1dMG5CFUgxFeK9URlj1sly8SPhJXsPD1u1V9xefe_lCG-Ep-i9heVGaTYAeTMGMIHTSx8c13KYjg1llcgFYNagJXDHryDTDbWlhT5MZc4FHqdDcqOYbn8NeqMAk8BxkKvl/s1600/lookRight.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: lookRight-57caaa517d9b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'lookRight-57caaa517d9b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmSGhv_pwGZ_1dMG5CFUgxFeK9URlj1sly8SPhJXsPD1u1V9xefe_lCG-Ep-i9heVGaTYAeTMGMIHTSx8c13KYjg1llcgFYNagJXDHryDTDbWlhT5MZc4FHqdDcqOYbn8NeqMAk8BxkKvl/s1600/lookRight.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'img-0827-3ebeb701a4a9-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): img-0827-3ebeb701a4a9-orig.jpg"
elif [ -f 'img-0827-3ebeb701a4a9-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): img-0827-3ebeb701a4a9-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'img-0827-3ebeb701a4a9-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJ7bYgDwCDf7reWqS2vq3hDxwegd5OS1O_v6GZqbjMm0QjEdQh7qWXZpYY-OAy_tExmeSCuMzlJrZ_VDu4RX6jWWS-WHz0XST-N_BB3suw47C438ich9BUB4h3UP09JWUU5fxbBUzyh3pq/s1600-h/img_0827.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: img-0827-3ebeb701a4a9-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'img-0827-3ebeb701a4a9-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJ7bYgDwCDf7reWqS2vq3hDxwegd5OS1O_v6GZqbjMm0QjEdQh7qWXZpYY-OAy_tExmeSCuMzlJrZ_VDu4RX6jWWS-WHz0XST-N_BB3suw47C438ich9BUB4h3UP09JWUU5fxbBUzyh3pq/s1600-h/img_0827.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '10234-145740197524-616027-9d11b9993a95-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 10234-145740197524-616027-9d11b9993a95-orig.jpg"
elif [ -f '10234-145740197524-616027-9d11b9993a95-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 10234-145740197524-616027-9d11b9993a95-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o '10234-145740197524-616027-9d11b9993a95-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgYAk0KtTa9PnllhkBFBWUvu3yBwLLCN2wMtUo3iV_S7pyUF1DN6aIi2mGC-rNF0lhC0IoK5j-veY4OmjzNqM4r4jvRhK1KqGvFlQl3R_X3fziJRFgD7lkmmX4ln9lywxtpt2-P1DyN7A89/s1600-h/10234_145740197524_616027524_3129070_1388148_n.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 10234-145740197524-616027-9d11b9993a95-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch '10234-145740197524-616027-9d11b9993a95-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgYAk0KtTa9PnllhkBFBWUvu3yBwLLCN2wMtUo3iV_S7pyUF1DN6aIi2mGC-rNF0lhC0IoK5j-veY4OmjzNqM4r4jvRhK1KqGvFlQl3R_X3fziJRFgD7lkmmX4ln9lywxtpt2-P1DyN7A89/s1600-h/10234_145740197524_616027524_3129070_1388148_n.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0624-70c5e402efbe-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0624-70c5e402efbe-orig.jpg"
elif [ -f 'IMG-0624-70c5e402efbe-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0624-70c5e402efbe-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0624-70c5e402efbe-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi1OWL6-c9o-dqkBX1mmlkQiKHT8Y1ByQJtMm8Xejv2b3Fq9PK3Y76r56YOsQVlWbrFvRxJ0Xcb0i0eHaEYEzhZu1oxig62Meb-eleCbNXmBrTJqT6UNt-u7mbKWRd4lKsvExAY4OhMIfYQ/s1600-h/IMG_0624.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0624-70c5e402efbe-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0624-70c5e402efbe-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi1OWL6-c9o-dqkBX1mmlkQiKHT8Y1ByQJtMm8Xejv2b3Fq9PK3Y76r56YOsQVlWbrFvRxJ0Xcb0i0eHaEYEzhZu1oxig62Meb-eleCbNXmBrTJqT6UNt-u7mbKWRd4lKsvExAY4OhMIfYQ/s1600-h/IMG_0624.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0629-3655f194cabd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0629-3655f194cabd-orig.jpg"
elif [ -f 'IMG-0629-3655f194cabd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0629-3655f194cabd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0629-3655f194cabd-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlxbW85eQGvqoYDTPat1nyoBJ4isTKeedFir6FF2j_YQEFSKFboxJgab-Jo_35M-1LMZw2T1ACKRZt2zXZqZmVRave70mv0VkHVNNz4L2F0amPbDE1rH6qPlZEqeP2nIwut_YHzsZQcw2K/s1600-h/IMG_0629.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0629-3655f194cabd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0629-3655f194cabd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlxbW85eQGvqoYDTPat1nyoBJ4isTKeedFir6FF2j_YQEFSKFboxJgab-Jo_35M-1LMZw2T1ACKRZt2zXZqZmVRave70mv0VkHVNNz4L2F0amPbDE1rH6qPlZEqeP2nIwut_YHzsZQcw2K/s1600-h/IMG_0629.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0632-a9c5be77aa84-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0632-a9c5be77aa84-orig.jpg"
elif [ -f 'IMG-0632-a9c5be77aa84-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0632-a9c5be77aa84-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0632-a9c5be77aa84-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfE-KrLNdA_lq-PFNdluMtND7EYbj9TWi_auidpC-mr3oNYgMpGoSk0ICtRg9w7L0zQlGgaJ2S6ajoTWwDU72ERyhQmGXunECAVoWJxiMKKRFm1QOEkv16z2j_qi0WGwASTbsbhErQzZMO/s1600-h/IMG_0632.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0632-a9c5be77aa84-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0632-a9c5be77aa84-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfE-KrLNdA_lq-PFNdluMtND7EYbj9TWi_auidpC-mr3oNYgMpGoSk0ICtRg9w7L0zQlGgaJ2S6ajoTWwDU72ERyhQmGXunECAVoWJxiMKKRFm1QOEkv16z2j_qi0WGwASTbsbhErQzZMO/s1600-h/IMG_0632.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'canadaline-logo-427b175cd378-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): canadaline-logo-427b175cd378-orig.jpg"
elif [ -f 'canadaline-logo-427b175cd378-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): canadaline-logo-427b175cd378-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'canadaline-logo-427b175cd378-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMryR2Be3DVRknU7FfitRSK3bz5f_uDPpNTNXd3JK8QKD4D2cjSiRCiOLn_Pz_QAZlWpxQHlHWWJrmck7tiJxhVByHR9cwpbrIcLTXlcGTvDNce09Pv5U0Ax047_Qv6KU8mniXfHbzEfpk/s1600-h/canadaline_logo.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: canadaline-logo-427b175cd378-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'canadaline-logo-427b175cd378-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMryR2Be3DVRknU7FfitRSK3bz5f_uDPpNTNXd3JK8QKD4D2cjSiRCiOLn_Pz_QAZlWpxQHlHWWJrmck7tiJxhVByHR9cwpbrIcLTXlcGTvDNce09Pv5U0Ax047_Qv6KU8mniXfHbzEfpk/s1600-h/canadaline_logo.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'canadaline-map-eab42acaa28c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): canadaline-map-eab42acaa28c-orig.jpg"
elif [ -f 'canadaline-map-eab42acaa28c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): canadaline-map-eab42acaa28c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'canadaline-map-eab42acaa28c-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqeCKPPm4PUd2CLgGjqXtqHdcRNte3MWtG5NQI3F-DICka3rqWOJ8PpPeJe9bux113XASBv_PiruZijFa2Yt_qbajTd9R0J63BPjd4JrO3SkUAWaJ0Y1Y-wJhWZ6kTf5CMw6wZgPDbYgHs/s1600-h/canadaline_map.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: canadaline-map-eab42acaa28c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'canadaline-map-eab42acaa28c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqeCKPPm4PUd2CLgGjqXtqHdcRNte3MWtG5NQI3F-DICka3rqWOJ8PpPeJe9bux113XASBv_PiruZijFa2Yt_qbajTd9R0J63BPjd4JrO3SkUAWaJ0Y1Y-wJhWZ6kTf5CMw6wZgPDbYgHs/s1600-h/canadaline_map.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-04-c71c18672d21-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-04-c71c18672d21-orig.jpg"
elif [ -f 'Ziptrek-Image-5-04-c71c18672d21-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-04-c71c18672d21-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Ziptrek-Image-5-04-c71c18672d21-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjQT4s0iUyQklUfQUTt3-sEbsVRg2tdcVkyrd3q-9s1bIxlVFFh1xHxG5m13D2uxm3CRcQ_bosTV5TlfAV6IXSe9ZRK8061XM1cBmukc2Uzkaqp23n0l5E7coHdZAm_w0y6fgGQhG_sViNn/s1600-h/Ziptrek+Image+5-04.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-04-c71c18672d21-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-04-c71c18672d21-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjQT4s0iUyQklUfQUTt3-sEbsVRg2tdcVkyrd3q-9s1bIxlVFFh1xHxG5m13D2uxm3CRcQ_bosTV5TlfAV6IXSe9ZRK8061XM1cBmukc2Uzkaqp23n0l5E7coHdZAm_w0y6fgGQhG_sViNn/s1600-h/Ziptrek+Image+5-04.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-03-d22598793c6f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-03-d22598793c6f-orig.jpg"
elif [ -f 'Ziptrek-Image-5-03-d22598793c6f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-03-d22598793c6f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Ziptrek-Image-5-03-d22598793c6f-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgmQfSS2ye0_ATBX8NLpOcTo3IA3p8L39udrS3agpxRdUdzOowqkMwjA9cs3rfYrfUjr60Xrq1oDLIGS-pbj9FY2s-WSM-ql0iXXnWVEoMzVFXtF98c4TTngD1u7Y2dhqcgAwuw4mDgA9NG/s1600-h/Ziptrek+Image+5-03.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-03-d22598793c6f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-03-d22598793c6f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgmQfSS2ye0_ATBX8NLpOcTo3IA3p8L39udrS3agpxRdUdzOowqkMwjA9cs3rfYrfUjr60Xrq1oDLIGS-pbj9FY2s-WSM-ql0iXXnWVEoMzVFXtF98c4TTngD1u7Y2dhqcgAwuw4mDgA9NG/s1600-h/Ziptrek+Image+5-03.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-02-c61a250d01fb-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-02-c61a250d01fb-orig.jpg"
elif [ -f 'Ziptrek-Image-5-02-c61a250d01fb-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-02-c61a250d01fb-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Ziptrek-Image-5-02-c61a250d01fb-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-Nv-Ts2ExmhVJa-vso7DLhroToIAhGOJgohVidWsrSRp1MZsQAMyUi8S5W2_vxSEGcdTp0BfLWAbVdbX5XTuQnnNpybzM8V1UOoaNe0bP1-oezYoiZRQaXUBBT-RazcoKjF2C_VDa_7Ev/s1600-h/Ziptrek+Image+5-02.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-02-c61a250d01fb-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-02-c61a250d01fb-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-Nv-Ts2ExmhVJa-vso7DLhroToIAhGOJgohVidWsrSRp1MZsQAMyUi8S5W2_vxSEGcdTp0BfLWAbVdbX5XTuQnnNpybzM8V1UOoaNe0bP1-oezYoiZRQaXUBBT-RazcoKjF2C_VDa_7Ev/s1600-h/Ziptrek+Image+5-02.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg"
elif [ -f 'Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguKp81Gi1jRrXhq8qu9kMyKa2AkMc6lywLv5GNcCXEUv8UZXz7iTPUvUqGSOAz3o-YZdLJZzpwIkhjC18_7exu3xXXVbt9KWZCq3dNhHA9Lj8MY_xqsgK_g_7eNoZZICsC-CAj9YDSyDL-/s1600-h/Ziptrek+Image+5-01.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Ziptrek-Image-5-01-dccc7f185aa8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguKp81Gi1jRrXhq8qu9kMyKa2AkMc6lywLv5GNcCXEUv8UZXz7iTPUvUqGSOAz3o-YZdLJZzpwIkhjC18_7exu3xXXVbt9KWZCq3dNhHA9Lj8MY_xqsgK_g_7eNoZZICsC-CAj9YDSyDL-/s1600-h/Ziptrek+Image+5-01.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020580-7e88ba3470e3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020580-7e88ba3470e3-orig.jpg"
elif [ -f 'P1020580-7e88ba3470e3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020580-7e88ba3470e3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'P1020580-7e88ba3470e3-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh5P2Z9fwiuZacMVYRI9ffa_A2qDcfnATakDqTKEpnG0EkmhOJxUSZhnQiZHY8ZH6i2z_TUmYOnolE2lHmGa0HwRJkzOGOs-XH8-adjLZ1cfUvKbf3HdrexMPuDMGQFxV33LK2BghjA0JUd/s1600-h/P1020580.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020580-7e88ba3470e3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020580-7e88ba3470e3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh5P2Z9fwiuZacMVYRI9ffa_A2qDcfnATakDqTKEpnG0EkmhOJxUSZhnQiZHY8ZH6i2z_TUmYOnolE2lHmGa0HwRJkzOGOs-XH8-adjLZ1cfUvKbf3HdrexMPuDMGQFxV33LK2BghjA0JUd/s1600-h/P1020580.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020593-951a22b9f0eb-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020593-951a22b9f0eb-orig.jpg"
elif [ -f 'P1020593-951a22b9f0eb-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020593-951a22b9f0eb-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'P1020593-951a22b9f0eb-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_W6QltHzCgA2W6ZazKWlkLCQ71WqFqsTm7O2aS7eriy1yXVHu6yvoUorLUSYFmRcPY4J6J56VqF3FY1bQLX-X53_9GcH9BI38hwj-Opx7vc9VFx1_QNfZLRHt6eBrDDCMP9uR_QtfqPMW/s1600-h/P1020593.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020593-951a22b9f0eb-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020593-951a22b9f0eb-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_W6QltHzCgA2W6ZazKWlkLCQ71WqFqsTm7O2aS7eriy1yXVHu6yvoUorLUSYFmRcPY4J6J56VqF3FY1bQLX-X53_9GcH9BI38hwj-Opx7vc9VFx1_QNfZLRHt6eBrDDCMP9uR_QtfqPMW/s1600-h/P1020593.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'P1020584-8b19fe840446-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): P1020584-8b19fe840446-orig.jpg"
elif [ -f 'P1020584-8b19fe840446-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): P1020584-8b19fe840446-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'P1020584-8b19fe840446-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbnboVdSTu6cjlKrGcRSe1HRjI94ZHk2E4qYWBYoHM2guOI5ZwuHFzKBix02HafN1hCbPl0YnHcSd3_m7u7h8Y222z09k6hXdxQHE4xr14NepS_itkluIHXy-e0Dh9X1lw8c9G_majiL0M/s1600-h/P1020584.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: P1020584-8b19fe840446-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'P1020584-8b19fe840446-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbnboVdSTu6cjlKrGcRSe1HRjI94ZHk2E4qYWBYoHM2guOI5ZwuHFzKBix02HafN1hCbPl0YnHcSd3_m7u7h8Y222z09k6hXdxQHE4xr14NepS_itkluIHXy-e0Dh9X1lw8c9G_majiL0M/s1600-h/P1020584.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'vigyazz-a97c31728e59-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): vigyazz-a97c31728e59-orig.jpg"
elif [ -f 'vigyazz-a97c31728e59-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): vigyazz-a97c31728e59-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'vigyazz-a97c31728e59-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtUj_j6rIzgwIj0ytUx59b9ynjbSknENxMqKsEuBUYWFALuJ2LX_oPBuYiyj4PhaDNj2drWnRnWOsUTvG5awYHRCkYN2gQZ7hA3TAZ-3G6G7mec55GCb2Zuxa7rovmvVsRun3a0Qm_OL_c/s1600-h/vigyazz.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: vigyazz-a97c31728e59-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'vigyazz-a97c31728e59-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtUj_j6rIzgwIj0ytUx59b9ynjbSknENxMqKsEuBUYWFALuJ2LX_oPBuYiyj4PhaDNj2drWnRnWOsUTvG5awYHRCkYN2gQZ7hA3TAZ-3G6G7mec55GCb2Zuxa7rovmvVsRun3a0Qm_OL_c/s1600-h/vigyazz.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0325-e7f80ba95c5a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0325-e7f80ba95c5a-orig.jpg"
elif [ -f 'IMG-0325-e7f80ba95c5a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0325-e7f80ba95c5a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0325-e7f80ba95c5a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhMbfzVxXlIvXr8CQ8-ZUYFzLNEi3RaxBXTgMVtgArpKmnYHQYcw2a63Pen8wajg05l1EpICYMcYTSkvYE5jS33UfhwasnQdRLxWFtGJ_uvYoEEm5cLJMKZKi3VKVlT2InrgrcHTVup7E/s0/IMG_0325.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0325-e7f80ba95c5a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0325-e7f80ba95c5a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhMbfzVxXlIvXr8CQ8-ZUYFzLNEi3RaxBXTgMVtgArpKmnYHQYcw2a63Pen8wajg05l1EpICYMcYTSkvYE5jS33UfhwasnQdRLxWFtGJ_uvYoEEm5cLJMKZKi3VKVlT2InrgrcHTVup7E/s0/IMG_0325.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'smilingheals-67cf15e7c116-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): smilingheals-67cf15e7c116-orig.jpg"
elif [ -f 'smilingheals-67cf15e7c116-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): smilingheals-67cf15e7c116-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'smilingheals-67cf15e7c116-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6Bibd1RPFKzeNcIhKDeLWB8fLBAnvMrZw3fiyoKFnlP_Hw8U0AsQGxqdrTg93mBzRRJfQduTtANc8y88vn9Jir8tZ6I7ymWUM1Ji9Y74oNVwqv3-u6fSEaqdHg4AGHwUOlC3CNkkfy_Bq/s1600-h/smilingheals.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: smilingheals-67cf15e7c116-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'smilingheals-67cf15e7c116-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6Bibd1RPFKzeNcIhKDeLWB8fLBAnvMrZw3fiyoKFnlP_Hw8U0AsQGxqdrTg93mBzRRJfQduTtANc8y88vn9Jir8tZ6I7ymWUM1Ji9Y74oNVwqv3-u6fSEaqdHg4AGHwUOlC3CNkkfy_Bq/s1600-h/smilingheals.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0286-1--b86971f5ae6d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0286-1--b86971f5ae6d-orig.jpg"
elif [ -f 'IMG-0286-1--b86971f5ae6d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0286-1--b86971f5ae6d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0286-1--b86971f5ae6d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiLyhXt_rUmzw_U0q7WciZd3JS4gsy2H264HsmbIWBRBLWGEwe_dOtH_JXA3TlocSwQDjM4mNAIVZSjpRLXh_a8Dbce3nrP4BsBFgMFEvB4NsavWKjhxcuppURf9BHutNQ_NJv3nKpOCBX-/s1600-h/IMG_0286%5B1%5D.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0286-1--b86971f5ae6d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0286-1--b86971f5ae6d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiLyhXt_rUmzw_U0q7WciZd3JS4gsy2H264HsmbIWBRBLWGEwe_dOtH_JXA3TlocSwQDjM4mNAIVZSjpRLXh_a8Dbce3nrP4BsBFgMFEvB4NsavWKjhxcuppURf9BHutNQ_NJv3nKpOCBX-/s1600-h/IMG_0286%5B1%5D.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'petiiphone-a7af2a4fd6ad-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): petiiphone-a7af2a4fd6ad-orig.jpg"
elif [ -f 'petiiphone-a7af2a4fd6ad-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): petiiphone-a7af2a4fd6ad-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'petiiphone-a7af2a4fd6ad-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiaziFLNUEbycmV_pca8_OoexCnoZPI559mtPRp7L1V-nHHHMfeseXT48xaVeAr296j22VOFt5Dh-Xck2GnjZ4QLLLCbt3O2MPr77td_aRJWtTjkW-yMfZSAI_GrZr5QI6tFnQUUi0iOwS7/s1600-h/petiiphone.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: petiiphone-a7af2a4fd6ad-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'petiiphone-a7af2a4fd6ad-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiaziFLNUEbycmV_pca8_OoexCnoZPI559mtPRp7L1V-nHHHMfeseXT48xaVeAr296j22VOFt5Dh-Xck2GnjZ4QLLLCbt3O2MPr77td_aRJWtTjkW-yMfZSAI_GrZr5QI6tFnQUUi0iOwS7/s1600-h/petiiphone.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2220046-4263-66fa463eb1d2-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2220046-4263-66fa463eb1d2-orig.jpg"
elif [ -f 'n725306787-2220046-4263-66fa463eb1d2-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2220046-4263-66fa463eb1d2-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'n725306787-2220046-4263-66fa463eb1d2-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSVIwVmC2Ieiq6C1BdTI_ffQUz4KLfd9oIQb4NVE9hDNc9MVpMWqKS1vXJ8V1-LJZZBeafRePrPRY9NeBo6dLlC03G3TfpIsTczZOtavHoM9yUDzelsxVKfygvrdZlFYHnzHfpVvCt2CPS/s1600-h/n725306787_2220046_4263.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2220046-4263-66fa463eb1d2-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2220046-4263-66fa463eb1d2-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSVIwVmC2Ieiq6C1BdTI_ffQUz4KLfd9oIQb4NVE9hDNc9MVpMWqKS1vXJ8V1-LJZZBeafRePrPRY9NeBo6dLlC03G3TfpIsTczZOtavHoM9yUDzelsxVKfygvrdZlFYHnzHfpVvCt2CPS/s1600-h/n725306787_2220046_4263.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2220041-2772-b298e8eaeb9a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2220041-2772-b298e8eaeb9a-orig.jpg"
elif [ -f 'n725306787-2220041-2772-b298e8eaeb9a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2220041-2772-b298e8eaeb9a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'n725306787-2220041-2772-b298e8eaeb9a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjB_cvUmg5Tymm_dfMHZoXd7j5EWo19sIhshGsHyQspE8KFV9SKyt4vnCEA4LSAAbSh2J6bkzWGXU-Gn9_Y3hm9vkBd0tY7IbIk8cxDZ85uIuiJ_xiBLnmRnq-PRjPV2zaMUHhQnAuzQa0g/s1600-h/n725306787_2220041_2772.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2220041-2772-b298e8eaeb9a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2220041-2772-b298e8eaeb9a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjB_cvUmg5Tymm_dfMHZoXd7j5EWo19sIhshGsHyQspE8KFV9SKyt4vnCEA4LSAAbSh2J6bkzWGXU-Gn9_Y3hm9vkBd0tY7IbIk8cxDZ85uIuiJ_xiBLnmRnq-PRjPV2zaMUHhQnAuzQa0g/s1600-h/n725306787_2220041_2772.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2173847-8893-a1d1db2c096b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2173847-8893-a1d1db2c096b-orig.jpg"
elif [ -f 'n725306787-2173847-8893-a1d1db2c096b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2173847-8893-a1d1db2c096b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'n725306787-2173847-8893-a1d1db2c096b-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsaiI7nUhJRy9tvHHgLObZJasfNDVK4b-Tbxg3e8Fz8qmtpS4BtTkdIExG9I8EuwoXlNmfF-nYxyLwXPa2jF-u26F_sg-d43L80PImhIVLjyHb_1qBCA_CNTt_JQZkmitp1lzOEFUCA5Df/s1600-h/n725306787_2173847_8893.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2173847-8893-a1d1db2c096b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2173847-8893-a1d1db2c096b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsaiI7nUhJRy9tvHHgLObZJasfNDVK4b-Tbxg3e8Fz8qmtpS4BtTkdIExG9I8EuwoXlNmfF-nYxyLwXPa2jF-u26F_sg-d43L80PImhIVLjyHb_1qBCA_CNTt_JQZkmitp1lzOEFUCA5Df/s1600-h/n725306787_2173847_8893.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'n725306787-2104394-7036-4114ffe8df4c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): n725306787-2104394-7036-4114ffe8df4c-orig.jpg"
elif [ -f 'n725306787-2104394-7036-4114ffe8df4c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): n725306787-2104394-7036-4114ffe8df4c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'n725306787-2104394-7036-4114ffe8df4c-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXVtervso3xaeqkUoOYYd-lAt8IscBB4o4hHjC0sKbhInMDMxD6wNEfZgEqpPGFvZBc5BVwLMQwQmotiH_Rz-lmBLex07SL2GyFMpyG1FAFbDDYkzSG-Tj5-wQt4oL3pAIcDqxxY_RZBI8/s1600-h/n725306787_2104394_7036.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: n725306787-2104394-7036-4114ffe8df4c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'n725306787-2104394-7036-4114ffe8df4c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXVtervso3xaeqkUoOYYd-lAt8IscBB4o4hHjC0sKbhInMDMxD6wNEfZgEqpPGFvZBc5BVwLMQwQmotiH_Rz-lmBLex07SL2GyFMpyG1FAFbDDYkzSG-Tj5-wQt4oL3pAIcDqxxY_RZBI8/s1600-h/n725306787_2104394_7036.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'theartofquitting-00163-ca50ea8831f5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): theartofquitting-00163-ca50ea8831f5-orig.jpg"
elif [ -f 'theartofquitting-00163-ca50ea8831f5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): theartofquitting-00163-ca50ea8831f5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'theartofquitting-00163-ca50ea8831f5-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhl62LY47VXtOqgA772slC3WISInMqS-oD_a2-UTIMAQT9is5ZZxs2IGpiVWqEWYxyh0EU_9idLkorBLH2u-ATzxm5kuWKZbdKxGCN9xqnxIr3qFq7Iq4zyCEjTLhIqNYq5w95-3QO6Uk__/s0/theartofquitting_00163.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: theartofquitting-00163-ca50ea8831f5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'theartofquitting-00163-ca50ea8831f5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhl62LY47VXtOqgA772slC3WISInMqS-oD_a2-UTIMAQT9is5ZZxs2IGpiVWqEWYxyh0EU_9idLkorBLH2u-ATzxm5kuWKZbdKxGCN9xqnxIr3qFq7Iq4zyCEjTLhIqNYq5w95-3QO6Uk__/s0/theartofquitting_00163.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0142ok-212747870023-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0142ok-212747870023-orig.jpg"
elif [ -f 'IMG-0142ok-212747870023-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0142ok-212747870023-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0142ok-212747870023-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilKL3x6VJcjoYTHqiciP7vKEVyOG6MiT8VYQ_zMBt-bT6gjXdE1tVX4C-3ElBeyMDa-iXz0REQFN2gLpSdWCOo7KQ1Qv3U_aNSKrxuTDs-tlWLTiq1xC-OTgozq3C4BOTz3qOgjwgoM7cN/s1600-h/IMG_0142ok.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0142ok-212747870023-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0142ok-212747870023-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilKL3x6VJcjoYTHqiciP7vKEVyOG6MiT8VYQ_zMBt-bT6gjXdE1tVX4C-3ElBeyMDa-iXz0REQFN2gLpSdWCOo7KQ1Qv3U_aNSKrxuTDs-tlWLTiq1xC-OTgozq3C4BOTz3qOgjwgoM7cN/s1600-h/IMG_0142ok.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0140-2177bb336692-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0140-2177bb336692-orig.jpg"
elif [ -f 'IMG-0140-2177bb336692-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0140-2177bb336692-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0140-2177bb336692-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEidfTeauzSLIdbj_xVUxhbQ8RCGuksJgHOUBrCUK7U1Zd8Irna9mfUMx-w6xDtiVtWdi8GScowhtlruzcnokcTRzmQEHXMt1IBgTBSkd8zh2OGGqQtPO_-fSrHHs5oPf42LlRw1mi8aX6IF/s1600-h/IMG_0140.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0140-2177bb336692-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0140-2177bb336692-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEidfTeauzSLIdbj_xVUxhbQ8RCGuksJgHOUBrCUK7U1Zd8Irna9mfUMx-w6xDtiVtWdi8GScowhtlruzcnokcTRzmQEHXMt1IBgTBSkd8zh2OGGqQtPO_-fSrHHs5oPf42LlRw1mi8aX6IF/s1600-h/IMG_0140.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-7006-018bdad1768e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-7006-018bdad1768e-orig.jpg"
elif [ -f 'IMG-7006-018bdad1768e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-7006-018bdad1768e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-7006-018bdad1768e-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkPyDgEqLWLWOkp8mvQ1r3VNn4sxBRDzBBswNxSW6CXBp1gbKVl0WaegzZgFrbRzTXYt5Q-n7QAQKjTlNweiQOf5gVs-bsedDl3r73BSlaS-PwUZvwFQoTDHixv6oNU0Dbpuw9B8HL6ExA/s1600-h/IMG_7006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-7006-018bdad1768e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-7006-018bdad1768e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkPyDgEqLWLWOkp8mvQ1r3VNn4sxBRDzBBswNxSW6CXBp1gbKVl0WaegzZgFrbRzTXYt5Q-n7QAQKjTlNweiQOf5gVs-bsedDl3r73BSlaS-PwUZvwFQoTDHixv6oNU0Dbpuw9B8HL6ExA/s1600-h/IMG_7006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0124-a0198b0463d8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0124-a0198b0463d8-orig.jpg"
elif [ -f 'IMG-0124-a0198b0463d8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0124-a0198b0463d8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0124-a0198b0463d8-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3SD-Ts0XSVdJpG-U8vOSoJOW4hU2TuwabHt0UYMWw3a8d763fIkAS3FDVZCVfXguCo2qUxMyG8oEsF6fziQljIptGkOxUQLfpamCGoX-imeUn2wLjEW1a2hvS_pSG81Kk8JQFj6dALkzn/s1600-h/IMG_0124.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0124-a0198b0463d8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0124-a0198b0463d8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3SD-Ts0XSVdJpG-U8vOSoJOW4hU2TuwabHt0UYMWw3a8d763fIkAS3FDVZCVfXguCo2qUxMyG8oEsF6fziQljIptGkOxUQLfpamCGoX-imeUn2wLjEW1a2hvS_pSG81Kk8JQFj6dALkzn/s1600-h/IMG_0124.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0126-3d18dd6f901c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0126-3d18dd6f901c-orig.jpg"
elif [ -f 'IMG-0126-3d18dd6f901c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0126-3d18dd6f901c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0126-3d18dd6f901c-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKGw8fC7yDzOqX-PynhB8K_Gpe6jtzUV9ys3PXWCPLS_rVBEErxGoxeuaY7zQzx0xB27hBZ0anqO4gH2zf5XAy9bbXO9yHtTQ6WxIiYHyTAMWsuar8cTzy9WfRIALyzwr088QvcC8IEJux/s1600-h/IMG_0126.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0126-3d18dd6f901c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0126-3d18dd6f901c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKGw8fC7yDzOqX-PynhB8K_Gpe6jtzUV9ys3PXWCPLS_rVBEErxGoxeuaY7zQzx0xB27hBZ0anqO4gH2zf5XAy9bbXO9yHtTQ6WxIiYHyTAMWsuar8cTzy9WfRIALyzwr088QvcC8IEJux/s1600-h/IMG_0126.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'yvr2bud-b183b290671a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): yvr2bud-b183b290671a-orig.jpg"
elif [ -f 'yvr2bud-b183b290671a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): yvr2bud-b183b290671a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'yvr2bud-b183b290671a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5vGwIyKqXicCcimOENNd9OIohevvyJd_WOerArh8s97E501bTtiFKwXXqFk1Ujxas3C9yTxMI3qGfoDJw1CD2iCdd9j5URjqV0WAyEd2O0ECIRP9GsC0HCbIOaFF3b58zA5lfSmu8E6jD/s1600-h/yvr2bud.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: yvr2bud-b183b290671a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'yvr2bud-b183b290671a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5vGwIyKqXicCcimOENNd9OIohevvyJd_WOerArh8s97E501bTtiFKwXXqFk1Ujxas3C9yTxMI3qGfoDJw1CD2iCdd9j5URjqV0WAyEd2O0ECIRP9GsC0HCbIOaFF3b58zA5lfSmu8E6jD/s1600-h/yvr2bud.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-6612-cde78897e07b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-6612-cde78897e07b-orig.jpg"
elif [ -f 'IMG-6612-cde78897e07b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-6612-cde78897e07b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-6612-cde78897e07b-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgwMOSQ1GZ4CT5oFn441k3FzON5EYarN9G6BA4otK-vpRXf_aJniH0rlTU_xBHh0Z04Grf_Axpyvqz1H5J8wPT_163FiveCHqd5qC9vXw-EdxvG2wfXNLGKs1YpQfltu1JDcFXZyZ2Bll_U/s1600-h/IMG_6612.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-6612-cde78897e07b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-6612-cde78897e07b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgwMOSQ1GZ4CT5oFn441k3FzON5EYarN9G6BA4otK-vpRXf_aJniH0rlTU_xBHh0Z04Grf_Axpyvqz1H5J8wPT_163FiveCHqd5qC9vXw-EdxvG2wfXNLGKs1YpQfltu1JDcFXZyZ2Bll_U/s1600-h/IMG_6612.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin1-46c385c90aae-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin1-46c385c90aae-orig.jpg"
elif [ -f 'tramboulin1-46c385c90aae-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin1-46c385c90aae-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'tramboulin1-46c385c90aae-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhHl0fwYeDx5lWqEhdG5Sp3PBR58Fo-JYRi9p3Pvw90Wq34oTKr9SE9q8w2nkjNsM_1MRRnDZ5xlL1b4tEgGlSmpxLRBIGb7nR-pzDLHlBD_-VGdWO6BWHNNhrfkMivLRQeOgXOWK8UTsQ/s1600-h/tramboulin1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin1-46c385c90aae-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin1-46c385c90aae-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhHl0fwYeDx5lWqEhdG5Sp3PBR58Fo-JYRi9p3Pvw90Wq34oTKr9SE9q8w2nkjNsM_1MRRnDZ5xlL1b4tEgGlSmpxLRBIGb7nR-pzDLHlBD_-VGdWO6BWHNNhrfkMivLRQeOgXOWK8UTsQ/s1600-h/tramboulin1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin2-5277bfb45759-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin2-5277bfb45759-orig.jpg"
elif [ -f 'tramboulin2-5277bfb45759-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin2-5277bfb45759-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'tramboulin2-5277bfb45759-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEir7JvA1MUicqhMCnHaRZbCDrOfkrbfJelItQ32aR34Hx_oJx-G81tnR3bnEECz-WVhyphenhyphenvLFP81VttdtA25KpPg59KuAbWRW7SnrhGHOPMA6zBUJuPPPv9g_dFvRYDwAwm91o_EZU8v4Qjvd/s1600-h/tramboulin2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin2-5277bfb45759-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin2-5277bfb45759-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEir7JvA1MUicqhMCnHaRZbCDrOfkrbfJelItQ32aR34Hx_oJx-G81tnR3bnEECz-WVhyphenhyphenvLFP81VttdtA25KpPg59KuAbWRW7SnrhGHOPMA6zBUJuPPPv9g_dFvRYDwAwm91o_EZU8v4Qjvd/s1600-h/tramboulin2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'tramboulin3-3f355381f036-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tramboulin3-3f355381f036-orig.jpg"
elif [ -f 'tramboulin3-3f355381f036-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tramboulin3-3f355381f036-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'tramboulin3-3f355381f036-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKQIE8x8M6RI0MtNuJksqMO6dIu_k64nMWrBiPmmxQtY2KYJm2drFODS33mfjCUuf5GIQrEf3A5Di1mnik6RI4SQIpL-mat_OVaIU0peYe_iEn5mVRlcR-2g75Y-MpWSoFLuHR46EmlAcG/s1600-h/tramboulin3.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tramboulin3-3f355381f036-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'tramboulin3-3f355381f036-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKQIE8x8M6RI0MtNuJksqMO6dIu_k64nMWrBiPmmxQtY2KYJm2drFODS33mfjCUuf5GIQrEf3A5Di1mnik6RI4SQIpL-mat_OVaIU0peYe_iEn5mVRlcR-2g75Y-MpWSoFLuHR46EmlAcG/s1600-h/tramboulin3.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Picture-48-7c85c36095bd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Picture-48-7c85c36095bd-orig.jpg"
elif [ -f 'Picture-48-7c85c36095bd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Picture-48-7c85c36095bd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Picture-48-7c85c36095bd-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj7wlBmGog6aeMOmNp4-QsnFvKjBvbl_3OF0quCC7LXCgyMLNIbhuINlQuLnH3PjhLyhqMorvnDBgCRKfNyWNIzTj0D8BcWXUdBK-8qoX_j7OWm2pVkJ1zw4XiOB0R2eMWXy_iWRCsAEYW8/s1600-h/Picture+48.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Picture-48-7c85c36095bd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Picture-48-7c85c36095bd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj7wlBmGog6aeMOmNp4-QsnFvKjBvbl_3OF0quCC7LXCgyMLNIbhuINlQuLnH3PjhLyhqMorvnDBgCRKfNyWNIzTj0D8BcWXUdBK-8qoX_j7OWm2pVkJ1zw4XiOB0R2eMWXy_iWRCsAEYW8/s1600-h/Picture+48.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'czimidiota-de96add7c41b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): czimidiota-de96add7c41b-orig.jpg"
elif [ -f 'czimidiota-de96add7c41b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): czimidiota-de96add7c41b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'czimidiota-de96add7c41b-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh24JqWOZqMi9UabKRM6tBOCKQ6lRvtLqHj3k3lNkew3Ic3PbVj7BzM8AwTG_aGrFVdSGEEDIheQfXQtTKmPjD1yC4IiKzS-T7bMX4i36AQ6Dot3O1-g4FwoG23YV4UW8Q_69C4a5py99rO/s0/czimidiota.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: czimidiota-de96add7c41b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'czimidiota-de96add7c41b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh24JqWOZqMi9UabKRM6tBOCKQ6lRvtLqHj3k3lNkew3Ic3PbVj7BzM8AwTG_aGrFVdSGEEDIheQfXQtTKmPjD1yC4IiKzS-T7bMX4i36AQ6Dot3O1-g4FwoG23YV4UW8Q_69C4a5py99rO/s0/czimidiota.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00081-0be43624d64a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00081-0be43624d64a-orig.jpg"
elif [ -f 'DSC00081-0be43624d64a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00081-0be43624d64a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00081-0be43624d64a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMq0Kfew3l1KZCH614G_lnIfRr4dxxKLs7cl_d6A_KrX0JvX3xyQVTgt2vvxXaUE79NNqGFxx82XQw3Sjqx-RiprofUVHUaWsWEnnqrIcDefxsc0gFniykqj52stqwhfaAN2CKGDgmfMPg/s1600-h/DSC00081.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00081-0be43624d64a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00081-0be43624d64a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMq0Kfew3l1KZCH614G_lnIfRr4dxxKLs7cl_d6A_KrX0JvX3xyQVTgt2vvxXaUE79NNqGFxx82XQw3Sjqx-RiprofUVHUaWsWEnnqrIcDefxsc0gFniykqj52stqwhfaAN2CKGDgmfMPg/s1600-h/DSC00081.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'closed-for-holiday-71874d263dd0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): closed-for-holiday-71874d263dd0-orig.jpg"
elif [ -f 'closed-for-holiday-71874d263dd0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): closed-for-holiday-71874d263dd0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'closed-for-holiday-71874d263dd0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQpLvruQBFiWoVB_1aSj8mJozjbhsnl7W9Dyu24aEEND9WTBDQj_GAw2AHGoxWXiPCF9xMgpFu6I6Z2gd9WEdIvrjRMx7FMT1twgcJFZ0xvIk_SAKnzzmK4V4cXPycAKQiovUIEeWlbj6v/s1600-h/closed-for-holiday.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: closed-for-holiday-71874d263dd0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'closed-for-holiday-71874d263dd0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQpLvruQBFiWoVB_1aSj8mJozjbhsnl7W9Dyu24aEEND9WTBDQj_GAw2AHGoxWXiPCF9xMgpFu6I6Z2gd9WEdIvrjRMx7FMT1twgcJFZ0xvIk_SAKnzzmK4V4cXPycAKQiovUIEeWlbj6v/s1600-h/closed-for-holiday.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'stroganoffcsirke-ad35d92aeeba-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): stroganoffcsirke-ad35d92aeeba-orig.jpg"
elif [ -f 'stroganoffcsirke-ad35d92aeeba-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): stroganoffcsirke-ad35d92aeeba-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'stroganoffcsirke-ad35d92aeeba-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFQqmM9fJl7DIq8J6L6Neoxtx66KjkGyvrrw_7dacgKjJIlohrE9NVw-pXQlVlq4mw8l8oVxJ3aLk85c5wD0NWAR2p2dp7J-KwxcO8AN4vW367ke4VhiCIlQCdPR-meRXC8Ps5rLhEjf2A/s1600-h/stroganoffcsirke.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: stroganoffcsirke-ad35d92aeeba-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'stroganoffcsirke-ad35d92aeeba-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFQqmM9fJl7DIq8J6L6Neoxtx66KjkGyvrrw_7dacgKjJIlohrE9NVw-pXQlVlq4mw8l8oVxJ3aLk85c5wD0NWAR2p2dp7J-KwxcO8AN4vW367ke4VhiCIlQCdPR-meRXC8Ps5rLhEjf2A/s1600-h/stroganoffcsirke.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg"
elif [ -f 'is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiAn5WKkHoMmsipqxUJtXqZQaGYVdUytDB5lcfcyYqVV5iz9xI4eYr3FthBTGR4856ftY1IRSr4sqJvs_sehe6OUuBgKgtoTxxXBs3dNaC-B-5XCd3VDk2CxBhyuYmJ-u_r0Lx2bvNwmx5r/s1600-h/is_satrad_na_ca_all_all_en.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'is-satrad-na-ca-all-all-e-09f443cd3a00-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiAn5WKkHoMmsipqxUJtXqZQaGYVdUytDB5lcfcyYqVV5iz9xI4eYr3FthBTGR4856ftY1IRSr4sqJvs_sehe6OUuBgKgtoTxxXBs3dNaC-B-5XCd3VDk2CxBhyuYmJ-u_r0Lx2bvNwmx5r/s1600-h/is_satrad_na_ca_all_all_en.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0230-d90928a28ee0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0230-d90928a28ee0-orig.jpg"
elif [ -f 'IMG-0230-d90928a28ee0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0230-d90928a28ee0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0230-d90928a28ee0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlqPJEWtkuAU2z6LdjZ6JTLaVZGn6-kaJ8ncoR3OdCTuHY6dE1poSX8LHkg-YTGUIf1JQ9AK1MPC1i1CbcKOzdj2mDTlEj6wnirfj0Uo5xNB-zjVX4pZCgEVGga1r6JnaOzkYc5Z3K40xg/s1600-h/IMG_0230.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0230-d90928a28ee0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0230-d90928a28ee0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlqPJEWtkuAU2z6LdjZ6JTLaVZGn6-kaJ8ncoR3OdCTuHY6dE1poSX8LHkg-YTGUIf1JQ9AK1MPC1i1CbcKOzdj2mDTlEj6wnirfj0Uo5xNB-zjVX4pZCgEVGga1r6JnaOzkYc5Z3K40xg/s1600-h/IMG_0230.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f '4stopsign-c85b9bd887d5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): 4stopsign-c85b9bd887d5-orig.jpg"
elif [ -f '4stopsign-c85b9bd887d5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): 4stopsign-c85b9bd887d5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o '4stopsign-c85b9bd887d5-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEih1t20XuA42JI2L4Vrn5S-1d92zAWr-T9EM2Po7zoumcorDIyJ-RoaCqRN0zkjQEEN_U5qYH7MuJcU1IFSr3ZbwQvtNuNNFxPqNxDQujyqMyyCs4gDV9jf6neh2uygxhCxT_9V0p4Z94Ab/s0/4stopsign.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: 4stopsign-c85b9bd887d5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch '4stopsign-c85b9bd887d5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEih1t20XuA42JI2L4Vrn5S-1d92zAWr-T9EM2Po7zoumcorDIyJ-RoaCqRN0zkjQEEN_U5qYH7MuJcU1IFSr3ZbwQvtNuNNFxPqNxDQujyqMyyCs4gDV9jf6neh2uygxhCxT_9V0p4Z94Ab/s0/4stopsign.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00241-4fc6200d79ea-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00241-4fc6200d79ea-orig.jpg"
elif [ -f 'DSC00241-4fc6200d79ea-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00241-4fc6200d79ea-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00241-4fc6200d79ea-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEic_qU3Jh2Zibu0iXHiPSa4ASfg8AfFJynBzMXOlx9m5aFcri_EIZoN-SaZnl9m-WKKl1IyyZHXWo3yJo0JZ2G6qZEzryPBlxRSn7-rjGoU3T7aiTmxMMWDjEb0opD0lVzhp1zqP2ZhYz29/s1600-h/DSC00241.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00241-4fc6200d79ea-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00241-4fc6200d79ea-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEic_qU3Jh2Zibu0iXHiPSa4ASfg8AfFJynBzMXOlx9m5aFcri_EIZoN-SaZnl9m-WKKl1IyyZHXWo3yJo0JZ2G6qZEzryPBlxRSn7-rjGoU3T7aiTmxMMWDjEb0opD0lVzhp1zqP2ZhYz29/s1600-h/DSC00241.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00242-3030916e558c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00242-3030916e558c-orig.jpg"
elif [ -f 'DSC00242-3030916e558c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00242-3030916e558c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00242-3030916e558c-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjaErU6RU-cs9HkMCxQEXuA9wUE1Vzide6dPNd4qgDX68YGVJ0VDwC814Rlv_zida9Axgcpm8stvBFQ9eCzFbe-pg3l8aqL0-TASsaNQjtBJkOvsGAPXs7Fayu412d1Bp0tR_ywwCLSPYkr/s1600-h/DSC00242.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00242-3030916e558c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00242-3030916e558c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjaErU6RU-cs9HkMCxQEXuA9wUE1Vzide6dPNd4qgDX68YGVJ0VDwC814Rlv_zida9Axgcpm8stvBFQ9eCzFbe-pg3l8aqL0-TASsaNQjtBJkOvsGAPXs7Fayu412d1Bp0tR_ywwCLSPYkr/s1600-h/DSC00242.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00243-d172b0c8acbe-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00243-d172b0c8acbe-orig.jpg"
elif [ -f 'DSC00243-d172b0c8acbe-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00243-d172b0c8acbe-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00243-d172b0c8acbe-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJgg4NPY35Yhg6YnoTd39jnpSRoD7hn5BLNGrJZj9qvXeMFKLeKhFBL06jid3Gdy1Movi0g3A_GhyIUFdtaqFaBGIWfndbQWlhdGfXVRhdFSN7AqibYvPBZqnipqfoqJJ4wM4KGe46tQj-/s1600-h/DSC00243.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00243-d172b0c8acbe-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00243-d172b0c8acbe-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJgg4NPY35Yhg6YnoTd39jnpSRoD7hn5BLNGrJZj9qvXeMFKLeKhFBL06jid3Gdy1Movi0g3A_GhyIUFdtaqFaBGIWfndbQWlhdGfXVRhdFSN7AqibYvPBZqnipqfoqJJ4wM4KGe46tQj-/s1600-h/DSC00243.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00244-812ef50556b6-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00244-812ef50556b6-orig.jpg"
elif [ -f 'DSC00244-812ef50556b6-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00244-812ef50556b6-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00244-812ef50556b6-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVl6_CdYCLyciqBpICanm3zP4OEBBYE-om2Qs1y8PKYH5Olh3Rf5mTmxJP30IUurienSQgTppo0Jr2M3LIQ4lUIhFVpvdqpCfLWGrA5W9xW6XlSQzTlfLHvW0s58M2IsFtYuln2FPTuEX5/s1600-h/DSC00244.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00244-812ef50556b6-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00244-812ef50556b6-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVl6_CdYCLyciqBpICanm3zP4OEBBYE-om2Qs1y8PKYH5Olh3Rf5mTmxJP30IUurienSQgTppo0Jr2M3LIQ4lUIhFVpvdqpCfLWGrA5W9xW6XlSQzTlfLHvW0s58M2IsFtYuln2FPTuEX5/s1600-h/DSC00244.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00248-003c1b82785d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00248-003c1b82785d-orig.jpg"
elif [ -f 'DSC00248-003c1b82785d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00248-003c1b82785d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00248-003c1b82785d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEharRw2UHLNOFML-Vn8dNmPPd0akJXad169z-_1Xb0iMJVfeFpS6I13ISlti0mAc29WJbkWJkWjXSeX8pxyTJTY8A-K6Hzacp9KKiit3Lp-XkBC1HFja3TTTp5dMl9yZwi5aZKZzJn5GGop/s1600-h/DSC00248.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00248-003c1b82785d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00248-003c1b82785d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEharRw2UHLNOFML-Vn8dNmPPd0akJXad169z-_1Xb0iMJVfeFpS6I13ISlti0mAc29WJbkWJkWjXSeX8pxyTJTY8A-K6Hzacp9KKiit3Lp-XkBC1HFja3TTTp5dMl9yZwi5aZKZzJn5GGop/s1600-h/DSC00248.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00255-8ad0ffe61a28-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00255-8ad0ffe61a28-orig.jpg"
elif [ -f 'DSC00255-8ad0ffe61a28-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00255-8ad0ffe61a28-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00255-8ad0ffe61a28-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgb_OJLcM-FqQTHtLMeLj4ujuF5PzlhmMetvhbYooCt3cgcEZVdQbUmyYb1N4o9xweKNTmKjIP1M1865ZV1wrPrfJDcK_Sv0Ps_cf2_wXPocHd_tcPLaY7h1xisNMHEbjukp2R603m-lMq2/s1600-h/DSC00255.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00255-8ad0ffe61a28-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00255-8ad0ffe61a28-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgb_OJLcM-FqQTHtLMeLj4ujuF5PzlhmMetvhbYooCt3cgcEZVdQbUmyYb1N4o9xweKNTmKjIP1M1865ZV1wrPrfJDcK_Sv0Ps_cf2_wXPocHd_tcPLaY7h1xisNMHEbjukp2R603m-lMq2/s1600-h/DSC00255.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00256-c6674912d28a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00256-c6674912d28a-orig.jpg"
elif [ -f 'DSC00256-c6674912d28a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00256-c6674912d28a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00256-c6674912d28a-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSAuL01Hy1KBRYfAOK5tEHmAocjAI3olDD40-PhcNv_H4JHrYPk-R0FC3uik_CmUNUY_KUOwKQ6zCwwVavu8fufQsbMiLpbzNagjIZkyWp3mAsij8tV-hlvYVdKnRXGngHjXKlHc0giPkr/s1600-h/DSC00256.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00256-c6674912d28a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00256-c6674912d28a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSAuL01Hy1KBRYfAOK5tEHmAocjAI3olDD40-PhcNv_H4JHrYPk-R0FC3uik_CmUNUY_KUOwKQ6zCwwVavu8fufQsbMiLpbzNagjIZkyWp3mAsij8tV-hlvYVdKnRXGngHjXKlHc0giPkr/s1600-h/DSC00256.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00213-832ea68c32f1-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00213-832ea68c32f1-orig.jpg"
elif [ -f 'DSC00213-832ea68c32f1-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00213-832ea68c32f1-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00213-832ea68c32f1-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFXCLwQnqyCJG4KrtAV7SoNvk-MfFIl8g2z5VsNOLLsiEO6hMsA-dgsW82TF-3RyzaWrLlkSRTbdj9tqK0vSrhyphenhyphenUQlGPYoX8jRO4yXNHmarpLJTOr4f_0-do_COO7t8sNbMCpcY2un27Ow/s1600-h/DSC00213.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00213-832ea68c32f1-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00213-832ea68c32f1-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFXCLwQnqyCJG4KrtAV7SoNvk-MfFIl8g2z5VsNOLLsiEO6hMsA-dgsW82TF-3RyzaWrLlkSRTbdj9tqK0vSrhyphenhyphenUQlGPYoX8jRO4yXNHmarpLJTOr4f_0-do_COO7t8sNbMCpcY2un27Ow/s1600-h/DSC00213.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00234-d48330411aec-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00234-d48330411aec-orig.jpg"
elif [ -f 'DSC00234-d48330411aec-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00234-d48330411aec-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00234-d48330411aec-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUYP1BW6ktqfFPNgVohcs10K_O1hkIg3D9AVbMiZ8WazyyZ2KDIPGgqE36gNL5t0vmpl48OdfE4LnInN6wAmOXCESVMyT_31lclTqBb4g7CLwASPpgpqvxQTQ2HSfX9BUvzIA1yHSOlmfW/s1600-h/DSC00234.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00234-d48330411aec-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00234-d48330411aec-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUYP1BW6ktqfFPNgVohcs10K_O1hkIg3D9AVbMiZ8WazyyZ2KDIPGgqE36gNL5t0vmpl48OdfE4LnInN6wAmOXCESVMyT_31lclTqBb4g7CLwASPpgpqvxQTQ2HSfX9BUvzIA1yHSOlmfW/s1600-h/DSC00234.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'burndown-chart-6c3326fc698d-orig.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): burndown-chart-6c3326fc698d-orig.png"
elif [ -f 'burndown-chart-6c3326fc698d-orig.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): burndown-chart-6c3326fc698d-orig.png"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'burndown-chart-6c3326fc698d-orig.png' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilWhyphenhyphenK1iq3WXkIn4tR4LGy4Ehbq1PZQKx7KAlyO0vkLbqllJZjYtppLyzmcVJr4yix4XJAAW_eYhWzYQ7A6F6AIauqwyKxUAePEMww4N4ez9waHSvf-0W9rhD9U2IK8Bbq6tSvwaQfOGfE/s1600-h/burndown_chart.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: burndown-chart-6c3326fc698d-orig.png"
else
  FAILED=$((FAILED + 1))
  touch 'burndown-chart-6c3326fc698d-orig.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEilWhyphenhyphenK1iq3WXkIn4tR4LGy4Ehbq1PZQKx7KAlyO0vkLbqllJZjYtppLyzmcVJr4yix4XJAAW_eYhWzYQ7A6F6AIauqwyKxUAePEMww4N4ez9waHSvf-0W9rhD9U2IK8Bbq6tSvwaQfOGfE/s1600-h/burndown_chart.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg"
elif [ -f 'i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUux56DCVD3z2kK-bLbD0FluEWdRifgAQhU0oFNvlNN_sOwWYY_Yujmsx5i_BoQdWbhgEBpP78vltF5FPAyiXRSMuWtQTPaD5o2AUBks4H-JTZdCFsHWmVml2_5NRPm4ax-8qVXMKw1gXQ/s1600-h/i7E044001-FFB2-43C1-AF4D-CC6AB4432DFE.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'i7E044001-FFB2-43C1-AF4D--57d2437eb353-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUux56DCVD3z2kK-bLbD0FluEWdRifgAQhU0oFNvlNN_sOwWYY_Yujmsx5i_BoQdWbhgEBpP78vltF5FPAyiXRSMuWtQTPaD5o2AUBks4H-JTZdCFsHWmVml2_5NRPm4ax-8qVXMKw1gXQ/s1600-h/i7E044001-FFB2-43C1-AF4D-CC6AB4432DFE.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'wanted-vote-a6758500dc9f-orig.png' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): wanted-vote-a6758500dc9f-orig.png"
elif [ -f 'wanted-vote-a6758500dc9f-orig.png.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): wanted-vote-a6758500dc9f-orig.png"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'wanted-vote-a6758500dc9f-orig.png' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgykg2uQknoWP7jcwjd8Lo1u1kDif0Iy2FdSgslZn8678f0p3bEeXnmzlydnlZWKjLFu8QGidjn-GeJxy761FYKXWE5_6OHt_rcj0JuO7qNQPVa5QnRCFgrOkHJEMqnERSuixMQEriMrwqL/s0/wanted_vote.png' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: wanted-vote-a6758500dc9f-orig.png"
else
  FAILED=$((FAILED + 1))
  touch 'wanted-vote-a6758500dc9f-orig.png.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgykg2uQknoWP7jcwjd8Lo1u1kDif0Iy2FdSgslZn8678f0p3bEeXnmzlydnlZWKjLFu8QGidjn-GeJxy761FYKXWE5_6OHt_rcj0JuO7qNQPVa5QnRCFgrOkHJEMqnERSuixMQEriMrwqL/s0/wanted_vote.png"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00047-cf1b28c4d8d9-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00047-cf1b28c4d8d9-orig.jpg"
elif [ -f 'DSC00047-cf1b28c4d8d9-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00047-cf1b28c4d8d9-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00047-cf1b28c4d8d9-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgN91IGGy0EvrTvB77YBH139fke58mMEwCPthnw9iPK_Dc46qD9ipK2AylB3ScGBAKmrba-JL5Lh_5g1mNbhr2mKSTtaYunlcdWnwQkwne3BM6IyxcTvFU4jWf8oxNOKqJPug_wGRbuFSbu/s0/DSC00047.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00047-cf1b28c4d8d9-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00047-cf1b28c4d8d9-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgN91IGGy0EvrTvB77YBH139fke58mMEwCPthnw9iPK_Dc46qD9ipK2AylB3ScGBAKmrba-JL5Lh_5g1mNbhr2mKSTtaYunlcdWnwQkwne3BM6IyxcTvFU4jWf8oxNOKqJPug_wGRbuFSbu/s0/DSC00047.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00224-cd44b7a5ba47-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00224-cd44b7a5ba47-orig.jpg"
elif [ -f 'DSC00224-cd44b7a5ba47-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00224-cd44b7a5ba47-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00224-cd44b7a5ba47-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxIzSvAT8VXCHvNoA07YXk7QPV_m3jvvDYqY-iLexjSwjgLGaeTRkJYZ3ZI75Pd6Ym-YfIZy9crSDPp-xx8qMkCL07rOb8B3-7u3fjcXyFV3c_u_MK1d2bPmIDiAy-xmpVmKM3dP8W_jsP/s1600-h/DSC00224.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00224-cd44b7a5ba47-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00224-cd44b7a5ba47-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxIzSvAT8VXCHvNoA07YXk7QPV_m3jvvDYqY-iLexjSwjgLGaeTRkJYZ3ZI75Pd6Ym-YfIZy9crSDPp-xx8qMkCL07rOb8B3-7u3fjcXyFV3c_u_MK1d2bPmIDiAy-xmpVmKM3dP8W_jsP/s1600-h/DSC00224.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00210-8eaa9673703d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00210-8eaa9673703d-orig.jpg"
elif [ -f 'DSC00210-8eaa9673703d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00210-8eaa9673703d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00210-8eaa9673703d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgqvNGsZF6bbVl_W-alIO6ZU6iJjXa4zlbfaYt7IO3fVBTE-p_j7vhXcfccIRC77pu4DBiFPTmWynryjWFfmu_D2kYKJnGZLL0oREOW5Km9Up1quAWeZYvg9Rq4-rTv8j3MZp1EqPuiW673/s1600-h/DSC00210.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00210-8eaa9673703d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00210-8eaa9673703d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgqvNGsZF6bbVl_W-alIO6ZU6iJjXa4zlbfaYt7IO3fVBTE-p_j7vhXcfccIRC77pu4DBiFPTmWynryjWFfmu_D2kYKJnGZLL0oREOW5Km9Up1quAWeZYvg9Rq4-rTv8j3MZp1EqPuiW673/s1600-h/DSC00210.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00225-76f94bd7de3e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00225-76f94bd7de3e-orig.jpg"
elif [ -f 'DSC00225-76f94bd7de3e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00225-76f94bd7de3e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00225-76f94bd7de3e-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiD7RpilB3jftryqSZce6eAS4UWgF9lq16qOJIFmNBMx9v3SkWrjEwIRoX5acXY1zIA69PS3VEIt2DI3DImClW2G3xB-1dfXgiaRrTiX4DX4SBxSXmnI7kITpdBC2gYjcxpLLh1z3eq4udy/s1600-h/DSC00225.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00225-76f94bd7de3e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00225-76f94bd7de3e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiD7RpilB3jftryqSZce6eAS4UWgF9lq16qOJIFmNBMx9v3SkWrjEwIRoX5acXY1zIA69PS3VEIt2DI3DImClW2G3xB-1dfXgiaRrTiX4DX4SBxSXmnI7kITpdBC2gYjcxpLLh1z3eq4udy/s1600-h/DSC00225.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00090-0f12397e4c7e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00090-0f12397e4c7e-orig.jpg"
elif [ -f 'DSC00090-0f12397e4c7e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00090-0f12397e4c7e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00090-0f12397e4c7e-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhj41BIQTd-CgT4mPcTVQlR7aGSLSNoOm5LEouOh0xHYXyRJUaw_Va-3ySQnnAleLoglBqLsmG9MRIpfxUjinbso1HdruieGpfNbRi3TMB2eFUl02NwPWXTzMyy6uw5BX3bop2k3Q54Fn0M/s1600-h/DSC00090.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00090-0f12397e4c7e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00090-0f12397e4c7e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhj41BIQTd-CgT4mPcTVQlR7aGSLSNoOm5LEouOh0xHYXyRJUaw_Va-3ySQnnAleLoglBqLsmG9MRIpfxUjinbso1HdruieGpfNbRi3TMB2eFUl02NwPWXTzMyy6uw5BX3bop2k3Q54Fn0M/s1600-h/DSC00090.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00188-5b793b758d3d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00188-5b793b758d3d-orig.jpg"
elif [ -f 'DSC00188-5b793b758d3d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00188-5b793b758d3d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00188-5b793b758d3d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9wVQgQlbtozauD8EkZO9Pw-MIsO15qV_U9GH2ZXqcFauabas99gsnSkyF9LsD1rSOxGEOFcPyIyJXChmv3KRunVo83un4OXiXRB_Ot2SZOCadvaryZrscURK7ZY32DEl5Pt7MiyrEQgII/s1600-h/DSC00188.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00188-5b793b758d3d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00188-5b793b758d3d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9wVQgQlbtozauD8EkZO9Pw-MIsO15qV_U9GH2ZXqcFauabas99gsnSkyF9LsD1rSOxGEOFcPyIyJXChmv3KRunVo83un4OXiXRB_Ot2SZOCadvaryZrscURK7ZY32DEl5Pt7MiyrEQgII/s1600-h/DSC00188.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00196-0ee73f1a94ca-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00196-0ee73f1a94ca-orig.jpg"
elif [ -f 'DSC00196-0ee73f1a94ca-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00196-0ee73f1a94ca-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00196-0ee73f1a94ca-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWIyYzS0vVG6JdzA4I87S_ghU3MCfiqMKHwC_C_TcRgul4hvx36jnfVivagIXFJuPgFHGoYD72kO6m1sIvnY2pYCwAXakoQPQvtryQGawd1d1ASSrPraP5Irbp78NbKtYosFnHyV9yHkJR/s1600-h/DSC00196.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00196-0ee73f1a94ca-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00196-0ee73f1a94ca-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWIyYzS0vVG6JdzA4I87S_ghU3MCfiqMKHwC_C_TcRgul4hvx36jnfVivagIXFJuPgFHGoYD72kO6m1sIvnY2pYCwAXakoQPQvtryQGawd1d1ASSrPraP5Irbp78NbKtYosFnHyV9yHkJR/s1600-h/DSC00196.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00197-134855484ef6-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00197-134855484ef6-orig.jpg"
elif [ -f 'DSC00197-134855484ef6-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00197-134855484ef6-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00197-134855484ef6-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdTcHCv72bXeMH-dCwdHakV7NJBWjeen6BqjexeoI1YD1VU6wx75p6pd2NZFG26NjXf7B93uzxemn3VRv9VoOzPKiO1F2oGyBzWU4awJrX23lwyeBWBP7efMPN5hhZAYNrNQFwl1OPPuUr/s1600-h/DSC00197.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00197-134855484ef6-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00197-134855484ef6-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdTcHCv72bXeMH-dCwdHakV7NJBWjeen6BqjexeoI1YD1VU6wx75p6pd2NZFG26NjXf7B93uzxemn3VRv9VoOzPKiO1F2oGyBzWU4awJrX23lwyeBWBP7efMPN5hhZAYNrNQFwl1OPPuUr/s1600-h/DSC00197.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00198-8c5c6cb80e90-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00198-8c5c6cb80e90-orig.jpg"
elif [ -f 'DSC00198-8c5c6cb80e90-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00198-8c5c6cb80e90-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00198-8c5c6cb80e90-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgENWg94J3pmvPbkrRX2BZUXguE_14Fy-cjimZmP3_NObdSLAesjlT6qDmjJ_Tl-W8k2PJGpWwqPNHef7MpiM_IZNWcyjOUGdzjV-sM3d_y0Jo70hfyhkRkPe1-b2U-53_vNX8vdbRMMJvS/s1600-h/DSC00198.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00198-8c5c6cb80e90-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00198-8c5c6cb80e90-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgENWg94J3pmvPbkrRX2BZUXguE_14Fy-cjimZmP3_NObdSLAesjlT6qDmjJ_Tl-W8k2PJGpWwqPNHef7MpiM_IZNWcyjOUGdzjV-sM3d_y0Jo70hfyhkRkPe1-b2U-53_vNX8vdbRMMJvS/s1600-h/DSC00198.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00171-c4a489b9de55-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00171-c4a489b9de55-orig.jpg"
elif [ -f 'DSC00171-c4a489b9de55-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00171-c4a489b9de55-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00171-c4a489b9de55-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzur7eojZa2IYdecBXNO-IOQlivY32KxV7z-4P84IcUaBw-5qGCwuZXca51OOuZ3jBCBjh0TsjdUkUbEnp9N7cysK8HycQAMlXZNtof0m34EkJfBs3Nurmt7nDTwxSG9o_ahd8hGQ3gIWy/s1600-h/DSC00171.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00171-c4a489b9de55-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00171-c4a489b9de55-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzur7eojZa2IYdecBXNO-IOQlivY32KxV7z-4P84IcUaBw-5qGCwuZXca51OOuZ3jBCBjh0TsjdUkUbEnp9N7cysK8HycQAMlXZNtof0m34EkJfBs3Nurmt7nDTwxSG9o_ahd8hGQ3gIWy/s1600-h/DSC00171.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00186-80dbcc98aae5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00186-80dbcc98aae5-orig.jpg"
elif [ -f 'DSC00186-80dbcc98aae5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00186-80dbcc98aae5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00186-80dbcc98aae5-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGhLfKHDZBaJzHh8aFZIu55qmVNxPMo-aTRce8FRwagn9I-iOhlUmOLwhEJqrNsiTfexWtFCJcgiDTs6dggCg4ti5pz9QUHoJk4O0e0UE5BrLT6RmNi2FIMHJJK8JBfQZdigzCXa3kx6wu/s1600-h/DSC00186.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00186-80dbcc98aae5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00186-80dbcc98aae5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGhLfKHDZBaJzHh8aFZIu55qmVNxPMo-aTRce8FRwagn9I-iOhlUmOLwhEJqrNsiTfexWtFCJcgiDTs6dggCg4ti5pz9QUHoJk4O0e0UE5BrLT6RmNi2FIMHJJK8JBfQZdigzCXa3kx6wu/s1600-h/DSC00186.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00177-7e4a857e8d47-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00177-7e4a857e8d47-orig.jpg"
elif [ -f 'DSC00177-7e4a857e8d47-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00177-7e4a857e8d47-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00177-7e4a857e8d47-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEim0Wf_YtrFvMdy7xdszB2wtq9GCpyrHDu0zThgBN5Gni9LSmgjVgSAQxumKVKsjkcJeBZk3hIcJliHdZKMaO73H0tnIMXp8fHhTjEx04-iK7N1KyDwEGvalIN2DXFmwZ-WGFwHhXglK0Y6/s1600-h/DSC00177.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00177-7e4a857e8d47-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00177-7e4a857e8d47-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEim0Wf_YtrFvMdy7xdszB2wtq9GCpyrHDu0zThgBN5Gni9LSmgjVgSAQxumKVKsjkcJeBZk3hIcJliHdZKMaO73H0tnIMXp8fHhTjEx04-iK7N1KyDwEGvalIN2DXFmwZ-WGFwHhXglK0Y6/s1600-h/DSC00177.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00179-19de7476c864-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00179-19de7476c864-orig.jpg"
elif [ -f 'DSC00179-19de7476c864-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00179-19de7476c864-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00179-19de7476c864-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd888qWyMOXvMlHMW7Nq1Joi6JktqA1tWByh9mGm84Cxqlaxi9h1pws_7XMGv-3iFtj9x06YEpezFW2JychnFzeb4BOMfsl3Z7ozyvjqqGYhBByU0FGPcLpN_LAtZX9e3Do_HGlZ_i-WMj/s1600-h/DSC00179.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00179-19de7476c864-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00179-19de7476c864-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd888qWyMOXvMlHMW7Nq1Joi6JktqA1tWByh9mGm84Cxqlaxi9h1pws_7XMGv-3iFtj9x06YEpezFW2JychnFzeb4BOMfsl3Z7ozyvjqqGYhBByU0FGPcLpN_LAtZX9e3Do_HGlZ_i-WMj/s1600-h/DSC00179.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00180-7f1427058162-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00180-7f1427058162-orig.jpg"
elif [ -f 'DSC00180-7f1427058162-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00180-7f1427058162-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00180-7f1427058162-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtD9IxRKrq7QbSUY1Qe2Nc0qyHbQWQ8385C1_aHXJDE7jprRKrrQPpdThs2pu4msvpMOtY5CBj4-zTRn_9UlKaiF7y6pencgqDpwZw0MVg9PbRP524mzAlz-cI7_dvcWN0dzvRuHe1aHRJ/s1600-h/DSC00180.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00180-7f1427058162-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00180-7f1427058162-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtD9IxRKrq7QbSUY1Qe2Nc0qyHbQWQ8385C1_aHXJDE7jprRKrrQPpdThs2pu4msvpMOtY5CBj4-zTRn_9UlKaiF7y6pencgqDpwZw0MVg9PbRP524mzAlz-cI7_dvcWN0dzvRuHe1aHRJ/s1600-h/DSC00180.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00181-47e57f22a6ca-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00181-47e57f22a6ca-orig.jpg"
elif [ -f 'DSC00181-47e57f22a6ca-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00181-47e57f22a6ca-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00181-47e57f22a6ca-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjoMY6ru42yd4-WBl3W59z12pOacb4ZW8nBHfbAujOnaznNjl3ZNNUek1BMUqSstKWdhDZwWphZ4qLdKZENKohVzlTc_lP-X0JoyuWDbazDhgCB9b1lbN_7ANne1FtgJean_KLW9qlzeb8F/s1600-h/DSC00181.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00181-47e57f22a6ca-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00181-47e57f22a6ca-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjoMY6ru42yd4-WBl3W59z12pOacb4ZW8nBHfbAujOnaznNjl3ZNNUek1BMUqSstKWdhDZwWphZ4qLdKZENKohVzlTc_lP-X0JoyuWDbazDhgCB9b1lbN_7ANne1FtgJean_KLW9qlzeb8F/s1600-h/DSC00181.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00182-0ed2d967ed6d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00182-0ed2d967ed6d-orig.jpg"
elif [ -f 'DSC00182-0ed2d967ed6d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00182-0ed2d967ed6d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00182-0ed2d967ed6d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgklSALOGqzHx9b-D7lF3tagtIHTRViREpgmTww4P5cooj2zl5-BEKYBdqNaBwp-RCN1YE2dlUapY8zFqARtZ-D3QRfDN9DOwc7HsC_R5os7sTWVf4U2bUmOo6w3s67GRjYtTqcjfYZxZfD/s1600-h/DSC00182.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00182-0ed2d967ed6d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00182-0ed2d967ed6d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgklSALOGqzHx9b-D7lF3tagtIHTRViREpgmTww4P5cooj2zl5-BEKYBdqNaBwp-RCN1YE2dlUapY8zFqARtZ-D3QRfDN9DOwc7HsC_R5os7sTWVf4U2bUmOo6w3s67GRjYtTqcjfYZxZfD/s1600-h/DSC00182.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00161-370736f2e4da-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00161-370736f2e4da-orig.jpg"
elif [ -f 'DSC00161-370736f2e4da-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00161-370736f2e4da-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00161-370736f2e4da-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIiL-DUq2ySrRtLTRXxzEaAxzq-eC19cisXVDn9LZvMSGeyLRXoIqUHXuAGG_TJ5M_gcYSGkdOc9R-NpzP4_h9p5xVGW6xqfuIHB2C4kytCZrCfNK5ri5xaTuFtQ-VVBsezvSIfILYNvKX/s1600-h/DSC00161.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00161-370736f2e4da-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00161-370736f2e4da-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIiL-DUq2ySrRtLTRXxzEaAxzq-eC19cisXVDn9LZvMSGeyLRXoIqUHXuAGG_TJ5M_gcYSGkdOc9R-NpzP4_h9p5xVGW6xqfuIHB2C4kytCZrCfNK5ri5xaTuFtQ-VVBsezvSIfILYNvKX/s1600-h/DSC00161.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00163-49ad15678c7d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00163-49ad15678c7d-orig.jpg"
elif [ -f 'DSC00163-49ad15678c7d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00163-49ad15678c7d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00163-49ad15678c7d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFS2EmfSL9FlNfVvQOHKRjfyBryCaPLAWZtqhuAyvMZgmRYzviY4mX9xsJxtnIjNI9YivYT7bM72RonhpO06x91q_-RNSOYF4Kt-TkP3Tj2xOZVqtfBuC8fm0KrR8YYJfw0JO5Hb4H-76y/s1600-h/DSC00163.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00163-49ad15678c7d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00163-49ad15678c7d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFS2EmfSL9FlNfVvQOHKRjfyBryCaPLAWZtqhuAyvMZgmRYzviY4mX9xsJxtnIjNI9YivYT7bM72RonhpO06x91q_-RNSOYF4Kt-TkP3Tj2xOZVqtfBuC8fm0KrR8YYJfw0JO5Hb4H-76y/s1600-h/DSC00163.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00152-14caa625f4d6-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00152-14caa625f4d6-orig.jpg"
elif [ -f 'DSC00152-14caa625f4d6-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00152-14caa625f4d6-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00152-14caa625f4d6-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiinH4EeI-cBLWrD06duGz6hf2RIrn6zFsO8S7Y_5S6P6p6q0gSKmrz_uffwoRz1uCcTVJ3ddIVX9MtTAeON48ywk8n8yOFFtMobZLJnBJmrdaUT9EaCrTYHRnWOa6vGngfE8Sln5kvH5Ty/s1600-h/DSC00152.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00152-14caa625f4d6-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00152-14caa625f4d6-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiinH4EeI-cBLWrD06duGz6hf2RIrn6zFsO8S7Y_5S6P6p6q0gSKmrz_uffwoRz1uCcTVJ3ddIVX9MtTAeON48ywk8n8yOFFtMobZLJnBJmrdaUT9EaCrTYHRnWOa6vGngfE8Sln5kvH5Ty/s1600-h/DSC00152.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00154-d8340c5eefbb-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00154-d8340c5eefbb-orig.jpg"
elif [ -f 'DSC00154-d8340c5eefbb-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00154-d8340c5eefbb-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00154-d8340c5eefbb-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMDKJYGjDm31KIz3DgRVkT75LOkl3nB8dUw6DlolOYLYtsOBDgZCEbMik_NYLxXS6u6CERPBQW2Xsx4Fi7rwp59xb572C6YsrLkLuekrYhRns4-e2lBs64-oR_0cr4zN3qgktDUudmTOc1/s1600-h/DSC00154.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00154-d8340c5eefbb-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00154-d8340c5eefbb-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMDKJYGjDm31KIz3DgRVkT75LOkl3nB8dUw6DlolOYLYtsOBDgZCEbMik_NYLxXS6u6CERPBQW2Xsx4Fi7rwp59xb572C6YsrLkLuekrYhRns4-e2lBs64-oR_0cr4zN3qgktDUudmTOc1/s1600-h/DSC00154.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00131-ee8f7512f921-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00131-ee8f7512f921-orig.jpg"
elif [ -f 'DSC00131-ee8f7512f921-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00131-ee8f7512f921-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00131-ee8f7512f921-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhD3MWNNsEBK_DQgnbOyhLzr64Qh4vYIFiIA6ZFEvpKRUz9riXOS20TpVh-n9K6-dw0ZvsQ_hJKT5a2J2Y2IhyphenhyphenGiFjrbxjUj50kdJ_DESUD0JNTrC7nq1JR6yKQOq3ynkVzqGxXN1meIi7r/s1600-h/DSC00131.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00131-ee8f7512f921-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00131-ee8f7512f921-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhD3MWNNsEBK_DQgnbOyhLzr64Qh4vYIFiIA6ZFEvpKRUz9riXOS20TpVh-n9K6-dw0ZvsQ_hJKT5a2J2Y2IhyphenhyphenGiFjrbxjUj50kdJ_DESUD0JNTrC7nq1JR6yKQOq3ynkVzqGxXN1meIi7r/s1600-h/DSC00131.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00132-c02efb49d498-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00132-c02efb49d498-orig.jpg"
elif [ -f 'DSC00132-c02efb49d498-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00132-c02efb49d498-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00132-c02efb49d498-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi63SlHKTOUZ4mT8GqIfqCBAv7JECZWTJiEuH-GWE7xy0pv2Nff1RpDMuCQwPp9N7xAnVsl6NiQ9m5XvwWc-bTr-_bawU7S5f3YmUNd9Z2EZ5x-xpSurnJja3bRQeKyWzsvWTICeknhdWGf/s1600-h/DSC00132.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00132-c02efb49d498-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00132-c02efb49d498-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi63SlHKTOUZ4mT8GqIfqCBAv7JECZWTJiEuH-GWE7xy0pv2Nff1RpDMuCQwPp9N7xAnVsl6NiQ9m5XvwWc-bTr-_bawU7S5f3YmUNd9Z2EZ5x-xpSurnJja3bRQeKyWzsvWTICeknhdWGf/s1600-h/DSC00132.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00136-2c24ba6568b3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00136-2c24ba6568b3-orig.jpg"
elif [ -f 'DSC00136-2c24ba6568b3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00136-2c24ba6568b3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00136-2c24ba6568b3-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhlRizjoB_BzRFsvcQtYPNJ4q5Ld_-EFuw-n7ti_tVYKvE58-HPicaam3yjpQmTrnNufV5AuXU6kiJtSMyFMXV0MUln0i-FDIjDlFU2vKzEi5wWK8UP7zqeJjqfxqVnJrGiDha7vZ4MNBXQ/s1600-h/DSC00136.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00136-2c24ba6568b3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00136-2c24ba6568b3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhlRizjoB_BzRFsvcQtYPNJ4q5Ld_-EFuw-n7ti_tVYKvE58-HPicaam3yjpQmTrnNufV5AuXU6kiJtSMyFMXV0MUln0i-FDIjDlFU2vKzEi5wWK8UP7zqeJjqfxqVnJrGiDha7vZ4MNBXQ/s1600-h/DSC00136.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00144-52ef232815b8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00144-52ef232815b8-orig.jpg"
elif [ -f 'DSC00144-52ef232815b8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00144-52ef232815b8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00144-52ef232815b8-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAzNJvIBGAasyaHRslNwd8-sdYL1jF17-LUe9a-CBrAKuVGRngpLFkRNOKQ78IK8aPA1LSB1ejN_Nar_NVF-twcIGmWOZw-nWrjHN_1CEjmGwZsbcqJQVoR1doMrKvkATMDsalfsQIFYJ4/s1600-h/DSC00144.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00144-52ef232815b8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00144-52ef232815b8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAzNJvIBGAasyaHRslNwd8-sdYL1jF17-LUe9a-CBrAKuVGRngpLFkRNOKQ78IK8aPA1LSB1ejN_Nar_NVF-twcIGmWOZw-nWrjHN_1CEjmGwZsbcqJQVoR1doMrKvkATMDsalfsQIFYJ4/s1600-h/DSC00144.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00127-61d9c3cdeea4-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00127-61d9c3cdeea4-orig.jpg"
elif [ -f 'DSC00127-61d9c3cdeea4-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00127-61d9c3cdeea4-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00127-61d9c3cdeea4-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnT5bmzYVfvQEzyeRSMXHq1O93ouOvQYq1D-3JUprXYEBjkKmjdY2UqBMxb7gXuYsz-vtvND2M8bLEaUAbi02qFjwFfaiXzn-uX_JPxqiIXZezf3o-o9_GN3z4wHFQH8993gGViO8uQWJi/s1600-h/DSC00127.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00127-61d9c3cdeea4-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00127-61d9c3cdeea4-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnT5bmzYVfvQEzyeRSMXHq1O93ouOvQYq1D-3JUprXYEBjkKmjdY2UqBMxb7gXuYsz-vtvND2M8bLEaUAbi02qFjwFfaiXzn-uX_JPxqiIXZezf3o-o9_GN3z4wHFQH8993gGViO8uQWJi/s1600-h/DSC00127.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00126-3a483569dcf0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00126-3a483569dcf0-orig.jpg"
elif [ -f 'DSC00126-3a483569dcf0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00126-3a483569dcf0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00126-3a483569dcf0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjobZpKtW8zRc-Ug3RoNEM0QSK_SW7MzRWSZQv8yR9Vz7p2kCArzGqc0l2YQwMIi1hirp6m5r-TmTHPPbbVfmlbnvDzItG9Dt0mRf0OM6U-rL3gK53ueIo8Oeto4zlmDLiNXhRESlO0Qp8a/s1600-h/DSC00126.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00126-3a483569dcf0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00126-3a483569dcf0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjobZpKtW8zRc-Ug3RoNEM0QSK_SW7MzRWSZQv8yR9Vz7p2kCArzGqc0l2YQwMIi1hirp6m5r-TmTHPPbbVfmlbnvDzItG9Dt0mRf0OM6U-rL3gK53ueIo8Oeto4zlmDLiNXhRESlO0Qp8a/s1600-h/DSC00126.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00107-cee2ea10b682-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00107-cee2ea10b682-orig.jpg"
elif [ -f 'DSC00107-cee2ea10b682-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00107-cee2ea10b682-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00107-cee2ea10b682-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhRcC_K1RlkBQPMVF3JdQB3CKCZyXh0lsSZYLXa0F9zjWt1SpxxOKLDXYiHCymsuB3Nk-BB-0jkMzO0VuBL2eHvs-1QAtfXg0OySovTzD7EzknasipH6a9j6_1lTQyOHcr6gB2Bs971MZ-0/s1600-h/DSC00107.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00107-cee2ea10b682-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00107-cee2ea10b682-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhRcC_K1RlkBQPMVF3JdQB3CKCZyXh0lsSZYLXa0F9zjWt1SpxxOKLDXYiHCymsuB3Nk-BB-0jkMzO0VuBL2eHvs-1QAtfXg0OySovTzD7EzknasipH6a9j6_1lTQyOHcr6gB2Bs971MZ-0/s1600-h/DSC00107.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00046-0d8cc48a9035-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00046-0d8cc48a9035-orig.jpg"
elif [ -f 'DSC00046-0d8cc48a9035-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00046-0d8cc48a9035-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00046-0d8cc48a9035-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzpZ16FExcKh7KJiMxaY1mQIai5UqDgASBl2DJo2cIeg7vYPWUr5cf1YBK6IdVXrjS9hkWNYZKDvypQaWw1SWdbCShdMgy9rOOkfQQFAY69giOcbvsDFZnewpUt3fjhZIITlnTkkSG2T8d/s1600-h/DSC00046.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00046-0d8cc48a9035-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00046-0d8cc48a9035-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzpZ16FExcKh7KJiMxaY1mQIai5UqDgASBl2DJo2cIeg7vYPWUr5cf1YBK6IdVXrjS9hkWNYZKDvypQaWw1SWdbCShdMgy9rOOkfQQFAY69giOcbvsDFZnewpUt3fjhZIITlnTkkSG2T8d/s1600-h/DSC00046.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00075-01aa6fb4f0a0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00075-01aa6fb4f0a0-orig.jpg"
elif [ -f 'DSC00075-01aa6fb4f0a0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00075-01aa6fb4f0a0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00075-01aa6fb4f0a0-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-facyQr57K96qAZY0sBJiMAnCAVM-ZNKBR_7pC11b9CRXW1S1cLnuw35Klnfh7VhYOjzQ4cx9U0zhsJKOGOE_NUQCqszs3_9lB-oDsbLOrR7HAC2lx_Dby8Cm77mCgRkchcZ2oQvwMfFu/s1600-h/DSC00075.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00075-01aa6fb4f0a0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00075-01aa6fb4f0a0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-facyQr57K96qAZY0sBJiMAnCAVM-ZNKBR_7pC11b9CRXW1S1cLnuw35Klnfh7VhYOjzQ4cx9U0zhsJKOGOE_NUQCqszs3_9lB-oDsbLOrR7HAC2lx_Dby8Cm77mCgRkchcZ2oQvwMfFu/s1600-h/DSC00075.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00081-5d8480255604-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00081-5d8480255604-orig.jpg"
elif [ -f 'DSC00081-5d8480255604-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00081-5d8480255604-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00081-5d8480255604-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiF8Q4c8xwlNsFk9OqZkqxFcqQLz12m5BCauCHeGVgdaSVry_-sWi-2u4-WusQYdXtIZ-y9KrTmqc1xa3b-ogkn1iyGMgb5H7NM9esCB36BCNFe8-pSl0F5waQUigpIgl_ip2gwdjLtdtWO/s1600-h/DSC00081.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00081-5d8480255604-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00081-5d8480255604-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiF8Q4c8xwlNsFk9OqZkqxFcqQLz12m5BCauCHeGVgdaSVry_-sWi-2u4-WusQYdXtIZ-y9KrTmqc1xa3b-ogkn1iyGMgb5H7NM9esCB36BCNFe8-pSl0F5waQUigpIgl_ip2gwdjLtdtWO/s1600-h/DSC00081.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00065-0c0c3e190e06-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00065-0c0c3e190e06-orig.jpg"
elif [ -f 'DSC00065-0c0c3e190e06-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00065-0c0c3e190e06-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00065-0c0c3e190e06-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhZN2-HhUApV6uMYO5a4sFfdnEZufUKfLgNFKnhKFEO5LZOdFxh_t2bY5e-E3UfU2X79_r3clgT4e2LMnZNhEmvev9dzhDszg1vJHGGUaYOFFmAeGpgskRxJkX2BA1qb1kzlzbfSw5EilCq/s1600-h/DSC00065.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00065-0c0c3e190e06-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00065-0c0c3e190e06-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhZN2-HhUApV6uMYO5a4sFfdnEZufUKfLgNFKnhKFEO5LZOdFxh_t2bY5e-E3UfU2X79_r3clgT4e2LMnZNhEmvev9dzhDszg1vJHGGUaYOFFmAeGpgskRxJkX2BA1qb1kzlzbfSw5EilCq/s1600-h/DSC00065.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00053-bb0b1f9a5492-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00053-bb0b1f9a5492-orig.jpg"
elif [ -f 'DSC00053-bb0b1f9a5492-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00053-bb0b1f9a5492-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00053-bb0b1f9a5492-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgS5RKrLM2_ZgPiVyUObUOJdureRl7CxUCvt_T47IfWm9xoAVAYUQqQfAKHNwMV0U1WVyBEQj6h-2FqTZYEUP9N8iF1WqfLvd8MAuPQnBk4RQ3rRrNVeo59r-Szh_RIHNCxa4azvbBi0IhD/s1600-h/DSC00053.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00053-bb0b1f9a5492-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00053-bb0b1f9a5492-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgS5RKrLM2_ZgPiVyUObUOJdureRl7CxUCvt_T47IfWm9xoAVAYUQqQfAKHNwMV0U1WVyBEQj6h-2FqTZYEUP9N8iF1WqfLvd8MAuPQnBk4RQ3rRrNVeo59r-Szh_RIHNCxa4azvbBi0IhD/s1600-h/DSC00053.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00056-27a83dfdba09-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00056-27a83dfdba09-orig.jpg"
elif [ -f 'DSC00056-27a83dfdba09-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00056-27a83dfdba09-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00056-27a83dfdba09-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjfhZkyX4jftOzURRXHOYFOUSUtxOd5Xrqck6GQhFaYzWhBbDDYP2QlHwAGqChMQvRVSFSrd_0CxGJdRod6xMAmV679T3YrBcjpRdsOCADLRzG5cHUno4l4x9Q7qL6QxavB6AebyRkve2N/s1600-h/DSC00056.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00056-27a83dfdba09-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00056-27a83dfdba09-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjfhZkyX4jftOzURRXHOYFOUSUtxOd5Xrqck6GQhFaYzWhBbDDYP2QlHwAGqChMQvRVSFSrd_0CxGJdRod6xMAmV679T3YrBcjpRdsOCADLRzG5cHUno4l4x9Q7qL6QxavB6AebyRkve2N/s1600-h/DSC00056.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00060-4b5c41055e11-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00060-4b5c41055e11-orig.jpg"
elif [ -f 'DSC00060-4b5c41055e11-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00060-4b5c41055e11-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00060-4b5c41055e11-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhf93jf4FVoxCu4oZzL9-T6GnAyAc9-IZuCd9EfAkdYc4zNh8a7fK7qZW0QCY6-y-aVqQNhZuXj_A5TjtFLhZd02yh6qh0d_wYixLiVF1YkGJkv7vYYg_SMmH-DE1hd8u3zSCJuLzhu3vLJ/s1600-h/DSC00060.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00060-4b5c41055e11-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00060-4b5c41055e11-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhf93jf4FVoxCu4oZzL9-T6GnAyAc9-IZuCd9EfAkdYc4zNh8a7fK7qZW0QCY6-y-aVqQNhZuXj_A5TjtFLhZd02yh6qh0d_wYixLiVF1YkGJkv7vYYg_SMmH-DE1hd8u3zSCJuLzhu3vLJ/s1600-h/DSC00060.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00067-4363491f1b69-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00067-4363491f1b69-orig.jpg"
elif [ -f 'DSC00067-4363491f1b69-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00067-4363491f1b69-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00067-4363491f1b69-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi20wQD7V9tDBWbJ-SWbfHN6b960GmeoLcHTODkVj1vxgBzX_UarP3cu1CrETkpxP7_rOzxoCP9uaz062FaSTQTiDeEDegTA_9HacxdjaafGScT306O_VwUn90JpnhwdgIV49Y3G6CmfSZM/s1600-h/DSC00067.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00067-4363491f1b69-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00067-4363491f1b69-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi20wQD7V9tDBWbJ-SWbfHN6b960GmeoLcHTODkVj1vxgBzX_UarP3cu1CrETkpxP7_rOzxoCP9uaz062FaSTQTiDeEDegTA_9HacxdjaafGScT306O_VwUn90JpnhwdgIV49Y3G6CmfSZM/s1600-h/DSC00067.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'couch-999cad-ikea-5285a6f4bd6f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): couch-999cad-ikea-5285a6f4bd6f-orig.jpg"
elif [ -f 'couch-999cad-ikea-5285a6f4bd6f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): couch-999cad-ikea-5285a6f4bd6f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'couch-999cad-ikea-5285a6f4bd6f-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQTxtjk35IzR0s3_nZLKn3NLM3fF_HcdZflXsRP_KYSX0Q8U7KM5Njp-uEGsHMBe4ZeVemKnhBGFJsxdyU4kvrAsTCanoI8kZ2VgcDs5UfrRkhDlsAvrxij6T0_1hAYB8ylOVUy9VCzdGu/s1600-h/couch-999cad-ikea.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: couch-999cad-ikea-5285a6f4bd6f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'couch-999cad-ikea-5285a6f4bd6f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQTxtjk35IzR0s3_nZLKn3NLM3fF_HcdZflXsRP_KYSX0Q8U7KM5Njp-uEGsHMBe4ZeVemKnhBGFJsxdyU4kvrAsTCanoI8kZ2VgcDs5UfrRkhDlsAvrxij6T0_1hAYB8ylOVUy9VCzdGu/s1600-h/couch-999cad-ikea.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00018-4abfd9db34c3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00018-4abfd9db34c3-orig.jpg"
elif [ -f 'DSC00018-4abfd9db34c3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00018-4abfd9db34c3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00018-4abfd9db34c3-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfUYe6hacEi-_-4nRreiVIgBIwjP7mWUbEMkAk3Q8ud2doI_DudHDgCFoWJCBqiYEJQPPzECwqIdbmExAYS4q7KgNdG-9zi0_1P2wz91HzcwLhKn46hqMV8-pQ2cKdscYheSTNY7FH0jmg/s1600-h/DSC00018.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00018-4abfd9db34c3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00018-4abfd9db34c3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfUYe6hacEi-_-4nRreiVIgBIwjP7mWUbEMkAk3Q8ud2doI_DudHDgCFoWJCBqiYEJQPPzECwqIdbmExAYS4q7KgNdG-9zi0_1P2wz91HzcwLhKn46hqMV8-pQ2cKdscYheSTNY7FH0jmg/s1600-h/DSC00018.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'w810i-5f76d4f9566e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): w810i-5f76d4f9566e-orig.jpg"
elif [ -f 'w810i-5f76d4f9566e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): w810i-5f76d4f9566e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'w810i-5f76d4f9566e-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfcml5de3FCHay8R2IMhwOHw1gMkFia-_5WDpFRYQq62vBc3zX6K9WZoBw_W0ThVTYb_XjWVUuCcYkYaap_32Jf598KBF15mbzM0tU2eL9ICMCuy_ZUK7aMPsPoOe04iOvTfB7_15Qhpco/s0/w810i.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: w810i-5f76d4f9566e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'w810i-5f76d4f9566e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfcml5de3FCHay8R2IMhwOHw1gMkFia-_5WDpFRYQq62vBc3zX6K9WZoBw_W0ThVTYb_XjWVUuCcYkYaap_32Jf598KBF15mbzM0tU2eL9ICMCuy_ZUK7aMPsPoOe04iOvTfB7_15Qhpco/s0/w810i.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00012-4f3bb9e7509f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00012-4f3bb9e7509f-orig.jpg"
elif [ -f 'DSC00012-4f3bb9e7509f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00012-4f3bb9e7509f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00012-4f3bb9e7509f-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicw-LpWoqLfPR5q820P1xug4el9g78saG2X2YlERYhp74AYnc5JE68zYeY-yHowd7h1ikUSggRvOFbz4sAADZGZlFy5Usdblt-C1TA_R6MOqGZBGwe9vEcBu9wRW5t_AJghLiGbyUG6C6Z/s1600-h/DSC00012.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00012-4f3bb9e7509f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00012-4f3bb9e7509f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicw-LpWoqLfPR5q820P1xug4el9g78saG2X2YlERYhp74AYnc5JE68zYeY-yHowd7h1ikUSggRvOFbz4sAADZGZlFy5Usdblt-C1TA_R6MOqGZBGwe9vEcBu9wRW5t_AJghLiGbyUG6C6Z/s1600-h/DSC00012.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00017-231205ddf6be-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00017-231205ddf6be-orig.jpg"
elif [ -f 'DSC00017-231205ddf6be-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00017-231205ddf6be-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00017-231205ddf6be-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgM-HCtrGrU0m00cNgG7QTPq8DUc8FmqbID3lFap06s1ZdKoEDZ0aJiAKtQekpDVU-4E_UL8iT5KTWqG-KD3Tqh2-RAmgO1Lrhd7sszDu88_LyJp2M1bL-8-weLLDWJ_x1Gy7QmEdeqomr9/s1600-h/DSC00017.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00017-231205ddf6be-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00017-231205ddf6be-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgM-HCtrGrU0m00cNgG7QTPq8DUc8FmqbID3lFap06s1ZdKoEDZ0aJiAKtQekpDVU-4E_UL8iT5KTWqG-KD3Tqh2-RAmgO1Lrhd7sszDu88_LyJp2M1bL-8-weLLDWJ_x1Gy7QmEdeqomr9/s1600-h/DSC00017.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00015-45c868214fbd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00015-45c868214fbd-orig.jpg"
elif [ -f 'DSC00015-45c868214fbd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00015-45c868214fbd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00015-45c868214fbd-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhsTvchFj8LQHbDXf6_uNCwQKlT6nFg5QeiRymmI8eiLXBm0OxjItIWH-K1sVdmk9_n7OywGpYfP3b03VRpk9kjd_Z8rReOxOWjj7dRw7CLWCLIRJV2pNPl5nv7DHmfrF02Ef-NcWfem6x/s1600-h/DSC00015.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00015-45c868214fbd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00015-45c868214fbd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhsTvchFj8LQHbDXf6_uNCwQKlT6nFg5QeiRymmI8eiLXBm0OxjItIWH-K1sVdmk9_n7OywGpYfP3b03VRpk9kjd_Z8rReOxOWjj7dRw7CLWCLIRJV2pNPl5nv7DHmfrF02Ef-NcWfem6x/s1600-h/DSC00015.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'Picture-20-da7e5b00cec5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Picture-20-da7e5b00cec5-orig.jpg"
elif [ -f 'Picture-20-da7e5b00cec5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Picture-20-da7e5b00cec5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Picture-20-da7e5b00cec5-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGDdXxXYbSefHG-MWUf9s_gSN32PiYs5Zr0BbWiZc9UcQVpR_PEh9zAveHgc0A0lSlY1OvB2__iGK03soIITfutRlPjztX3HC5X6HSpxlw5AY-LhRdFRqXNJmaDQQy3HNig642m-5Q6CxG/s1600-h/Picture+20.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Picture-20-da7e5b00cec5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Picture-20-da7e5b00cec5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGDdXxXYbSefHG-MWUf9s_gSN32PiYs5Zr0BbWiZc9UcQVpR_PEh9zAveHgc0A0lSlY1OvB2__iGK03soIITfutRlPjztX3HC5X6HSpxlw5AY-LhRdFRqXNJmaDQQy3HNig642m-5Q6CxG/s1600-h/Picture+20.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'Picture-21-08b9bc22144e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): Picture-21-08b9bc22144e-orig.jpg"
elif [ -f 'Picture-21-08b9bc22144e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): Picture-21-08b9bc22144e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'Picture-21-08b9bc22144e-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8ZcTlcZvVg5_6dkexK8Ht1WYw7sj2COjydBioX_IPIwQcL1uoUd6_DJth-LgolkO7lhWU9j5JCA3en-U7iEam7VQRDFV6Ahi0fsZ2SNCC8ubiEPW70o-_0XnWqJyOeHpJ2yS2ou9gRIMU/s1600-h/Picture+21.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: Picture-21-08b9bc22144e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'Picture-21-08b9bc22144e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8ZcTlcZvVg5_6dkexK8Ht1WYw7sj2COjydBioX_IPIwQcL1uoUd6_DJth-LgolkO7lhWU9j5JCA3en-U7iEam7VQRDFV6Ahi0fsZ2SNCC8ubiEPW70o-_0XnWqJyOeHpJ2yS2ou9gRIMU/s1600-h/Picture+21.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00085-f8c6f4534d72-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00085-f8c6f4534d72-orig.jpg"
elif [ -f 'DSC00085-f8c6f4534d72-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00085-f8c6f4534d72-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00085-f8c6f4534d72-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7JWDPVKKkxPHi9JmLmCmQAQ728L4FdfdlMW6bJl6Ne-kUrPB3XN2OAs28LCZxnmHY9-bVz-ELam-YDFgLYABmPqUX6S36efJN1WdxT4BzxzdmMzshk1aE7Oz6cHDnr27blv2f9GPshaWw/s1600-h/DSC00085.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00085-f8c6f4534d72-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00085-f8c6f4534d72-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7JWDPVKKkxPHi9JmLmCmQAQ728L4FdfdlMW6bJl6Ne-kUrPB3XN2OAs28LCZxnmHY9-bVz-ELam-YDFgLYABmPqUX6S36efJN1WdxT4BzxzdmMzshk1aE7Oz6cHDnr27blv2f9GPshaWw/s1600-h/DSC00085.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'birkman-45bdf530d605-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): birkman-45bdf530d605-orig.jpg"
elif [ -f 'birkman-45bdf530d605-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): birkman-45bdf530d605-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'birkman-45bdf530d605-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEis5vg418pZ4jThHUIbkT-rgwfPmNiCdpWEGpjJDnxMxRbV2w-7jVTNtFJlCN-HFwljvy0oRY2rcFy0UhyphenhyphenCoZpGKMKAVBNCgk6gqq2WEw7pXTx7UueN6kyd7WZ-V8gO-e_vxTLBvSNcLbqM/s1600-h/birkman.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: birkman-45bdf530d605-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'birkman-45bdf530d605-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEis5vg418pZ4jThHUIbkT-rgwfPmNiCdpWEGpjJDnxMxRbV2w-7jVTNtFJlCN-HFwljvy0oRY2rcFy0UhyphenhyphenCoZpGKMKAVBNCgk6gqq2WEw7pXTx7UueN6kyd7WZ-V8gO-e_vxTLBvSNcLbqM/s1600-h/birkman.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00083-2d6fc986d03d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00083-2d6fc986d03d-orig.jpg"
elif [ -f 'DSC00083-2d6fc986d03d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00083-2d6fc986d03d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00083-2d6fc986d03d-orig.jpg' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjr7PFi6tb4ZIL7cLi09XEZznykAXvwYSy7-SW2_-2UfD3lZqdrmIJlIQWUr4toCSDXTjA3bpR7Cjh0PEBmxI3vmXOMQO3nspBsISJlGRvsXZEgaqCCtVGhZWEV93SGgDWOAkCcamGUKjpi/s1600-h/DSC00083.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00083-2d6fc986d03d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00083-2d6fc986d03d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjr7PFi6tb4ZIL7cLi09XEZznykAXvwYSy7-SW2_-2UfD3lZqdrmIJlIQWUr4toCSDXTjA3bpR7Cjh0PEBmxI3vmXOMQO3nspBsISJlGRvsXZEgaqCCtVGhZWEV93SGgDWOAkCcamGUKjpi/s1600-h/DSC00083.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'tabella-a9cafd438e8d-orig.gif' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): tabella-a9cafd438e8d-orig.gif"
elif [ -f 'tabella-a9cafd438e8d-orig.gif.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): tabella-a9cafd438e8d-orig.gif"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'tabella-a9cafd438e8d-orig.gif' 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEivx0qThbDfFQkFIidgi5cpKK83G0x0W-WxJKQkwgs1Jjm6LPHKye3x04Y5x8MpNXkoHawm76by3dIjRqSl_uysS5MYQr13GfD5CkK72Wa82d-gEokJyJWjUPxMdtN6ELQhhduPMHafeVY/s1600-h/tabella.gif' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: tabella-a9cafd438e8d-orig.gif"
else
  FAILED=$((FAILED + 1))
  touch 'tabella-a9cafd438e8d-orig.gif.failed'
  echo "[$COUNT/$TOTAL] FAILED: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEivx0qThbDfFQkFIidgi5cpKK83G0x0W-WxJKQkwgs1Jjm6LPHKye3x04Y5x8MpNXkoHawm76by3dIjRqSl_uysS5MYQr13GfD5CkK72Wa82d-gEokJyJWjUPxMdtN6ELQhhduPMHafeVY/s1600-h/tabella.gif"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00044-da32e77af99e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00044-da32e77af99e-orig.jpg"
elif [ -f 'DSC00044-da32e77af99e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00044-da32e77af99e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00044-da32e77af99e-orig.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/1600/755675/DSC00044.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00044-da32e77af99e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00044-da32e77af99e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/1600/755675/DSC00044.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00043-fbf86c58ac42-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00043-fbf86c58ac42-orig.jpg"
elif [ -f 'DSC00043-fbf86c58ac42-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00043-fbf86c58ac42-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00043-fbf86c58ac42-orig.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/1600/783954/DSC00043.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00043-fbf86c58ac42-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00043-fbf86c58ac42-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/1600/783954/DSC00043.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00045-4c0675bc933a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00045-4c0675bc933a-orig.jpg"
elif [ -f 'DSC00045-4c0675bc933a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00045-4c0675bc933a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00045-4c0675bc933a-orig.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/1600/862396/DSC00045.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00045-4c0675bc933a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00045-4c0675bc933a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/1600/862396/DSC00045.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00046-9c40bd376f1d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00046-9c40bd376f1d-orig.jpg"
elif [ -f 'DSC00046-9c40bd376f1d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00046-9c40bd376f1d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00046-9c40bd376f1d-orig.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/1600/767649/DSC00046.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00046-9c40bd376f1d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00046-9c40bd376f1d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/1600/767649/DSC00046.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00048-6baae7fc1df1-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00048-6baae7fc1df1-orig.jpg"
elif [ -f 'DSC00048-6baae7fc1df1-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00048-6baae7fc1df1-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00048-6baae7fc1df1-orig.jpg' 'http://photos1.blogger.com/x/blogger2/812/4517/1600/897969/DSC00048.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00048-6baae7fc1df1-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00048-6baae7fc1df1-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/x/blogger2/812/4517/1600/897969/DSC00048.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00020-b5ebd6e5ffc0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00020-b5ebd6e5ffc0-orig.jpg"
elif [ -f 'DSC00020-b5ebd6e5ffc0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00020-b5ebd6e5ffc0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00020-b5ebd6e5ffc0-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/DSC00020.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00020-b5ebd6e5ffc0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00020-b5ebd6e5ffc0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/DSC00020.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00006-1fd481243942-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00006-1fd481243942-orig.jpg"
elif [ -f 'DSC00006-1fd481243942-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00006-1fd481243942-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00006-1fd481243942-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/DSC00006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00006-1fd481243942-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00006-1fd481243942-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/DSC00006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'DSC00007-32397c5e18c4-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): DSC00007-32397c5e18c4-orig.jpg"
elif [ -f 'DSC00007-32397c5e18c4-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): DSC00007-32397c5e18c4-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'DSC00007-32397c5e18c4-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/DSC00007.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: DSC00007-32397c5e18c4-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'DSC00007-32397c5e18c4-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/DSC00007.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0082-3c44f4996f6d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0082-3c44f4996f6d-orig.jpg"
elif [ -f 'IMG-0082-3c44f4996f6d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0082-3c44f4996f6d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0082-3c44f4996f6d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0082.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0082-3c44f4996f6d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0082-3c44f4996f6d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0082.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0093-41a088f4f2f7-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0093-41a088f4f2f7-orig.jpg"
elif [ -f 'IMG-0093-41a088f4f2f7-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0093-41a088f4f2f7-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0093-41a088f4f2f7-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0093.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0093-41a088f4f2f7-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0093-41a088f4f2f7-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0093.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0079-2cacdbeecda0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0079-2cacdbeecda0-orig.jpg"
elif [ -f 'IMG-0079-2cacdbeecda0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0079-2cacdbeecda0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0079-2cacdbeecda0-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0079.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0079-2cacdbeecda0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0079-2cacdbeecda0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0079.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0098-b065b1f92e16-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0098-b065b1f92e16-orig.jpg"
elif [ -f 'IMG-0098-b065b1f92e16-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0098-b065b1f92e16-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0098-b065b1f92e16-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0098.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0098-b065b1f92e16-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0098-b065b1f92e16-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0098.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0105-2b95c5c358f6-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0105-2b95c5c358f6-orig.jpg"
elif [ -f 'IMG-0105-2b95c5c358f6-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0105-2b95c5c358f6-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0105-2b95c5c358f6-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0105.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0105-2b95c5c358f6-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0105-2b95c5c358f6-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0105.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0044-1af2d037f817-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0044-1af2d037f817-orig.jpg"
elif [ -f 'IMG-0044-1af2d037f817-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0044-1af2d037f817-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0044-1af2d037f817-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0044.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0044-1af2d037f817-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0044-1af2d037f817-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0044.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0057-0-2fcea3f65b1b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0057-0-2fcea3f65b1b-orig.jpg"
elif [ -f 'IMG-0057-0-2fcea3f65b1b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0057-0-2fcea3f65b1b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0057-0-2fcea3f65b1b-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0057.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0057-0-2fcea3f65b1b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0057-0-2fcea3f65b1b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0057.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0056-0-2a09cb6e86ee-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0056-0-2a09cb6e86ee-orig.jpg"
elif [ -f 'IMG-0056-0-2a09cb6e86ee-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0056-0-2a09cb6e86ee-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0056-0-2a09cb6e86ee-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0056.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0056-0-2a09cb6e86ee-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0056-0-2a09cb6e86ee-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0056.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0095-0-9033003ef975-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0095-0-9033003ef975-orig.jpg"
elif [ -f 'IMG-0095-0-9033003ef975-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0095-0-9033003ef975-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0095-0-9033003ef975-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0095.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0095-0-9033003ef975-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0095-0-9033003ef975-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0095.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0065-0-5eb493b87667-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0065-0-5eb493b87667-orig.jpg"
elif [ -f 'IMG-0065-0-5eb493b87667-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0065-0-5eb493b87667-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0065-0-5eb493b87667-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0065.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0065-0-5eb493b87667-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0065-0-5eb493b87667-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0065.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0051-0-a051d6b188f3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0051-0-a051d6b188f3-orig.jpg"
elif [ -f 'IMG-0051-0-a051d6b188f3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0051-0-a051d6b188f3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0051-0-a051d6b188f3-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0051.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0051-0-a051d6b188f3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0051-0-a051d6b188f3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0051.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0053-ffed177a2642-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0053-ffed177a2642-orig.jpg"
elif [ -f 'IMG-0053-ffed177a2642-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0053-ffed177a2642-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0053-ffed177a2642-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0053.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0053-ffed177a2642-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0053-ffed177a2642-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0053.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-1-83554d09fe5b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-1-83554d09fe5b-orig.jpg"
elif [ -f 'IMG-0063-1-83554d09fe5b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-1-83554d09fe5b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0063-1-83554d09fe5b-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-1-83554d09fe5b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-1-83554d09fe5b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-2-cd543dd61c0d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-2-cd543dd61c0d-orig.jpg"
elif [ -f 'IMG-0071-2-cd543dd61c0d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-2-cd543dd61c0d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0071-2-cd543dd61c0d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-2-cd543dd61c0d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-2-cd543dd61c0d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0062-0-22f5219dd8e8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0062-0-22f5219dd8e8-orig.jpg"
elif [ -f 'IMG-0062-0-22f5219dd8e8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0062-0-22f5219dd8e8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0062-0-22f5219dd8e8-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0062.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0062-0-22f5219dd8e8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0062-0-22f5219dd8e8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0062.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0072-0-f566141f8a54-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0072-0-f566141f8a54-orig.jpg"
elif [ -f 'IMG-0072-0-f566141f8a54-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0072-0-f566141f8a54-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0072-0-f566141f8a54-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0072.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0072-0-f566141f8a54-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0072-0-f566141f8a54-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0072.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0091-353d02d1bec3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0091-353d02d1bec3-orig.jpg"
elif [ -f 'IMG-0091-353d02d1bec3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0091-353d02d1bec3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0091-353d02d1bec3-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0091.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0091-353d02d1bec3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0091-353d02d1bec3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0091.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-1-f7b2503e808f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-1-f7b2503e808f-orig.jpg"
elif [ -f 'IMG-0006-1-f7b2503e808f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-1-f7b2503e808f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0006-1-f7b2503e808f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-1-f7b2503e808f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-1-f7b2503e808f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0014-0-47adb123a29a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0014-0-47adb123a29a-orig.jpg"
elif [ -f 'IMG-0014-0-47adb123a29a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0014-0-47adb123a29a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0014-0-47adb123a29a-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0014.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0014-0-47adb123a29a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0014-0-47adb123a29a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0014.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-1-d9d3ce8f40bf-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-1-d9d3ce8f40bf-orig.jpg"
elif [ -f 'IMG-0007-1-d9d3ce8f40bf-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-1-d9d3ce8f40bf-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0007-1-d9d3ce8f40bf-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-1-d9d3ce8f40bf-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-1-d9d3ce8f40bf-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0024-2-5f008f92222d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0024-2-5f008f92222d-orig.jpg"
elif [ -f 'IMG-0024-2-5f008f92222d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0024-2-5f008f92222d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0024-2-5f008f92222d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0024.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0024-2-5f008f92222d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0024-2-5f008f92222d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0024.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-1-96bc65484f21-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-1-96bc65484f21-orig.jpg"
elif [ -f 'IMG-0027-1-96bc65484f21-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-1-96bc65484f21-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0027-1-96bc65484f21-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-1-96bc65484f21-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-1-96bc65484f21-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0033-b1a91d899702-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0033-b1a91d899702-orig.jpg"
elif [ -f 'IMG-0033-b1a91d899702-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0033-b1a91d899702-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0033-b1a91d899702-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0033.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0033-b1a91d899702-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0033-b1a91d899702-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0033.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0055-1-efb6894ab2d0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0055-1-efb6894ab2d0-orig.jpg"
elif [ -f 'IMG-0055-1-efb6894ab2d0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0055-1-efb6894ab2d0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0055-1-efb6894ab2d0-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0055.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0055-1-efb6894ab2d0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0055-1-efb6894ab2d0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0055.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0056-3953271402a7-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0056-3953271402a7-orig.jpg"
elif [ -f 'IMG-0056-3953271402a7-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0056-3953271402a7-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0056-3953271402a7-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0056.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0056-3953271402a7-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0056-3953271402a7-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0056.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0095-7ae49012566f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0095-7ae49012566f-orig.jpg"
elif [ -f 'IMG-0095-7ae49012566f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0095-7ae49012566f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0095-7ae49012566f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0095.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0095-7ae49012566f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0095-7ae49012566f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0095.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0072-846a9cbffc66-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0072-846a9cbffc66-orig.jpg"
elif [ -f 'IMG-0072-846a9cbffc66-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0072-846a9cbffc66-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0072-846a9cbffc66-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0072.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0072-846a9cbffc66-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0072-846a9cbffc66-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0072.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0077-79a3bfc1f623-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0077-79a3bfc1f623-orig.jpg"
elif [ -f 'IMG-0077-79a3bfc1f623-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0077-79a3bfc1f623-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0077-79a3bfc1f623-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0077.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0077-79a3bfc1f623-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0077-79a3bfc1f623-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0077.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0089-c80baa99b243-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0089-c80baa99b243-orig.jpg"
elif [ -f 'IMG-0089-c80baa99b243-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0089-c80baa99b243-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0089-c80baa99b243-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0089.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0089-c80baa99b243-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0089-c80baa99b243-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0089.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0065-33bbd4a370b5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0065-33bbd4a370b5-orig.jpg"
elif [ -f 'IMG-0065-33bbd4a370b5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0065-33bbd4a370b5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0065-33bbd4a370b5-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0065.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0065-33bbd4a370b5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0065-33bbd4a370b5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0065.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0062-98af8f02ad39-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0062-98af8f02ad39-orig.jpg"
elif [ -f 'IMG-0062-98af8f02ad39-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0062-98af8f02ad39-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0062-98af8f02ad39-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0062.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0062-98af8f02ad39-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0062-98af8f02ad39-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0062.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-0-c3984e0ace9e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-0-c3984e0ace9e-orig.jpg"
elif [ -f 'IMG-0063-0-c3984e0ace9e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-0-c3984e0ace9e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0063-0-c3984e0ace9e-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-0-c3984e0ace9e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-0-c3984e0ace9e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-1-5d60462ff676-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-1-5d60462ff676-orig.jpg"
elif [ -f 'IMG-0071-1-5d60462ff676-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-1-5d60462ff676-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0071-1-5d60462ff676-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-1-5d60462ff676-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-1-5d60462ff676-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'seatosky-a4a59e4ba40e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): seatosky-a4a59e4ba40e-orig.jpg"
elif [ -f 'seatosky-a4a59e4ba40e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): seatosky-a4a59e4ba40e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'seatosky-a4a59e4ba40e-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/seatosky.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: seatosky-a4a59e4ba40e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'seatosky-a4a59e4ba40e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/seatosky.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0046-30c6418367db-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0046-30c6418367db-orig.jpg"
elif [ -f 'IMG-0046-30c6418367db-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0046-30c6418367db-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0046-30c6418367db-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0046.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0046-30c6418367db-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0046-30c6418367db-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0046.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0051-ba0576ee7871-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0051-ba0576ee7871-orig.jpg"
elif [ -f 'IMG-0051-ba0576ee7871-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0051-ba0576ee7871-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0051-ba0576ee7871-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0051.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0051-ba0576ee7871-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0051-ba0576ee7871-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0051.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0054-2e197587c8da-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0054-2e197587c8da-orig.jpg"
elif [ -f 'IMG-0054-2e197587c8da-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0054-2e197587c8da-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0054-2e197587c8da-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0054.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0054-2e197587c8da-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0054-2e197587c8da-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0054.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-78--48536c590fc2-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-78--48536c590fc2-orig.jpg"
elif [ -f 'K--p-78--48536c590fc2-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-78--48536c590fc2-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-78--48536c590fc2-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2878%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-78--48536c590fc2-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-78--48536c590fc2-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2878%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-77--3c4ca6414c10-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-77--3c4ca6414c10-orig.jpg"
elif [ -f 'K--p-77--3c4ca6414c10-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-77--3c4ca6414c10-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-77--3c4ca6414c10-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2877%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-77--3c4ca6414c10-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-77--3c4ca6414c10-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2877%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-80--4c46570ec71f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-80--4c46570ec71f-orig.jpg"
elif [ -f 'K--p-80--4c46570ec71f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-80--4c46570ec71f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-80--4c46570ec71f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2880%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-80--4c46570ec71f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-80--4c46570ec71f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2880%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0021-54e9f8c517ea-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0021-54e9f8c517ea-orig.jpg"
elif [ -f 'IMG-0021-54e9f8c517ea-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0021-54e9f8c517ea-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0021-54e9f8c517ea-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0021.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0021-54e9f8c517ea-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0021-54e9f8c517ea-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0021.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00121-8b16eb3b12b2-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00121-8b16eb3b12b2-orig.jpg"
elif [ -f 'IMG-00121-8b16eb3b12b2-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00121-8b16eb3b12b2-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00121-8b16eb3b12b2-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00121.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00121-8b16eb3b12b2-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00121-8b16eb3b12b2-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00121.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00131-66fa3311fa63-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00131-66fa3311fa63-orig.jpg"
elif [ -f 'IMG-00131-66fa3311fa63-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00131-66fa3311fa63-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00131-66fa3311fa63-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00131.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00131-66fa3311fa63-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00131-66fa3311fa63-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00131.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00141-385e2ce81c4a-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00141-385e2ce81c4a-orig.jpg"
elif [ -f 'IMG-00141-385e2ce81c4a-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00141-385e2ce81c4a-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00141-385e2ce81c4a-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00141.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00141-385e2ce81c4a-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00141-385e2ce81c4a-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00141.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00151-7a3ea5200100-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00151-7a3ea5200100-orig.jpg"
elif [ -f 'IMG-00151-7a3ea5200100-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00151-7a3ea5200100-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00151-7a3ea5200100-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00151.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00151-7a3ea5200100-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00151-7a3ea5200100-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00151.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0017-64907c92d609-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0017-64907c92d609-orig.jpg"
elif [ -f 'IMG-0017-64907c92d609-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0017-64907c92d609-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0017-64907c92d609-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0017.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0017-64907c92d609-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0017-64907c92d609-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0017.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0020-f9cb52817a1b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0020-f9cb52817a1b-orig.jpg"
elif [ -f 'IMG-0020-f9cb52817a1b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0020-f9cb52817a1b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0020-f9cb52817a1b-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0020.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0020-f9cb52817a1b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0020-f9cb52817a1b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0020.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0019-04054fbcb783-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0019-04054fbcb783-orig.jpg"
elif [ -f 'IMG-0019-04054fbcb783-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0019-04054fbcb783-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0019-04054fbcb783-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0019.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0019-04054fbcb783-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0019-04054fbcb783-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0019.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00161-86216e197259-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00161-86216e197259-orig.jpg"
elif [ -f 'IMG-00161-86216e197259-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00161-86216e197259-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00161-86216e197259-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00161.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00161-86216e197259-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00161-86216e197259-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00161.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-67--6ec2a27fda46-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-67--6ec2a27fda46-orig.jpg"
elif [ -f 'K--p-67--6ec2a27fda46-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-67--6ec2a27fda46-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-67--6ec2a27fda46-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2867%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-67--6ec2a27fda46-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-67--6ec2a27fda46-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2867%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-68--3e24c6f4ed28-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-68--3e24c6f4ed28-orig.jpg"
elif [ -f 'K--p-68--3e24c6f4ed28-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-68--3e24c6f4ed28-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-68--3e24c6f4ed28-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2868%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-68--3e24c6f4ed28-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-68--3e24c6f4ed28-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2868%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-69--eae662733f7b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-69--eae662733f7b-orig.jpg"
elif [ -f 'K--p-69--eae662733f7b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-69--eae662733f7b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-69--eae662733f7b-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2869%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-69--eae662733f7b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-69--eae662733f7b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2869%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-70--4d1e144703b9-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-70--4d1e144703b9-orig.jpg"
elif [ -f 'K--p-70--4d1e144703b9-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-70--4d1e144703b9-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-70--4d1e144703b9-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2870%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-70--4d1e144703b9-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-70--4d1e144703b9-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%2870%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-3249-491ac4c3a53d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-3249-491ac4c3a53d-orig.jpg"
elif [ -f 'IMG-3249-491ac4c3a53d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-3249-491ac4c3a53d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-3249-491ac4c3a53d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_3249.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-3249-491ac4c3a53d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-3249-491ac4c3a53d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_3249.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-6--dc8af88a4c38-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-6--dc8af88a4c38-orig.jpg"
elif [ -f 'K--p-6--dc8af88a4c38-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-6--dc8af88a4c38-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-6--dc8af88a4c38-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%286%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-6--dc8af88a4c38-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-6--dc8af88a4c38-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%286%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-5--c7d675e9816f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-5--c7d675e9816f-orig.jpg"
elif [ -f 'K--p-5--c7d675e9816f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-5--c7d675e9816f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-5--c7d675e9816f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%285%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-5--c7d675e9816f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-5--c7d675e9816f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%285%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'K--p-4--4e34e5e6d09f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): K--p-4--4e34e5e6d09f-orig.jpg"
elif [ -f 'K--p-4--4e34e5e6d09f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): K--p-4--4e34e5e6d09f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'K--p-4--4e34e5e6d09f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%284%29.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: K--p-4--4e34e5e6d09f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'K--p-4--4e34e5e6d09f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/K%3F%3Fp%284%29.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0004-0-c7e193ef996c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0004-0-c7e193ef996c-orig.jpg"
elif [ -f 'IMG-0004-0-c7e193ef996c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0004-0-c7e193ef996c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0004-0-c7e193ef996c-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0004.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0004-0-c7e193ef996c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0004-0-c7e193ef996c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0004.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0005-ebab9284b933-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0005-ebab9284b933-orig.jpg"
elif [ -f 'IMG-0005-ebab9284b933-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0005-ebab9284b933-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0005-ebab9284b933-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0005.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0005-ebab9284b933-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0005-ebab9284b933-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0005.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-0-209bd6ade396-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-0-209bd6ade396-orig.jpg"
elif [ -f 'IMG-0006-0-209bd6ade396-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-0-209bd6ade396-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0006-0-209bd6ade396-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-0-209bd6ade396-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-0-209bd6ade396-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-0-87568ea5ea99-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-0-87568ea5ea99-orig.jpg"
elif [ -f 'IMG-0007-0-87568ea5ea99-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-0-87568ea5ea99-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0007-0-87568ea5ea99-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-0-87568ea5ea99-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-0-87568ea5ea99-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0008-0-632a273ba4a7-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0008-0-632a273ba4a7-orig.jpg"
elif [ -f 'IMG-0008-0-632a273ba4a7-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0008-0-632a273ba4a7-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0008-0-632a273ba4a7-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0008.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0008-0-632a273ba4a7-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0008-0-632a273ba4a7-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0008.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0012-0-fab4c1f1abd0-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0012-0-fab4c1f1abd0-orig.jpg"
elif [ -f 'IMG-0012-0-fab4c1f1abd0-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0012-0-fab4c1f1abd0-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0012-0-fab4c1f1abd0-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0012.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0012-0-fab4c1f1abd0-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0012-0-fab4c1f1abd0-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0012.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0025-0-b3d926cb8abd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0025-0-b3d926cb8abd-orig.jpg"
elif [ -f 'IMG-0025-0-b3d926cb8abd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0025-0-b3d926cb8abd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0025-0-b3d926cb8abd-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0025.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0025-0-b3d926cb8abd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0025-0-b3d926cb8abd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0025.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-2-bd9eb6ab7814-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-2-bd9eb6ab7814-orig.jpg"
elif [ -f 'IMG-0026-2-bd9eb6ab7814-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-2-bd9eb6ab7814-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0026-2-bd9eb6ab7814-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.2.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-2-bd9eb6ab7814-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-2-bd9eb6ab7814-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.2.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0029-1-5af506f51c58-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0029-1-5af506f51c58-orig.jpg"
elif [ -f 'IMG-0029-1-5af506f51c58-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0029-1-5af506f51c58-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0029-1-5af506f51c58-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0029.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0029-1-5af506f51c58-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0029-1-5af506f51c58-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0029.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0028-0-7c79e5600f12-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0028-0-7c79e5600f12-orig.jpg"
elif [ -f 'IMG-0028-0-7c79e5600f12-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0028-0-7c79e5600f12-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0028-0-7c79e5600f12-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0028.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0028-0-7c79e5600f12-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0028-0-7c79e5600f12-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0028.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-0-bcbf8a922e53-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-0-bcbf8a922e53-orig.jpg"
elif [ -f 'IMG-0027-0-bcbf8a922e53-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-0-bcbf8a922e53-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0027-0-bcbf8a922e53-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-0-bcbf8a922e53-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-0-bcbf8a922e53-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0001-0-12109486a46c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0001-0-12109486a46c-orig.jpg"
elif [ -f 'IMG-0001-0-12109486a46c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0001-0-12109486a46c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0001-0-12109486a46c-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0001.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0001-0-12109486a46c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0001-0-12109486a46c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0001.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0002-0-1fc0838211e5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0002-0-1fc0838211e5-orig.jpg"
elif [ -f 'IMG-0002-0-1fc0838211e5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0002-0-1fc0838211e5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0002-0-1fc0838211e5-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0002.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0002-0-1fc0838211e5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0002-0-1fc0838211e5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0002.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0003-0-c463c509d731-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0003-0-c463c509d731-orig.jpg"
elif [ -f 'IMG-0003-0-c463c509d731-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0003-0-c463c509d731-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0003-0-c463c509d731-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0003.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0003-0-c463c509d731-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0003-0-c463c509d731-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0003.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0013-0-d66de8a50c84-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0013-0-d66de8a50c84-orig.jpg"
elif [ -f 'IMG-0013-0-d66de8a50c84-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0013-0-d66de8a50c84-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0013-0-d66de8a50c84-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0013.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0013-0-d66de8a50c84-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0013-0-d66de8a50c84-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0013.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0057-b010e6ad133d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0057-b010e6ad133d-orig.jpg"
elif [ -f 'IMG-0057-b010e6ad133d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0057-b010e6ad133d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0057-b010e6ad133d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0057.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0057-b010e6ad133d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0057-b010e6ad133d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0057.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0059-c6cfec8eccbd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0059-c6cfec8eccbd-orig.jpg"
elif [ -f 'IMG-0059-c6cfec8eccbd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0059-c6cfec8eccbd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0059-c6cfec8eccbd-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0059.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0059-c6cfec8eccbd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0059-c6cfec8eccbd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0059.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0061-6dcf9cf2b156-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0061-6dcf9cf2b156-orig.jpg"
elif [ -f 'IMG-0061-6dcf9cf2b156-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0061-6dcf9cf2b156-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0061-6dcf9cf2b156-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0061.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0061-6dcf9cf2b156-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0061-6dcf9cf2b156-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0061.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0063-c5c63f3006cd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0063-c5c63f3006cd-orig.jpg"
elif [ -f 'IMG-0063-c5c63f3006cd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0063-c5c63f3006cd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0063-c5c63f3006cd-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0063-c5c63f3006cd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0063-c5c63f3006cd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0063.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0068-0f785d6deb18-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0068-0f785d6deb18-orig.jpg"
elif [ -f 'IMG-0068-0f785d6deb18-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0068-0f785d6deb18-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0068-0f785d6deb18-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0068.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0068-0f785d6deb18-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0068-0f785d6deb18-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0068.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0071-13a3c4ca641c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0071-13a3c4ca641c-orig.jpg"
elif [ -f 'IMG-0071-13a3c4ca641c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0071-13a3c4ca641c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0071-13a3c4ca641c-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0071-13a3c4ca641c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0071-13a3c4ca641c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0071.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0076-b4f0eb2704ca-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0076-b4f0eb2704ca-orig.jpg"
elif [ -f 'IMG-0076-b4f0eb2704ca-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0076-b4f0eb2704ca-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0076-b4f0eb2704ca-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0076.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0076-b4f0eb2704ca-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0076-b4f0eb2704ca-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0076.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0025-42d0d3b4d00f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0025-42d0d3b4d00f-orig.jpg"
elif [ -f 'IMG-0025-42d0d3b4d00f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0025-42d0d3b4d00f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0025-42d0d3b4d00f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0025.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0025-42d0d3b4d00f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0025-42d0d3b4d00f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0025.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0024-0-57a15c8b060b-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0024-0-57a15c8b060b-orig.jpg"
elif [ -f 'IMG-0024-0-57a15c8b060b-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0024-0-57a15c8b060b-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0024-0-57a15c8b060b-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0024.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0024-0-57a15c8b060b-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0024-0-57a15c8b060b-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0024.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-1-71b00f96671d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-1-71b00f96671d-orig.jpg"
elif [ -f 'IMG-0026-1-71b00f96671d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-1-71b00f96671d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0026-1-71b00f96671d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.1.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-1-71b00f96671d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-1-71b00f96671d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.1.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0029-0-8306eaec7aa8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0029-0-8306eaec7aa8-orig.jpg"
elif [ -f 'IMG-0029-0-8306eaec7aa8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0029-0-8306eaec7aa8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0029-0-8306eaec7aa8-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0029.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0029-0-8306eaec7aa8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0029-0-8306eaec7aa8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0029.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0032-0-bc4410bd4454-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0032-0-bc4410bd4454-orig.jpg"
elif [ -f 'IMG-0032-0-bc4410bd4454-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0032-0-bc4410bd4454-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0032-0-bc4410bd4454-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0032.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0032-0-bc4410bd4454-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0032-0-bc4410bd4454-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0032.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0049-f5e31d98ca39-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0049-f5e31d98ca39-orig.jpg"
elif [ -f 'IMG-0049-f5e31d98ca39-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0049-f5e31d98ca39-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0049-f5e31d98ca39-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0049.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0049-f5e31d98ca39-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0049-f5e31d98ca39-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0049.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0052-9607256adb3c-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0052-9607256adb3c-orig.jpg"
elif [ -f 'IMG-0052-9607256adb3c-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0052-9607256adb3c-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0052-9607256adb3c-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0052.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0052-9607256adb3c-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0052-9607256adb3c-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0052.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0055-b1773054f4c8-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0055-b1773054f4c8-orig.jpg"
elif [ -f 'IMG-0055-b1773054f4c8-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0055-b1773054f4c8-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0055-b1773054f4c8-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0055.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0055-b1773054f4c8-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0055-b1773054f4c8-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0055.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0048-6355a9b6de75-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0048-6355a9b6de75-orig.jpg"
elif [ -f 'IMG-0048-6355a9b6de75-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0048-6355a9b6de75-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0048-6355a9b6de75-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0048.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0048-6355a9b6de75-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0048-6355a9b6de75-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0048.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0031-0-5ead604c36c1-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0031-0-5ead604c36c1-orig.jpg"
elif [ -f 'IMG-0031-0-5ead604c36c1-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0031-0-5ead604c36c1-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0031-0-5ead604c36c1-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0031.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0031-0-5ead604c36c1-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0031-0-5ead604c36c1-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0031.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0018-0-5ebb4f0be157-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0018-0-5ebb4f0be157-orig.jpg"
elif [ -f 'IMG-0018-0-5ebb4f0be157-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0018-0-5ebb4f0be157-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0018-0-5ebb4f0be157-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0018.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0018-0-5ebb4f0be157-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0018-0-5ebb4f0be157-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0018.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0019-0-38a572fa974f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0019-0-38a572fa974f-orig.jpg"
elif [ -f 'IMG-0019-0-38a572fa974f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0019-0-38a572fa974f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0019-0-38a572fa974f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0019.0.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0019-0-38a572fa974f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0019-0-38a572fa974f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0019.0.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0004-c0578c1d29a4-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0004-c0578c1d29a4-orig.jpg"
elif [ -f 'IMG-0004-c0578c1d29a4-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0004-c0578c1d29a4-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0004-c0578c1d29a4-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0004.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0004-c0578c1d29a4-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0004-c0578c1d29a4-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0004.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00061-e3a67fb01fde-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00061-e3a67fb01fde-orig.jpg"
elif [ -f 'IMG-00061-e3a67fb01fde-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00061-e3a67fb01fde-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00061-e3a67fb01fde-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00061.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00061-e3a67fb01fde-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00061-e3a67fb01fde-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00061.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00071-68e35316a1fb-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00071-68e35316a1fb-orig.jpg"
elif [ -f 'IMG-00071-68e35316a1fb-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00071-68e35316a1fb-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00071-68e35316a1fb-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00071.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00071-68e35316a1fb-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00071-68e35316a1fb-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00071.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0001-4ea9369e5bb7-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0001-4ea9369e5bb7-orig.jpg"
elif [ -f 'IMG-0001-4ea9369e5bb7-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0001-4ea9369e5bb7-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0001-4ea9369e5bb7-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0001.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0001-4ea9369e5bb7-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0001-4ea9369e5bb7-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0001.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00122-dc2ef7a3a746-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00122-dc2ef7a3a746-orig.jpg"
elif [ -f 'IMG-00122-dc2ef7a3a746-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00122-dc2ef7a3a746-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00122-dc2ef7a3a746-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00122.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00122-dc2ef7a3a746-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00122-dc2ef7a3a746-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00122.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0026-34a973146527-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0026-34a973146527-orig.jpg"
elif [ -f 'IMG-0026-34a973146527-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0026-34a973146527-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0026-34a973146527-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0026-34a973146527-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0026-34a973146527-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0026.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0027-f757a6d5009f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0027-f757a6d5009f-orig.jpg"
elif [ -f 'IMG-0027-f757a6d5009f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0027-f757a6d5009f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0027-f757a6d5009f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0027-f757a6d5009f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0027-f757a6d5009f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0027.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0031-449343f5abf5-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0031-449343f5abf5-orig.jpg"
elif [ -f 'IMG-0031-449343f5abf5-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0031-449343f5abf5-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0031-449343f5abf5-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0031.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0031-449343f5abf5-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0031-449343f5abf5-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0031.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0030-ad7687b3c562-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0030-ad7687b3c562-orig.jpg"
elif [ -f 'IMG-0030-ad7687b3c562-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0030-ad7687b3c562-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0030-ad7687b3c562-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0030.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0030-ad7687b3c562-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0030-ad7687b3c562-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0030.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0028-136826bb3a45-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0028-136826bb3a45-orig.jpg"
elif [ -f 'IMG-0028-136826bb3a45-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0028-136826bb3a45-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0028-136826bb3a45-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0028.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0028-136826bb3a45-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0028-136826bb3a45-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0028.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0035-7ee1d0c2b9f3-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0035-7ee1d0c2b9f3-orig.jpg"
elif [ -f 'IMG-0035-7ee1d0c2b9f3-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0035-7ee1d0c2b9f3-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0035-7ee1d0c2b9f3-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0035.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0035-7ee1d0c2b9f3-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0035-7ee1d0c2b9f3-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0035.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0002-a801f415480f-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0002-a801f415480f-orig.jpg"
elif [ -f 'IMG-0002-a801f415480f-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0002-a801f415480f-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0002-a801f415480f-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0002.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0002-a801f415480f-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0002-a801f415480f-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0002.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0006-9dcf00fb7fbd-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0006-9dcf00fb7fbd-orig.jpg"
elif [ -f 'IMG-0006-9dcf00fb7fbd-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0006-9dcf00fb7fbd-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0006-9dcf00fb7fbd-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0006-9dcf00fb7fbd-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0006-9dcf00fb7fbd-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0006.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0007-4ce7fa106345-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0007-4ce7fa106345-orig.jpg"
elif [ -f 'IMG-0007-4ce7fa106345-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0007-4ce7fa106345-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0007-4ce7fa106345-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0007-4ce7fa106345-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0007-4ce7fa106345-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0007.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0009-f881fa0f5388-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0009-f881fa0f5388-orig.jpg"
elif [ -f 'IMG-0009-f881fa0f5388-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0009-f881fa0f5388-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0009-f881fa0f5388-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0009.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0009-f881fa0f5388-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0009-f881fa0f5388-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0009.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00081-1ff37e4041d1-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00081-1ff37e4041d1-orig.jpg"
elif [ -f 'IMG-00081-1ff37e4041d1-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00081-1ff37e4041d1-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00081-1ff37e4041d1-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00081.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00081-1ff37e4041d1-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00081-1ff37e4041d1-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00081.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-00101-0fa630485e07-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-00101-0fa630485e07-orig.jpg"
elif [ -f 'IMG-00101-0fa630485e07-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-00101-0fa630485e07-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-00101-0fa630485e07-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_00101.JPG' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-00101-0fa630485e07-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-00101-0fa630485e07-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_00101.JPG"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0016-7dd0cfe3b3d1-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0016-7dd0cfe3b3d1-orig.jpg"
elif [ -f 'IMG-0016-7dd0cfe3b3d1-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0016-7dd0cfe3b3d1-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0016-7dd0cfe3b3d1-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0016.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0016-7dd0cfe3b3d1-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0016-7dd0cfe3b3d1-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0016.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0008-11c198e83c3e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0008-11c198e83c3e-orig.jpg"
elif [ -f 'IMG-0008-11c198e83c3e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0008-11c198e83c3e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0008-11c198e83c3e-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0008.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0008-11c198e83c3e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0008-11c198e83c3e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0008.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0010-b12076af2e09-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0010-b12076af2e09-orig.jpg"
elif [ -f 'IMG-0010-b12076af2e09-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0010-b12076af2e09-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0010-b12076af2e09-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0010.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0010-b12076af2e09-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0010-b12076af2e09-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0010.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0012-f6b11e28535d-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0012-f6b11e28535d-orig.jpg"
elif [ -f 'IMG-0012-f6b11e28535d-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0012-f6b11e28535d-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0012-f6b11e28535d-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0012.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0012-f6b11e28535d-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0012-f6b11e28535d-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0012.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0011-5b72894ccf3e-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0011-5b72894ccf3e-orig.jpg"
elif [ -f 'IMG-0011-5b72894ccf3e-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0011-5b72894ccf3e-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0011-5b72894ccf3e-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0011.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0011-5b72894ccf3e-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0011-5b72894ccf3e-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0011.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0013-b0d15e2229ea-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0013-b0d15e2229ea-orig.jpg"
elif [ -f 'IMG-0013-b0d15e2229ea-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0013-b0d15e2229ea-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0013-b0d15e2229ea-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0013.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0013-b0d15e2229ea-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0013-b0d15e2229ea-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0013.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0014-d8a6c2c7ee85-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0014-d8a6c2c7ee85-orig.jpg"
elif [ -f 'IMG-0014-d8a6c2c7ee85-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0014-d8a6c2c7ee85-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0014-d8a6c2c7ee85-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0014.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0014-d8a6c2c7ee85-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0014-d8a6c2c7ee85-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0014.jpg"
fi
COUNT=$((COUNT + 1))
if [ -f 'IMG-0015-b4c16474e7ee-orig.jpg' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): IMG-0015-b4c16474e7ee-orig.jpg"
elif [ -f 'IMG-0015-b4c16474e7ee-orig.jpg.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): IMG-0015-b4c16474e7ee-orig.jpg"
elif curl -fSL --connect-timeout 10 --max-time 60 -o 'IMG-0015-b4c16474e7ee-orig.jpg' 'http://photos1.blogger.com/blogger/7433/817/1600/IMG_0015.jpg' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: IMG-0015-b4c16474e7ee-orig.jpg"
else
  FAILED=$((FAILED + 1))
  touch 'IMG-0015-b4c16474e7ee-orig.jpg.failed'
  echo "[$COUNT/$TOTAL] FAILED: http://photos1.blogger.com/blogger/7433/817/1600/IMG_0015.jpg"
fi

echo ""
echo "========================================"
echo "Download complete!"
echo "  Total: $TOTAL"
echo "    Thumbnails: 270"
echo "    Originals: 248"
echo "  Skipped (existing): $SKIPPED"
echo "  Downloaded: $((TOTAL - SKIPPED - FAILED))"
echo "  Failed: $FAILED"
echo "========================================"