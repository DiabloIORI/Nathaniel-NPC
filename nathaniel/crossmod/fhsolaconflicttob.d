APPEND FHN25J

IF
~Global("FHSola1","LOCALS",1)~ THEN BEGIN FHSola1
SAY ~呃，<CHARNAME>？能说句话吗……？~
IF ~~ THEN DO ~SetGlobal("FHSola1","LOCALS",2)~
REPLY ~当然。什么事？~ + FHSola1_what
++ ~说吧。你在想什么，纳撒尼尔？~ + FHSola1_what
++ ~我不想听，纳撒尼尔。我没兴趣。~ + FHSola1_notinterested
END

IF ~~ THEN BEGIN FHSola1_what
SAY ~嗯，我……~
=
~我注意到你跟索劳芬待在一起的时间很多。就这样。我知道那大概没什么，可是……你知道的。~
++ ~放松，纳撒尼尔。索劳芬只是我的朋友。~ + FHSola1_friend
++ ~我没注意到他用什么特别的方式看我。我觉得你大概是白担心了。~ + FHSola1_friend
++ ~哦！嗯，我会跟他提一提。我不想让他误会。~ + FHSola1_mention
++ ~嗯，他可比你有意思多了，我当然要跟他待在一起！~ + FHSola1_interesting
++ ~我喜欢跟他聊天，纳撒尼尔。这有错吗？~ + FHSola1_wrong
END

IF ~~ THEN BEGIN FHSola1_notinterested
SAY ~可是……哦，算了。~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_friend
SAY ~当然。我只是不想让他多想……他那么异族，他可能会——~
=
~可我们该继续走了。我不是想让这事闹大。~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_mention
SAY ~谢谢，<CHARNAME>。这下我心里一块石头落地了。可我们该继续走了。我不是想让这事闹大。~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_interesting
SAY ~你不必侮辱我，<CHARNAME>！我不介意你跟他待在一起，我只是不想让他多想！~
=
~听着。我不是想让这事闹大。我们走吧。~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_wrong
SAY ~不，不，当然不会。我只是不想让他想歪了，就是这样。~
=
~可我们该继续走了。我不是想让这事闹大。~
IF ~~ THEN EXIT
END

IF
~Global("FHSola2","LOCALS",1)~ THEN BEGIN FHSola2
SAY ~<CHARNAME>！那是怎么回事？~
IF ~~ THEN DO ~SetGlobal("FHSola2","LOCALS",2)~
REPLY ~什么是怎么回事？~ + FHSola2_what
++ ~哦，你说手的事。我……是……~ + FHSola2_yes
++ ~我知道，我也糊涂了！我打算说点什么……~ + FHSola2_say
++ ~没什么！我是说，当然没什么。~ + FHSola2_yes
++ ~纳撒尼尔？我……我很抱歉让你看见那个，可我早就想告诉你了……~ + FHSola2_niceish
++ ~「那个」是我跟索劳芬在亲近，纳撒尼尔。抱歉，之类的话。~ + FHSola2_nasty
END

IF ~~ THEN BEGIN FHSola2_what
SAY ~像那样碰他！听着，我确信你——你是好意，可他看你的样子，就好像……好像你我并不亲密。求你，能跟他谈谈这事吗？~
++ ~是，我也糊涂了。我会跟他提。~ + FHSola2_say
++ ~我确信没什么可担心的，纳撒尼尔。索劳芬是朋友。~ + FHSola2_friend
++ ~他是卓尔，纳撒尼尔。他不懂地表人的关系是怎么样的，所以他一定没意识到。~ + FHSola2_friend
++ ~纳撒尼尔……我知道我们很亲密，可索劳芬只是……嗯……~ + FHSola2_niceish
++ ~我喜欢跟他聊天，可若这让你不安，我会说点什么。~ + FHSola2_say
++ ~我不想这种事横在我们之间，纳撒尼尔。~ + FHSola2_friend
END

IF ~~ THEN BEGIN FHSola2_yes
SAY ~你就只有这些话说吗？<CHARNAME>——~
++ ~什么？听着，别这么疑心！索劳芬是朋友，仅此而已！~ + FHSola2_friend
++ ~对不起，纳撒尼尔。我只是不知该说什么……我不想你吃醋。~ + FHSola2_friend
++ ~索劳芬是卓尔，纳撒尼尔！他不懂地表人的关系是怎么样的！~ + FHSola2_friend
++ ~不，不是那样。我喜欢跟他聊天，也喜欢碰他！~ + FHSola2_nasty
++ ~不，不只是这些。我……本来不想非告诉你不可，可我喜欢索劳芬……非常喜欢。~ + FHSola2_niceish
END

IF ~~ THEN BEGIN FHSola2_say
SAY ~谢谢你。那会让我安心。~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola2_niceish
SAY ~什么？你是说……经历这么多之后，你就随便跟一个异族卓尔雄性好了？够了，<CHARNAME>。你一直吊着我，我再也受不了了！~
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN FHSola2_nasty
SAY ~哦，我明白了。所以我们做的一切不过是场消遣，等你找到更好的。你就随便跟一个异族卓尔雄性好了。够了，<CHARNAME>。你一直吊着我，我受不了！~
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN FHSola2_friend
SAY ~行，可你若能跟他说点什么，我还是会很感激。我是你的，<CHARNAME>，我希望能指望得上你。~
IF ~~ THEN EXIT
END

IF
~Global("FHSola3","LOCALS",1)~ THEN BEGIN FHSola3
SAY ~我觉得我再也受不了了。我把一切都给了你。现在你要把那些全摔在我脸上，还带着那个精灵到处显摆？我走了，<CHARNAME>。我不想待在你身边。~
IF ~~ THEN DO ~SetGlobal("FHSola3","LOCALS",3)
SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END
END
