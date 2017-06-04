.class public Lcom/samsung/android/common/telephony/SecTelephonyManager;
.super Ljava/lang/Object;
.source "SecTelephonyManager.java"


# static fields
.field private static final DEFAULT_SUB_ID:I = 0x1

.field public static final SIM_SLOT1:I

.field public static instance:Lcom/samsung/android/common/telephony/SecTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/telephony/SecTelephonyManager;

    invoke-direct {v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/common/telephony/SecTelephonyManager;->instance:Lcom/samsung/android/common/telephony/SecTelephonyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSlotId(Landroid/content/Context;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0
.end method

.method private getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataSlotId(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getSlotId(Landroid/content/Context;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataState(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetDataState(I)I

    move-result v0

    return v0
.end method

.method public getDataSubId()I
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v6

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "android.telephony.TelephonyManager"

    const-string v6, "getGroupIdLevel1"

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/common/util/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v4, v1, v0}, Lcom/samsung/android/common/util/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method public getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlotCount(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimState(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSlotId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubId(Landroid/content/Context;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0
.end method

.method public getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniquePhoneType(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method
