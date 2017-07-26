.class public Lcom/android/services/telephony/DisconnectCauseUtil;
.super Ljava/lang/Object;
.source "DisconnectCauseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallFailedString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v1

    :sswitch_0
    const v2, 0x7f0d0a99

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v2, 0x7f0d0a9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0d0a9b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v2, 0x7f0d0a9c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v2, 0x7f0d0a9d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v2, 0x7f0d0a9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v2, 0x7f0d0a9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v2, 0x7f0d0aa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v2, 0x7f0d0aa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const v2, 0x7f0d0aa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const v2, 0x7f0d0aa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    const v2, 0x7f0d0aa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const v2, 0x7f0d0aa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const v2, 0x7f0d0aa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const v2, 0x7f0d0aa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    const v2, 0x7f0d0aa8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    const v2, 0x7f0d0aa9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    const v2, 0x7f0d0aaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    const v2, 0x7f0d0aab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    const v2, 0x7f0d0aac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    const v2, 0x7f0d0aad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    const v2, 0x7f0d0aae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    const v2, 0x7f0d0aaf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    const v2, 0x7f0d0ab0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    const v2, 0x7f0d0ab1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    const v2, 0x7f0d0ab2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    const v2, 0x7f0d0ab3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    const v2, 0x7f0d0ab4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    const v2, 0x7f0d0ab5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    const v2, 0x7f0d0ab6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    const v2, 0x7f0d0ab7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    const v2, 0x7f0d0ab8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    const v2, 0x7f0d0ab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_21
    const v2, 0x7f0d0aba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_22
    const v2, 0x7f0d0abb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_23
    const v2, 0x7f0d0abc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_24
    const v2, 0x7f0d0abd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_25
    const v2, 0x7f0d0abe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_26
    const v2, 0x7f0d0abf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_27
    const v2, 0x7f0d0ac0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_28
    const v2, 0x7f0d0ac1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_29
    const v2, 0x7f0d0ac2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2a
    const v2, 0x7f0d0ac3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2b
    const v2, 0x7f0d0ac4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2c
    const v2, 0x7f0d0ac5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2d
    const v2, 0x7f0d0ac6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2e
    const v2, 0x7f0d0ac7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2f
    const v2, 0x7f0d0ac8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_30
    const v2, 0x7f0d0ac9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_5
        0x64 -> :sswitch_7
        0xca -> :sswitch_0
        0xcb -> :sswitch_1
        0xcc -> :sswitch_2
        0xcd -> :sswitch_3
        0xce -> :sswitch_6
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_9
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_b
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_d
        0xd5 -> :sswitch_e
        0xd6 -> :sswitch_f
        0xd7 -> :sswitch_10
        0xd8 -> :sswitch_11
        0xd9 -> :sswitch_12
        0xda -> :sswitch_13
        0xdb -> :sswitch_14
        0xdc -> :sswitch_15
        0xdd -> :sswitch_16
        0xde -> :sswitch_17
        0xdf -> :sswitch_18
        0xe0 -> :sswitch_19
        0xe1 -> :sswitch_1a
        0xe2 -> :sswitch_1b
        0xe3 -> :sswitch_1c
        0xe4 -> :sswitch_1d
        0xe5 -> :sswitch_1e
        0xe6 -> :sswitch_1f
        0xe7 -> :sswitch_20
        0xe8 -> :sswitch_21
        0xe9 -> :sswitch_22
        0xea -> :sswitch_23
        0xeb -> :sswitch_24
        0xec -> :sswitch_25
        0xed -> :sswitch_26
        0xee -> :sswitch_27
        0xef -> :sswitch_28
        0xf0 -> :sswitch_29
        0xf1 -> :sswitch_2a
        0xf2 -> :sswitch_2b
        0xf3 -> :sswitch_2c
        0xf4 -> :sswitch_2d
        0xf5 -> :sswitch_2e
        0xf6 -> :sswitch_2f
        0xf7 -> :sswitch_30
    .end sparse-switch
.end method

.method public static toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    return-object v0
.end method

