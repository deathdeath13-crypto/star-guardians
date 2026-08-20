; Chapter 3: generated verbatim from canonical supplied scripts
[cm]
[freeimage layer=1]
[layopt layer="message" visible=true]
[showmenubutton]
[bg storage="bg_title.png" time=500]

*scene_3_0a
[cm]
[text text="3-0A 美月の夜勤" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_briefing.png" time="500"]

[freeimage layer=1]
眠れずに司令室へ行くと、美月だけが残っていた。卓上には十四年前の損害報告と、今日の出撃許可書が並んでいる。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「消灯時刻は過ぎている」[p]
[freeimage layer=1]
#津田花
「隊長も」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「私は勤務だ」[p]
[freeimage layer=1]
#津田花
「なら手伝います」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「疑っている相手の仕事を？」[p]
[freeimage layer=1]
#津田花
「疑うことと、一人にすることは別です」[p]
[freeimage layer=1]
美月はしばらく黙り、隣の端末を解放した。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「三年前、封鎖区画の環境制御が突然再起動した。調査班を送ろうとした直後、司令部から永久封鎖命令が届いた」[p]
[freeimage layer=1]
#津田花
「逆らわなかった」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「私は命令を守ることで、隊を生かしてきた」[p]
[freeimage layer=1]
#津田花
「今は、その命令が隊を危険にしている」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「分かっている。だが一度、自分の判断で命令を破れば、次から何を基準にすればいい」[p]
[freeimage layer=1]
#津田花
「一人で基準を作らなくていい。五人に聞けばいい」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「お前を含めれば六人だ」[p]
[freeimage layer=1]
#津田花
「もう含まれてますか」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「とっくにだ。気づくのが遅い」[p]
*scene_3_1
[cm]
[text text="3-1 疑われる隊長" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_briefing.png" time="500"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/risa_normal.png" left="760" top="18" height="680" time="180"]
#理沙
「MOTHERは旧式中枢制御系の呼称。封鎖区画に残ってる」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「立入禁止だ」[p]
[freeimage layer=1]
#津田花
「理由は？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「第一期ガーディアンが壊滅した区画だからだ」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「それだけ？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「命令に理由が足りないか」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「足りないな。今は仲間が死んでる」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「美月。隠すほど、あなたが疑われる」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「……封鎖命令の発令者は私だ。三年前、司令部から危険情報を受けた」[p]
[freeimage layer=1]
#津田花
「中を見たことは？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「ない」[p]
[cm]
選択肢を選んでください。[p]
[glink text="共感して向き合う" target="*choice_3_1_a" x=190 y=220 width=900]
[glink text="証拠を慎重に確かめる" target="*choice_3_1_b" x=190 y=310 width=900]
[s]
*choice_3_1_a
[eval exp="f.team_trust += 1; f.haruka += 1"]
[jump target="*choice_3_1_join"]
*choice_3_1_b
[eval exp="f.mizuki += 1; f.risa += 1"]
*choice_3_1_join
[cm]

*scene_3_2
[cm]
[text text="3-2 父の声" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_sealed.png" time="500"]

[freeimage layer=1]
埃はない。真空に近い区画では、時間だけが積もっていた。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/risa_normal.png" left="760" top="18" height="680" time="180"]
#理沙
「MOTHER端末、起動する。電力を迂回……三、二、一」[p]
[freeimage layer=1]
#記録音声
「第一期ガーディアン、最終報告。ヴォイドとの意思疎通に成功した」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「成功……？」[p]
[freeimage layer=1]
#記録音声
「彼らはプロジェクト・ノアの生存者だ。攻撃を中止し、オリジンから指揮権を――」[p]
; [ノイズ]
[freeimage layer=1]
#津田花
「この声……」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「あなたの父親よ」[p]
[freeimage layer=1]
#津田花
「俺の？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「玲奈！」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「もう隠せない。津田花の父は第一期ガーディアン。十四年前、この区画で死亡した」[p]
[freeimage layer=1]
#津田花
「事故で死んだと聞いていた」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「記録を書き換えられたの」[p]
[freeimage layer=1]
床が揺れた。考える時間さえ、誰かに拒まれたように。[p]
*scene_3_2a
[cm]
[text text="3-2A 第一期間の食卓" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_cafeteria.png" time="500"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/risa_normal.png" left="760" top="18" height="680" time="180"]
#理沙
「破損記録を補完できる。戦闘記録じゃない。生活ログ」[p]
[freeimage layer=1]
十四年前の食堂が、半透明の映像として蘇った。第一期の隊員たちが、狭い卓を囲んでいる。[p]
その一人が父だった。[p]
[freeimage layer=1]
#父の記録
「息子の名前を読めるやつが、地球に一人もいない」[p]
[freeimage layer=1]
#第一期隊員
「お前がつけたんだろ」[p]
[freeimage layer=1]
#父の記録
「俺じゃない。じいさんだ。津田花で、つだげ。強い名前だろ」[p]
[freeimage layer=1]
#第一期隊員
「初見で読めたらヴォイドと会話できる」[p]
[freeimage layer=1]
覚えていない声だった。なのに、笑い方だけが自分と似ていた。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「津田花……」[p]
[freeimage layer=1]
#津田花
「大丈夫」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「それ、今は信じない」[p]
[freeimage layer=1]
遥は俺の横に立った。慰めの言葉は言わず、逃げ道だけを塞ぐように。[p]
[freeimage layer=1]
#記録音声
「ノア側代表との接触に成功。彼らは地球語を失ったのではない。複数の感覚を重ねた通信へ進化している」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「津田花が救難通信を意味として聞けたのは、父親から受け継いだ心理特性。超能力ではない。異質な信号を、相手の意図として組み直す適性よ」[p]
[freeimage layer=1]
#津田花
「だから俺をここへ？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「ええ」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「その話は戻ってからだ」[p]
[freeimage layer=1]
#津田花
「戻れる前提なんですね」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「隊長命令だ。全員戻る」[p]
*scene_3_3
[cm]
[text text="3-3 崩落" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「全員退避！」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「津田花、こっち！」[p]
[freeimage layer=1]
天井材が落ちる。遥を突き飛ばし、代わりに肩へ衝撃を受けた。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「津田花！」[p]
[freeimage layer=1]
#津田花
「動く。大丈夫」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「大丈夫な顔じゃない！」[p]
[freeimage layer=1]
#津田花
「遥が無事なら、半分は大丈夫だ」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「そういうこと、簡単に言わないで」[p]
[freeimage layer=1]
#津田花
「怒ってる？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「怖かったの」[p]
[freeimage layer=1]
遥の手が震えていた。俺の肩を支える力だけが、痛いほど強かった。[p]
*scene_3_3a
[cm]
[text text="3-3A 医務室の夜" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_medical.png" time="500"]

[freeimage layer=1]
鎮痛剤が効き始めても、父の声は頭から離れなかった。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「怒っていいのよ」[p]
[freeimage layer=1]
#津田花
「誰に？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「私に。美月に。父親に。何も知らなかった自分に」[p]
[freeimage layer=1]
#津田花
「玲奈は、いつから知ってた？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「あなたが十二歳のとき。第一期の遺伝記録を調べた。あなたを監視対象から外すため、何度も報告書を書き換えた」[p]
[freeimage layer=1]
#津田花
「守ってた？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「利用できる年齢まで隠した、とも言える」[p]
[freeimage layer=1]
#津田花
「どっちですか」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「両方。人間の動機は、一つに整理できない」[p]
[freeimage layer=1]
玲奈は研究者らしく答えた。その目だけは、答えを嫌っていた。[p]
[freeimage layer=1]
#津田花
「遥のことも知ってる？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「なぜそう思うの」[p]
[freeimage layer=1]
#津田花
「父の認識票を見たとき、遥は知ってる顔をした」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「心理適性は、ときどき残酷ね」[p]
[freeimage layer=1]
#津田花
「答えになってない」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「今、私から言えば、彼女から選ぶ権利を奪う」[p]
[freeimage layer=1]
#津田花
「俺はもう、選ばせてもらえなかった」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「だからこそよ」[p]
*scene_3_4
[cm]
[text text="3-4 重装甲型" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_sealed.png" time="500"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/risa_normal.png" left="760" top="18" height="680" time="180"]
#理沙
「敵は重装甲型。外殻厚、通常の三・六倍」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「プラズマは表面で拡散。ミサイルも傷が浅い」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「関節の一点なら抜ける。でも私の狙撃じゃ出力不足」[p]
[freeimage layer=1]
#津田花
「なら、速さを一点に集める。レールキャノン」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「理沙、遥の照準データをレール砲へ同期」[p]
[call storage="battle.ks" target="*battle_3"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「敵HPゼロ！　主砲へ回すぞ！」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/risa_normal.png" left="760" top="18" height="680" time="180"]
#理沙
「待って。敵の内部から記録データ……第一期の識別信号」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/reina_normal.png" left="760" top="18" height="680" time="180"]
#玲奈
「彼らは記録を運んできた。破壊される前に」[p]
[freeimage layer=1]
#統合音声
「主砲シーケンスを強制実行」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/mizuki_normal.png" left="760" top="18" height="680" time="180"]
#美月
「私は命令していない！」[p]
; [主砲発射]
*scene_3_4a
[cm]
[text text="3-4A 沙耶の盾" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_maintenance.png" time="500"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「肩をやった奴が何しに来た」[p]
[freeimage layer=1]
#津田花
「謝りに。崩落のとき、沙耶の退路を塞いだ」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「遥を助けるためだろ」[p]
[freeimage layer=1]
#津田花
「結果として、沙耶が瓦礫を一人で支えた」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「私は重装兵だ。支えるのが仕事」[p]
[freeimage layer=1]
#津田花
「重いもの全部？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「持てるだけな」[p]
[freeimage layer=1]
#津田花
「持てないと言うことは？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「……苦手だ」[p]
[freeimage layer=1]
沙耶は大型シールドの傷を磨いていた。傷は消えない。光の角度が変わるだけだ。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「第一期の記録を見た。お前、平気な顔が上手いな」[p]
[freeimage layer=1]
#津田花
「沙耶ほどじゃない」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「言うようになった」[p]
[freeimage layer=1]
#津田花
「持てないときは言ってください。六人で持つから」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/saya_normal.png" left="760" top="18" height="680" time="180"]
#沙耶
「その台詞、覚えとけ。お前が潰れそうなとき、同じこと言うぞ」[p]
#沙耶
このファイルは `09_FULL_SCRIPT_PART2.md` へ指定位置どおり挿入する正本である。Codexは省略せずKS化すること。[p]
*scene_3_5
[cm]
[text text="3-5 誰が命令した" x=80 y=42 size=26 color=0x9eefff time=300]

[freeimage layer=1]
[bg storage="bg_medical.png" time="500"]

[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「肩、まだ痛む？」[p]
[freeimage layer=1]
#津田花
「遥が押すと痛む」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「じゃあ押さない」[p]
[freeimage layer=1]
#津田花
「手を離すとは言ってない」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「……変な新人」[p]
[freeimage layer=1]
#津田花
「もう新人じゃないかも」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「じゃあ、変な津田花」[p]
[freeimage layer=1]
笑ったあと、遥は目を伏せた。[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「もし、私があなたに言えないことを持ってたら……どうする？」[p]
[cm]
選択肢を選んでください。[p]
[glink text="共感して向き合う" target="*choice_3_2_a" x=190 y=220 width=900]
[glink text="証拠を慎重に確かめる" target="*choice_3_2_b" x=190 y=310 width=900]
[s]
*choice_3_2_a
[eval exp="f.team_trust += 1; f.haruka += 1"]
[jump target="*choice_3_2_join"]
*choice_3_2_b
[eval exp="f.mizuki += 1; f.risa += 1"]
*choice_3_2_join
[cm]

[freeimage layer=1]
#津田花
「主砲を撃ったのは美月じゃない。端末の上に、別の命令者がいる」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「気づいたんだ」[p]
[freeimage layer=1]
#津田花
「遥も？」[p]
[freeimage layer=1]
[image layer="1" page="fore" storage="chara/haruka_normal.png" left="760" top="18" height="680" time="180"]
#遥
「……おやすみ、津田花」[p]
[freeimage layer=1]
逃げるように去る背中を、追えなかった。[p]
同じ時刻。監視映像には、玲奈が封鎖端末から機密データを持ち出す姿が記録されていた。[p]
[cm]
[eval exp="sf.chapter_clear_3=true; sf.bgm_unlock_3=true"]
第3章 END[p]
[jump storage="chapter_04.ks"]
