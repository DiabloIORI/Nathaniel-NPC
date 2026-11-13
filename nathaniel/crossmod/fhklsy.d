CHAIN
IF ~InParty("J#Kelsey")
InParty("Anomen")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("AnomenRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",1)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("FHKelsAnoTalk","GLOBAL",0)~ THEN BFHNAT FHKelsAno
~……不，真的，我只是觉得你该试着跟他说话。他又没对你做什么。~
DO ~SetGlobal("FHKelsAnoTalk","GLOBAL",1)~
== BJ#KLSY
~没做什么……？你认真的？~
== BFHNAT
~是。我确信你们真谈过之后，会发现彼此相处得好得多。~
== BJ#KLSY
~听着，纳撒尼尔，看在沃金的份上！你若这么爱阿诺门，为什么不把他领走，帮<CHARNAME>和我一个忙？~
== BFHNAT
~什么？一来，阿诺门不是——二来——那只是——根本不对！~
== BJ#KLSY
~*叹气*听着。对不起。可那不会发生。~
EXIT

CHAIN
IF ~InParty("J#Kelsey")
InParty("Anomen")
!StateCheck("J#Kelsey",STATE_SLEEPING)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("FHKelsAnoTalk","GLOBAL",0)~ THEN BFHNAT FHKelsAno2
~……不，真的，我只是觉得你该试着跟他说话。他又没对你做什么。~
DO ~SetGlobal("FHKelsAnoTalk","GLOBAL",1)~
== BJ#KLSY
~没做什么……？你认真的？~
== BFHNAT
~是。我确信你们真谈过之后，会发现彼此相处得好得多。~
== BJ#KLSY
~听着，纳撒尼尔，看在沃金的份上！你若这么爱阿诺门，为什么不把他领走？那样至少他就不在我眼前烦我了！~
== BFHNAT
~什么？一来，阿诺门不是——二来——那只是——根本不对！~
== BJ#KLSY
~*叹气*听着。对不起。可那不会发生。~
EXIT

CHAIN IF
~InParty("Nath")
!StateCheck("Nath",STATE_SLEEPING)
Global("FHKelsTalk","GLOBAL",0)~ THEN BJ#KLSY FHKels1
~……啊，在这儿。我刚才还担心把它弄丢了。~
DO ~SetGlobal("FHKelsTalk","GLOBAL",1)~
== BFHNAT
~嗯？~
== BJ#KLSY
~哦，只是我的一本笔记。我不觉得里面写的东西有多了不起，可丢了我会可惜。~
== BFHNAT
~它挺好看的。~
== BJ#KLSY
~是……我现在记不得是从哪儿弄来的，可它跟着我有一阵了。从我离家之前就有了。~
== BFHNAT
~你想象得到自己回那儿去吗？我是说，家。~
== BJ#KLSY
~我不知道——我没真想过。我是说，我们现在跟着<CHARNAME>，对吧？~
== BFHNAT
~就算你想念你在意的人，也不回去？~
== BJ#KLSY
~我想不会吧，就我跟我家现在这样。~
=
~可这其实不是在说我，对吧？~
== BFHNAT
~什么？~
== BJ#KLSY
~别在意。~
EXIT