.method public static toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;
    .locals 7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-static {p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseCode(I)I

    move-result v1

    invoke-static {v6, p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseLabel(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v6, p0, p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseTone(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static toTelecomDisconnectCauseCode(I)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DisconnectCauseUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toTelecomDisconnectCauseCode() - telephonyDisconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "DisconnectCauseUtil.toTelecomDisconnectCauseCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized Telephony DisconnectCause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :sswitch_0
    const/4 v0, 0x2

    return v0

    :sswitch_1
    const/4 v0, 0x3

    return v0

    :sswitch_2
    const/4 v0, 0x4

    return v0

    :sswitch_3
    const/4 v0, 0x5

    return v0

    :sswitch_4
    const/4 v0, 0x6

    return v0

    :sswitch_5
    const/4 v0, 0x7

    return v0

    :sswitch_6
    const/16 v0, 0x8

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    :sswitch_8
    const/16 v0, 0x9

    return v0

    :sswitch_9
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_9
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_4
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_6
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1a -> :sswitch_7
        0x1b -> :sswitch_7
        0x1c -> :sswitch_7
        0x1d -> :sswitch_7
        0x1e -> :sswitch_7
        0x1f -> :sswitch_7
        0x20 -> :sswitch_7
        0x21 -> :sswitch_7
        0x22 -> :sswitch_6
        0x23 -> :sswitch_6
        0x24 -> :sswitch_7
        0x25 -> :sswitch_6
        0x26 -> :sswitch_7
        0x27 -> :sswitch_8
        0x28 -> :sswitch_7
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2b -> :sswitch_7
        0x2c -> :sswitch_2
        0x2d -> :sswitch_8
        0x31 -> :sswitch_7
        0x32 -> :sswitch_6
        0x65 -> :sswitch_1
        0x67 -> :sswitch_6
        0xe3 -> :sswitch_7
        0xf8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toTelecomDisconnectCauseDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const v1, 0x7f0d04c7

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "disconnect_cause_description"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0, p2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->toTelecomDisconnectCauseDescription(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    return-object v1

    :pswitch_1
    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v1

    const-string/jumbo v2, "callFailed_cb_enabled"

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0d0d16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0d0238

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0d023d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v1, 0x7f0d023e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v1

    const-string/jumbo v2, "callFailed_dsac_restricted_normal"

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string/jumbo v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v1

    const-string/jumbo v2, "callFailed_dsac_restricted_normal"

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v1, 0x7f0d04c8

    invoke-static {p2, v1}, Lcom/android/services/telephony/operator/OperatorUtils;->getOutgoingFailResId(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const v1, 0x7f0d0242

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
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
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_b
    .end packed-switch
.end method

.method private static toTelecomDisconnectCauseLabel(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    const-string/jumbo v2, "DisconnectCauseUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toTelecomDisconnectCauseLabel() - telephonyDisconnectCause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "enable_detail_call_end_reason"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->getCallFailedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    const-string/jumbo v2, ""

    :goto_1
    return-object v2

    :sswitch_0
    const v2, 0x7f0d022b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isTurVodaSIM()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isTurTTKSIM()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "DisconnectCauseUtil"

    const-string/jumbo v3, "toTelecomDisconnectCauseLabel() -case of tur usim, display call ended"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const v2, 0x7f0d022c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0d022d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    const v2, 0x7f0d022e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    const v2, 0x7f0d022f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    const v2, 0x7f0d0230

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    const v2, 0x7f0d0232

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_7
    const v2, 0x7f0d0231

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_8
    const v2, 0x7f0d0233

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_9
    const v2, 0x7f0d0234

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_a
    const v2, 0x7f0d0235

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_b
    const v2, 0x7f0d0236

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_c
    const v2, 0x7f0d081c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_d
    const v2, 0x7f0d0240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isOutgoingCSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x103012b

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0d06a6

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isTurVodaSIM()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d0320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_d
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_5
        0xb -> :sswitch_7
        0xc -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_c
        0x13 -> :sswitch_b
        0x19 -> :sswitch_d
        0x1b -> :sswitch_8
        0x24 -> :sswitch_e
        0xce -> :sswitch_f
    .end sparse-switch
.end method

.method private static toTelecomDisconnectCauseTone(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/16 v0, 0x11

    return v0

    :sswitch_1
    const/16 v0, 0x12

    return v0

    :sswitch_2
    const/16 v0, 0x26

    return v0

    :sswitch_3
    const/16 v0, 0x25

    return v0

    :sswitch_4
    const/16 v0, 0x5f

    return v0

    :sswitch_5
    const/16 v0, 0x15

    return v0

    :sswitch_6
    const/16 v0, 0x1b

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x12 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_4
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x24 -> :sswitch_6
        0x32 -> :sswitch_6
        0x64 -> :sswitch_6
        0xf8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static toTelecomDisconnectReason(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
