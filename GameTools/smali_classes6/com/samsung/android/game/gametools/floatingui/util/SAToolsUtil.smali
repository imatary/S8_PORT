.class public Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;
.super Ljava/lang/Object;
.source "SAToolsUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Floating SA"

.field public static mPrevScreen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Floating SA"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v3, "0006"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "4001"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "4011"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "4012"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "4013"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "4014"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "4015"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "4016"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "4017"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "4018"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "4019"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "4043"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "4021"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "4022"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "4023"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "4024"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "4025"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v3, "4026"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v3, "4031"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v3, "4041"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v3, "4042"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v3, "4010"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v3, "4032"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v3, "4044"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v1, "003"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "0006"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "400"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_2
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4001"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_2
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_3
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4011"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_4
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4012"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_4
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_5
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4013"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_6
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4014"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_7
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4015"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_8
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4016"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_9
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4017"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_a
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4018"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_a
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_b
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4019"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo v1, "401"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_c
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4043"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_d
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4021"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_e
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4022"

    invoke-static {v1, v2, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_f
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4023"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_10
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4024"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_11
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4025"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_11
    const-string/jumbo v1, "402"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_12
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4026"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    const-string/jumbo v1, "403"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_13
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4031"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    const-string/jumbo v1, "404"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_14
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4041"

    invoke-static {v1, v2, p1, p2, p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :pswitch_14
    const-string/jumbo v1, "404"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_15
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4042"

    invoke-static {v1, v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    const-string/jumbo v1, "405"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_16
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4010"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    const-string/jumbo v1, "405"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_17
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4032"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_17
    const-string/jumbo v1, "405"

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    :cond_18
    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    const-string/jumbo v2, "4044"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x168c06 -> :sswitch_0
        0x185d7d -> :sswitch_1
        0x185d9b -> :sswitch_15
        0x185d9c -> :sswitch_2
        0x185d9d -> :sswitch_3
        0x185d9e -> :sswitch_4
        0x185d9f -> :sswitch_5
        0x185da0 -> :sswitch_6
        0x185da1 -> :sswitch_7
        0x185da2 -> :sswitch_8
        0x185da3 -> :sswitch_9
        0x185da4 -> :sswitch_a
        0x185dbb -> :sswitch_c
        0x185dbc -> :sswitch_d
        0x185dbd -> :sswitch_e
        0x185dbe -> :sswitch_f
        0x185dbf -> :sswitch_10
        0x185dc0 -> :sswitch_11
        0x185dda -> :sswitch_12
        0x185ddb -> :sswitch_16
        0x185df9 -> :sswitch_13
        0x185dfa -> :sswitch_14
        0x185dfb -> :sswitch_b
        0x185dfc -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
