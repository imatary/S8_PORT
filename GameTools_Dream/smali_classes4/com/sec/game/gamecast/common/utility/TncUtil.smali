.class public Lcom/sec/game/gamecast/common/utility/TncUtil;
.super Ljava/lang/Object;
.source "TncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLauncherTncContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x28

    new-array v2, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART1_LEGALPHASE_OPEN:I

    aput v8, v2, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_OPEN:I

    aput v8, v2, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_OPEN:I

    aput v8, v2, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v8, v2, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_OPEN:I

    aput v8, v2, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x27

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART39_LEGALPHASE_OPEN:I

    aput v9, v2, v8

    const/16 v8, 0x37

    new-array v4, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART1_LEGALPHASE_US:I

    aput v8, v4, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_US:I

    aput v8, v4, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_US:I

    aput v8, v4, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHASE_US:I

    aput v8, v4, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_US:I

    aput v8, v4, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_US:I

    aput v9, v4, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_US:I

    aput v9, v4, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x27

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART39_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x28

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART40_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x29

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART41_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART42_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART43_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART44_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART45_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART46_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x2f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART47_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x30

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART48_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x31

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART49_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x32

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART50_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x33

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART51_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x34

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART52_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x35

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART53_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x36

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART54_LEGALPHASE_US:I

    aput v9, v4, v8

    const/16 v8, 0x27

    new-array v3, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART1_LEGALPHASE_CHINA:I

    aput v8, v3, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_CHINA:I

    aput v8, v3, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_CHINA:I

    aput v8, v3, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v8, v3, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_CHINA:I

    aput v8, v3, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_CHINA:I

    aput v9, v3, v8

    const-string/jumbo v6, ""

    sget-object v8, Lcom/sec/game/gamecast/common/utility/TncUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$TncUtil$TNC_CATEGORY:[I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    :goto_0
    const/4 v0, 0x1

    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_1

    aget v5, v1, v7

    if-ne v0, v11, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const/4 v0, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_1
    move-object v1, v2

    goto :goto_0

    :pswitch_2
    move-object v1, v4

    goto :goto_0

    :pswitch_3
    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPrivacyContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0xa

    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x22

    new-array v3, v7, [I

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P7:I

    aput v7, v3, v6

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P8:I

    aput v7, v3, v10

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P9:I

    aput v7, v3, v9

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P10:I

    aput v7, v3, v11

    const/4 v7, 0x4

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P11:I

    aput v8, v3, v7

    const/4 v7, 0x5

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P12:I

    aput v8, v3, v7

    const/4 v7, 0x6

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P13:I

    aput v8, v3, v7

    const/4 v7, 0x7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P14:I

    aput v8, v3, v7

    const/16 v7, 0x8

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P15:I

    aput v8, v3, v7

    const/16 v7, 0x9

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P16:I

    aput v8, v3, v7

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P17:I

    aput v7, v3, v12

    const/16 v7, 0xb

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P18:I

    aput v8, v3, v7

    const/16 v7, 0xc

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P19:I

    aput v8, v3, v7

    const/16 v7, 0xd

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P20:I

    aput v8, v3, v7

    const/16 v7, 0xe

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P21:I

    aput v8, v3, v7

    const/16 v7, 0xf

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P22:I

    aput v8, v3, v7

    const/16 v7, 0x10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P23:I

    aput v8, v3, v7

    const/16 v7, 0x11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P24:I

    aput v8, v3, v7

    const/16 v7, 0x12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P25:I

    aput v8, v3, v7

    const/16 v7, 0x13

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P26:I

    aput v8, v3, v7

    const/16 v7, 0x14

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P27:I

    aput v8, v3, v7

    const/16 v7, 0x15

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P28:I

    aput v8, v3, v7

    const/16 v7, 0x16

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P29:I

    aput v8, v3, v7

    const/16 v7, 0x17

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P30:I

    aput v8, v3, v7

    const/16 v7, 0x18

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P31:I

    aput v8, v3, v7

    const/16 v7, 0x19

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P32:I

    aput v8, v3, v7

    const/16 v7, 0x1a

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P33:I

    aput v8, v3, v7

    const/16 v7, 0x1b

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P34:I

    aput v8, v3, v7

    const/16 v7, 0x1c

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P35:I

    aput v8, v3, v7

    const/16 v7, 0x1d

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P36:I

    aput v8, v3, v7

    const/16 v7, 0x1e

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P37:I

    aput v8, v3, v7

    const/16 v7, 0x1f

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P38:I

    aput v8, v3, v7

    const/16 v7, 0x20

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P39:I

    aput v8, v3, v7

    const/16 v7, 0x21

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_LEGALHPRASE_KOR_P40:I

    aput v8, v3, v7

    new-array v2, v11, [I

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_P1_LEGALHPRASE:I

    aput v7, v2, v6

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_P2_LEGALHPRASE:I

    aput v7, v2, v10

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GB_BODY_GAME_LAUNCHER_PRIVACY_POLICY_P3_LEGALHPRASE:I

    aput v7, v2, v9

    const-string/jumbo v5, ""

    sget-object v7, Lcom/sec/game/gamecast/common/utility/TncUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$TncUtil$TNC_CATEGORY:[I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move-object v1, v2

    :goto_0
    const/4 v0, 0x1

    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_1

    aget v4, v1, v6

    if-ne v0, v10, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v0, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;
    .locals 3

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceSellerCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->TNC_TYPE_ALL:Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    :goto_1
    return-object v1

    :sswitch_0
    const-string/jumbo v2, "LGT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "LUC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "LUO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "KTT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "KTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "KTO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "SKT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "SKC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "SKO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "KOO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "TMB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "AIO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "USC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v2, "XAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v2, "TMK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v2, "LRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v2, "ACG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v2, "CSP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v2, "XAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v2, "XAB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v2, "BRI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v2, "TGY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v2, "CHC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v2, "CHM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_0

    :pswitch_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->TNC_TYPE_KOREA:Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    goto/16 :goto_1

    :pswitch_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->TNC_TYPE_NORTH_AMERICA:Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->TNC_TYPE_CHINA:Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xfc65 -> :sswitch_13
        0xfd27 -> :sswitch_e
        0xfe81 -> :sswitch_a
        0x101f9 -> :sswitch_17
        0x1047e -> :sswitch_19
        0x10488 -> :sswitch_1a
        0x105e0 -> :sswitch_14
        0x1236b -> :sswitch_9
        0x123fa -> :sswitch_4
        0x12406 -> :sswitch_5
        0x1240b -> :sswitch_3
        0x12639 -> :sswitch_0
        0x1277b -> :sswitch_12
        0x127da -> :sswitch_1
        0x127e6 -> :sswitch_2
        0x140eb -> :sswitch_7
        0x140f7 -> :sswitch_8
        0x140fc -> :sswitch_6
        0x14195 -> :sswitch_c
        0x14446 -> :sswitch_18
        0x144e9 -> :sswitch_d
        0x144f2 -> :sswitch_11
        0x14965 -> :sswitch_f
        0x14e13 -> :sswitch_b
        0x15279 -> :sswitch_16
        0x1527a -> :sswitch_10
        0x15289 -> :sswitch_15
        0x24a738 -> :sswitch_1b
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getToolsDisclaimerContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x7

    new-array v4, v7, [I

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART1_LEGALPHRASE_OPEN:I

    aput v7, v4, v6

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v7, v4, v10

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART3_LEGALPHRASE_OPEN:I

    aput v7, v4, v9

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART4_LEGALPHRASE_OPEN:I

    aput v7, v4, v11

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART5_LEGALPHRASE_OPEN:I

    aput v7, v4, v12

    const/4 v7, 0x5

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART6_LEGALPHRASE_OPEN:I

    aput v8, v4, v7

    const/4 v7, 0x6

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART7_LEGALPHRASE_OPEN:I

    aput v8, v4, v7

    const/4 v7, 0x6

    new-array v5, v7, [I

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART1_LEGALPHASE_US:I

    aput v7, v5, v6

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHASE_US:I

    aput v7, v5, v10

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART3_LEGALPHASE_US:I

    aput v7, v5, v9

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART4_LEGALPHASE_US:I

    aput v7, v5, v11

    sget v7, Lcom/sec/game/gamecast/common/R$string;->LDS_GH__POP_GAME_TOOLS_DISCLAIMER_PART5_LEGALPHASE_US:I

    aput v7, v5, v12

    const/4 v7, 0x5

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART6_LEGALPHASE_US:I

    aput v8, v5, v7

    const-string/jumbo v2, ""

    sget-object v7, Lcom/sec/game/gamecast/common/utility/TncUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$TncUtil$TNC_CATEGORY:[I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move-object v3, v4

    :goto_0
    const/4 v0, 0x1

    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_1

    aget v1, v3, v6

    if-ne v0, v10, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v0, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    move-object v3, v5

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static getToolsPermissionContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/game/gamecast/common/utility/TncUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$TncUtil$TNC_CATEGORY:[I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget v0, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHASE_US:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static getTosContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x28

    new-array v4, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    aput v8, v4, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_OPEN:I

    aput v8, v4, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_OPEN:I

    aput v8, v4, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v8, v4, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_OPEN:I

    aput v8, v4, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x27

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART39_LEGALPHASE_OPEN:I

    aput v9, v4, v8

    const/16 v8, 0x37

    new-array v6, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    aput v8, v6, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_US:I

    aput v8, v6, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_US:I

    aput v8, v6, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHASE_US:I

    aput v8, v6, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_US:I

    aput v8, v6, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_US:I

    aput v9, v6, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_US:I

    aput v9, v6, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x27

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART39_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x28

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART40_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x29

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART41_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART42_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART43_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART44_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART45_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART46_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x2f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART47_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x30

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART48_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x31

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART49_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x32

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART50_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x33

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART51_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x34

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART52_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x35

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART53_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x36

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART54_LEGALPHASE_US:I

    aput v9, v6, v8

    const/16 v8, 0x27

    new-array v5, v8, [I

    sget v8, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    aput v8, v5, v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART2_LEGALPHASE_CHINA:I

    aput v8, v5, v11

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART3_LEGALPHASE_CHINA:I

    aput v8, v5, v10

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_TOOLS_DISCLAIMER_PART2_LEGALPHRASE_OPEN:I

    aput v8, v5, v12

    sget v8, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART4_LEGALPHASE_CHINA:I

    aput v8, v5, v13

    const/4 v8, 0x5

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART5_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/4 v8, 0x6

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART6_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/4 v8, 0x7

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART7_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x8

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART8_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x9

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART9_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xa

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART10_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xb

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART11_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xc

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART12_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xd

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART13_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xe

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART14_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0xf

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART15_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x10

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART16_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x11

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART17_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x12

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART18_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x13

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART19_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x14

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART20_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x15

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART21_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x16

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART22_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x17

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART23_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x18

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART24_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x19

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART25_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1a

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART26_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1b

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART27_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1c

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART28_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1d

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART29_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1e

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART30_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x1f

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART31_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x20

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART32_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x21

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART33_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x22

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART34_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x23

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART35_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x24

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART36_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x25

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART37_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const/16 v8, 0x26

    sget v9, Lcom/sec/game/gamecast/common/R$string;->LDS_GH_POP_GAME_LAUNCHER_TOS_PART38_LEGALPHASE_CHINA:I

    aput v9, v5, v8

    const-string/jumbo v2, ""

    sget-object v8, Lcom/sec/game/gamecast/common/utility/TncUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$TncUtil$TNC_CATEGORY:[I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTncCategory()Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/game/gamecast/common/utility/TncUtil$TNC_CATEGORY;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move-object v3, v4

    :goto_0
    const/4 v0, 0x1

    array-length v8, v3

    :goto_1
    if-ge v7, v8, :cond_1

    aget v1, v3, v7

    if-ne v0, v11, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v0, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_0
    move-object v3, v4

    goto :goto_0

    :pswitch_1
    move-object v3, v6

    goto :goto_0

    :pswitch_2
    move-object v3, v5

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
