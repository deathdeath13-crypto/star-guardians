*battle_1
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='photon';f.final_boss=false"]
[jump target="*battle_loop"]
*battle_2
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='plasma';f.final_boss=false"]
[jump target="*battle_loop"]
*battle_3
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='rail';f.final_boss=false"]
[jump target="*battle_loop"]
*battle_4
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='photon';f.final_boss=false"]
[jump target="*battle_loop"]
*battle_5
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='team';f.final_boss=false"]
[jump target="*battle_loop"]
*battle_6
[eval exp="f.enemy_hp=3;f.party_hp=3;f.weak='evidence';f.final_boss=true"]
[jump target="*final_battle"]
*battle_loop
[cm]
[ptext text="TACTICAL LINK / BOSS" x=70 y=45 size=30 color=0x8eeeff]
敵HP・味方HPを共有管理。弱点は直前の観察と会話から推理する。[p]
[glink text="プラズマライフル" target="*use_plasma" x=120 y=270 width=310]
[glink text="レールキャノン" target="*use_rail" x=485 y=270 width=310]
[glink text="フォトンミサイル" target="*use_photon" x=850 y=270 width=310]
[glink text="スキャン / チーム連携" target="*use_scan" x=300 y=380 width=680]
[s]
*use_plasma
[eval exp="f.weapon='plasma'"]
[jump target="*resolve_attack"]
*use_rail
[eval exp="f.weapon='rail'"]
[jump target="*resolve_attack"]
*use_photon
[eval exp="f.weapon='photon'"]
[jump target="*resolve_attack"]
*use_scan
[eval exp="f.weapon=(f.weak=='team'?'team':'scan')"]
[jump target="*resolve_attack"]
*resolve_attack
[if exp="f.weapon==f.weak"]
[eval exp="f.enemy_hp-=1"]
有効打。弱点へ攻撃が通った。[p]
[else]
[eval exp="f.party_hp-=1"]
効果が薄い。敵の反撃。観察記録を見直せ。[p]
[endif]
[if exp="f.party_hp<=0"]
作戦失敗。直前から再挑戦する。[p]
[eval exp="f.enemy_hp=3;f.party_hp=3"]
[jump target="*battle_loop"]
[endif]
[if exp="f.enemy_hp>0"]
[jump target="*battle_loop"]
[endif]
敵性体を無力化。超大型主砲、照準・充填・発射シーケンス。[p]
[glink text="主砲発射を承認" target="*cannon_fire" x=340 y=360 width=600]
[s]
*cannon_fire
主砲発射。目標、沈黙。[p]
[return]
*final_battle
[cm]
[ptext text="ORIGIN / FINAL CONFRONTATION" x=70 y=45 size=28 color=0xffd37a]
[ptext text="超大型主砲：使用不能" x=70 y=98 size=22 color=0xff6677]
攻撃だけでは中枢は再生する。証拠を正しい順に提示せよ。[p]
[glink text="1 救難通信" target="*evidence_1" x=190 y=210 width=900]
[s]
*evidence_1
救難通信を提示。[p]
[glink text="2 MOTHER記録" target="*evidence_2" x=190 y=260 width=900]
[s]
*evidence_2
MOTHER記録を提示。[p]
[glink text="3 第一期間通信" target="*evidence_3" x=190 y=310 width=900]
[s]
*evidence_3
第一期間通信を提示。[p]
[glink text="4 主砲強制発射ログ" target="*evidence_4" x=190 y=360 width=900]
[s]
*evidence_4
主砲強制発射ログを提示。[p]
[glink text="5 ノア全記録" target="*evidence_5" x=190 y=410 width=900]
[s]
*evidence_5
ノア全記録を提示。プラズマ、レール、フォトンを中枢へ。主砲は使わない。[p]
[eval exp="f.team_trust+=2"]
[return]
