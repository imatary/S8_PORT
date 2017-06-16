.class public Lcom/android/bluetooth/btservice/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final PROFILE_SERVICES:[Ljava/lang/Class;

.field private static final PROFILE_SERVICES_FLAG:[I

.field private static SUPPORTED_PROFILES:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "AdapterServiceConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/hid/HidService;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/hdp/HealthService;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/gatt/GattService;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/sap/SapService;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/bluetooth/pbapclient/PbapClientService;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-void

    :array_0
    .array-data 4
        0x7f070003
        0x7f070000
        0x7f070001
        0x7f070005
        0x7f070002
        0x7f070008
        0x7f07000a
        0x7f07000d
        0x7f070004
        0x7f070010
        0x7f070011
        0x7f070012
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-static {p0, v5}, Lcom/android/bluetooth/btservice/Config;->isProfileDisabled(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "AdapterServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Class;

    sput-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private static isProfileDisabled(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    const-class v8, Lcom/android/bluetooth/hfp/HeadsetService;

    if-ne p1, v8, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    const/4 v8, -0x1

    if-ne v4, v8, :cond_c

    const-string/jumbo v6, "AdapterServiceConfig"

    const-string/jumbo v8, "Could not find profile bit mask"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const-class v8, Lcom/android/bluetooth/a2dp/A2dpService;

    if-ne p1, v8, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const-class v8, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-ne p1, v8, :cond_3

    const/16 v4, 0xb

    goto :goto_0

    :cond_3
    const-class v8, Lcom/android/bluetooth/hid/HidService;

    if-ne p1, v8, :cond_4

    const/4 v4, 0x4

    goto :goto_0

    :cond_4
    const-class v8, Lcom/android/bluetooth/hdp/HealthService;

    if-ne p1, v8, :cond_5

    const/4 v4, 0x3

    goto :goto_0

    :cond_5
    const-class v8, Lcom/android/bluetooth/pan/PanService;

    if-ne p1, v8, :cond_6

    const/4 v4, 0x5

    goto :goto_0

    :cond_6
    const-class v8, Lcom/android/bluetooth/gatt/GattService;

    if-ne p1, v8, :cond_7

    const/4 v4, 0x7

    goto :goto_0

    :cond_7
    const-class v8, Lcom/android/bluetooth/map/BluetoothMapService;

    if-ne p1, v8, :cond_8

    const/16 v4, 0x9

    goto :goto_0

    :cond_8
    const-class v8, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-ne p1, v8, :cond_9

    const/16 v4, 0x10

    goto :goto_0

    :cond_9
    const-class v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-ne p1, v8, :cond_a

    const/16 v4, 0xc

    goto :goto_0

    :cond_a
    const-class v8, Lcom/android/bluetooth/sap/SapService;

    if-ne p1, v8, :cond_b

    const/16 v4, 0xa

    goto :goto_0

    :cond_b
    const-class v8, Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-ne p1, v8, :cond_0

    const/16 v4, 0x11

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "bluetooth_disabled_profiles"

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    shl-int v8, v6, v4

    int-to-long v2, v8

    and-long v8, v0, v2

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    :goto_1
    return v6

    :cond_d
    move v6, v7

    goto :goto_1
.end method
