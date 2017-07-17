.class public Lcom/broadcom/bt/service/ProfileConfig;
.super Lcom/android/bluetooth/btservice/Config;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;
    }
.end annotation


# static fields
.field private static final INDEX_CLASS_NAME:I = 0x0

.field private static final INDEX_CONFIGURABLE:I = 0x5

.field private static final INDEX_DEFAULT_START:I = 0x4

.field private static final INDEX_DESCRIPTION:I = 0x2

.field private static final INDEX_DETAILED_FRAGMENT:I = 0x7

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_QUIET_MODE:I = 0x6

.field private static final INDEX_SUPPORTED:I = 0x3

.field private static final PROFILE_SERVICES:[[Ljava/lang/Object;

.field private static QUIET_MODE_PROFILES:[Ljava/lang/Class; = null

.field private static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field private static SUPPORTED_PROFILES:[Ljava/lang/Class; = null

.field private static SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg; = null

.field private static final TAG:Ljava/lang/String; = "BtSettings.ProfileConfig"

.field private static mContext:Landroid/content/Context;

.field private static mQuietModeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/Object;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/gatt/GattService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f07000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f07002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f07002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f07002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/hfp/HeadsetService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f07001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/a2dp/A2dpService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/high16 v2, 0x7f070000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f07001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f07001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f07001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/hid/HidService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f07001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f07001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/hdp/HealthService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070026

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/pan/PanService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/map/BluetoothMapService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f07000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/sap/SapService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f07002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f07002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f07002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/android/bluetooth/hid/HidDevService;

    aput-object v2, v1, v4

    const v2, 0x7f0a00bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a00bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f070006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f070033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f070034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f070035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/Class;

    sput-object v0, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    new-array v0, v4, [Ljava/lang/Class;

    sput-object v0, Lcom/broadcom/bt/service/ProfileConfig;->QUIET_MODE_PROFILES:[Ljava/lang/Class;

    new-array v0, v4, [Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    sput-object v0, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    sput-boolean v5, Lcom/broadcom/bt/service/ProfileConfig;->mQuietModeSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/Config;-><init>()V

    return-void
.end method

.method private static findProfileIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getSupportedProfileCfgs()[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;
    .locals 1

    sget-object v0, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    return-object v0
.end method

.method public static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 14

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    array-length v11, v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    array-length v11, v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    array-length v11, v11

    if-ge v4, v11, :cond_6

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x3

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-object v5, v11, v12

    check-cast v5, Ljava/lang/Class;

    const-string/jumbo v11, "BluetoothMapService"

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_BT_DisableMAP"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "BtSettings.ProfileConfig"

    const-string/jumbo v12, "Not support MAP profile on current network vendor"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v11, "BtSettings.ProfileConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Adding "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    invoke-direct {v0}, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x1

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_2
    if-nez v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iput-object v3, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mDisplayName:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_1
    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x2

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_3
    if-nez v2, :cond_5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iput-object v2, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mDescription:Ljava/lang/String;

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x4

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mDefaultStarted:Z

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x5

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mUserConfigurable:Z

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x6

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mRunInQuietMode:Z

    sget-object v11, Lcom/broadcom/bt/service/ProfileConfig;->PROFILE_SERVICES:[[Ljava/lang/Object;

    aget-object v11, v11, v4

    const/4 v12, 0x7

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/String;

    iput-object v11, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mSettingsActivityPkgClassName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const-string/jumbo v11, "BtSettings.ProfileConfig"

    const-string/jumbo v12, "Profile display name not found"

    invoke-static {v11, v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v9

    const-string/jumbo v11, "BtSettings.ProfileConfig"

    const-string/jumbo v12, "Profile display name not found"

    invoke-static {v11, v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v11, v10, [Ljava/lang/Class;

    sput-object v11, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    new-array v11, v10, [Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    sput-object v11, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v10, :cond_7

    sget-object v12, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v12, v4

    sget-object v12, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aput-object v11, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const v11, 0x7f070017

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/broadcom/bt/service/ProfileConfig;->mQuietModeSupported:Z

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->initSettings()V

    return-void
.end method

.method private static initSettings()V
    .locals 5

    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "BtSettings.ProfileConfig"

    const-string/jumbo v4, "*********Initializing Bluetooth Profile Settings*******"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v0, v3, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v3, v0, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mDefaultStarted:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static isConfigurableProfile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mUserConfigurable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isDefaultStartedProfile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mDefaultStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isProfileConfiguredEnabled(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/broadcom/bt/service/ProfileConfig;->findProfileIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    return v4

    :cond_0
    sget-object v5, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v5, "BtSettings.ProfileConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getProfileSaveSetting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bt_svcst_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "BtSettings.ProfileConfig"

    const-string/jumbo v5, "Unable to read settings"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v4
.end method

.method public static isQuietModeProfile(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/broadcom/bt/service/ProfileConfig;->mQuietModeSupported:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/broadcom/bt/service/ProfileConfig;->SUPPORTED_PROFILES_CFG:[Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;->mRunInQuietMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static saveProfileSetting(Ljava/lang/String;Z)V
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/broadcom/bt/service/ProfileConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/broadcom/bt/service/ProfileConfig;->findProfileIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v2, "BtSettings.ProfileConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Profile not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public isProfileSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/broadcom/bt/service/ProfileConfig;->findProfileIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
