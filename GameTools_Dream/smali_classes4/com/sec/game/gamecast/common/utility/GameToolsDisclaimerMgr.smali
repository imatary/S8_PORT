.class public Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr;
.super Ljava/lang/Object;
.source "GameToolsDisclaimerMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisclaimerInfo(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;
    .locals 10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;

    invoke-direct {v2}, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;-><init>()V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceSellerCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x7

    iput v3, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mTotalCount:I

    iget v3, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mTotalCount:I

    new-array v1, v3, [I

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART1_LEGALPHRASE_OPEN:I

    aput v3, v1, v4

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v3, v1, v5

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART3_LEGALPHRASE_OPEN:I

    aput v3, v1, v6

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART4_LEGALPHRASE_OPEN:I

    aput v3, v1, v7

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART5_LEGALPHRASE_OPEN:I

    aput v3, v1, v8

    const/4 v3, 0x5

    sget v4, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART6_LEGALPHRASE_OPEN:I

    aput v4, v1, v3

    const/4 v3, 0x6

    sget v4, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART7_LEGALPHRASE_OPEN:I

    aput v4, v1, v3

    iput-object v1, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mDisclaimerIDs:[I

    :goto_1
    return-object v2

    :sswitch_0
    const-string/jumbo v9, "ATT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v9, "VZW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "SPR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "TMB"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v9, "AIO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v8

    goto :goto_0

    :sswitch_5
    const-string/jumbo v9, "USC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v9, "XAC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v9, "TMK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v9, "LRA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v9, "ACG"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v9, "CSP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v9, "XAB"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v9, "XAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :pswitch_0
    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mTotalCount:I

    iget v3, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mTotalCount:I

    new-array v1, v3, [I

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART1_LEGALPHASE_US:I

    aput v3, v1, v4

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHASE_US:I

    aput v3, v1, v5

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART3_LEGALPHASE_US:I

    aput v3, v1, v6

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART4_LEGALPHASE_US:I

    aput v3, v1, v7

    sget v3, Lcom/sec/game/gamecast/common/R$string;->LDS_GH__POP_GAME_TOOLS_DISCLAIMER_PART5_LEGALPHASE_US:I

    aput v3, v1, v8

    const/4 v3, 0x5

    sget v4, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART6_LEGALPHASE_US:I

    aput v4, v1, v3

    iput-object v1, v2, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mDisclaimerIDs:[I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfc65 -> :sswitch_9
        0xfd27 -> :sswitch_4
        0xfe81 -> :sswitch_0
        0x105e0 -> :sswitch_a
        0x1277b -> :sswitch_8
        0x14195 -> :sswitch_2
        0x144e9 -> :sswitch_3
        0x144f2 -> :sswitch_7
        0x14965 -> :sswitch_5
        0x14e13 -> :sswitch_1
        0x15279 -> :sswitch_b
        0x1527a -> :sswitch_6
        0x15289 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
