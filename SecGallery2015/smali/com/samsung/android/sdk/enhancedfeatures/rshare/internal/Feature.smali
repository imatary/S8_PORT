.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static sEnableRoundAvatar:Z

.field public static sEnableSettingPermissionCheck:Z

.field public static sFirstSmallChunkEnabled:Z

.field public static sMultipleDownloadEnabled:Z

.field private static sSupportAllDevices:Z

.field public static sTdkLogEnabled:Z

.field public static sUseDebugMode:Z

.field public static sUseMyOrs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sUseDebugMode:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sTdkLogEnabled:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sMultipleDownloadEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sFirstSmallChunkEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableSettingPermissionCheck:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sUseMyOrs:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableRoundAvatar:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sSupportAllDevices:Z

    return-void
.end method

.method public static getEnableDownloadProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSettingPermissionCheck()Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "feature_setting_permission_check"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableSettingPermissionCheck:Z

    goto :goto_0
.end method

.method public static getEnabledAutoEndMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnabledFirstSmallChunk()Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "feature_first_chunk_enabled"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sFirstSmallChunkEnabled:Z

    goto :goto_0
.end method

.method public static getEnabledMultiStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnabledTdkNanoId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static uploadSmallChunk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
