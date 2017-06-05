.class public Lcom/android/keyguard/MSimCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimCarrierText$1;-><init>(Lcom/android/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/android/keyguard/MSimCarrierText;->initialize()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040931

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method


# virtual methods
.method public getNumberOfActiveSim()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getReadySimCount()I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "phone1_on"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aput v1, v2, v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "phone2_on"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aput v1, v2, v4

    move v1, v0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget v3, v2, v0

    if-eq v3, v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "MSimCarrierText"

    const-string/jumbo v2, "updateCarrierText()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const-string/jumbo v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "ABSENT"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "gsm.sim.state_1"

    const-string/jumbo v3, "ABSENT"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    const-string/jumbo v0, "MSimCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCarrierText: text = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    aget-object v3, p1, v0

    aget-object v4, p2, v0

    aget-object v8, p3, v0

    invoke-virtual {p0, v3, v4, v8}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    if-nez v3, :cond_8

    const-string/jumbo v3, ""

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v2, v9, v1

    aput-object v3, v9, v5

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v3, ""

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getNumberOfActiveSim()I

    move-result v4

    if-gt v4, v5, :cond_e

    const-string/jumbo v4, "ABSENT,READY"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_7
    :goto_5
    move-object v2, v3

    goto :goto_3

    :cond_8
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    const-string/jumbo v3, "PIN_REQUIRED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    const-string/jumbo v3, "Combination"

    const-string/jumbo v4, "Strawberry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    aget-object v3, p1, v5

    aget-object v4, p2, v5

    aget-object v8, p3, v5

    invoke-virtual {p0, v3, v4, v8}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_c
    const-string/jumbo v3, "PUK_REQUIRED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_6
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    aget-object v8, p3, v1

    invoke-virtual {p0, v3, v4, v8}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_d
    const-string/jumbo v3, "IMC"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_f
    if-eq v4, v10, :cond_13

    :cond_10
    :goto_7
    move v4, v1

    :goto_8
    if-nez v4, :cond_14

    new-array v4, v10, [I

    aput v1, v4, v1

    aput v1, v4, v5

    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "phone1_on"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aput v8, v4, v1

    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "phone2_on"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aput v8, v4, v5

    aget v8, v4, v1

    if-eqz v8, :cond_7

    aget v4, v4, v5

    if-nez v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_3

    :cond_11
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v8

    if-nez v8, :cond_f

    if-le v4, v5, :cond_10

    :cond_12
    move v4, v5

    goto :goto_8

    :cond_13
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getReadySimCount()I

    move-result v4

    if-eq v4, v10, :cond_12

    goto :goto_7

    :cond_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v2, v9, v1

    aput-object v3, v9, v5

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_15
    sget-object v2, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method
