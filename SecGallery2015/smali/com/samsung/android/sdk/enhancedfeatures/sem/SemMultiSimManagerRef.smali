.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;
.super Ljava/lang/Object;
.source "SemMultiSimManagerRef.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static bInitSimSlotCountRef:Z

.field private static mContext:Landroid/content/Context;

.field private static mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

.field private static nSimSlotCountRef:I

.field private static sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

.field private static sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->nSimSlotCountRef:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->bInitSimSlotCountRef:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    return-object v0
.end method


# virtual methods
.method public getActiveSubIdList()[I
    .locals 5

    const-string/jumbo v3, "getActiveSubIdList"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_0
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    new-array v1, v3, [I

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDefaultSubId(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDefaultSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->semGetDefaultSubscriptionId()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->semGetDefaultSmsSubscriptionId()I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->semGetDefaultVoiceSubscriptionId()I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->semGetDefaultDataSubscriptionId()I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->semGetDefaultSubscriptionId()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLine1Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimOperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne p1, v4, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimOperator. sub id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->semGetSimOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getSimSlotCount()I
    .locals 2

    const-string/jumbo v0, "getSimSlotCount"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->bInitSimSlotCountRef:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->bInitSimSlotCountRef:Z

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->nSimSlotCountRef:I

    :cond_1
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->nSimSlotCountRef:I

    return v0
.end method

.method public getSimState(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSimState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->semGetSimState(I)I

    move-result v0

    return v0
.end method

.method public getSlotId(I)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubscriberId slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isNoSIM()Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "isNoSIM"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
