.class public Lcom/android/bluetooth/pbap/BluetoothPbapConfig;
.super Ljava/lang/Object;
.source "BluetoothPbapConfig.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_VCARD_CFG:I = 0x7800

.field public static final USE_NAME_AND_NUMBER_FILTER:Z = true

.field public static final VERBOSE:Z

.field private static sIncludePhotosInVcard:Z

.field private static sUseProfileForOwnerVcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->DEBUG:Z

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->VERBOSE:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static includePhotosInVcard()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f07000c

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v2, 0x7f07000b

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapConfig"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapConfig"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static useProfileForOwnerVcard()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    return v0
.end method
