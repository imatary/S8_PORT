.class public Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;
.super Ljava/lang/Object;
.source "CrossAppUtils.java"


# static fields
.field private static final CMH_CLOUD_SUPPORTED_VERSION:I = 0xbf1dc80

.field private static final CONTENT_SYNC_DATA_VERSION:I = 0x989680

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field private static final GALLERY_PKG_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field private static final HOVERING_SPENICON_PENSELECT:I = 0x15

.field private static final KEY:Ljava/lang/String; = "DisablingContentSync"

.field private static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field private static final PANORAMA_RATIO:F = 2.7f

.field private static SALES_CODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CrossAppUtils"

.field private static mDesktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

.field private static mDrmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

.field private static mFloatingFeatureInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

.field private static mHoveringIcon:I

.field private static mInstance:Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

.field private static mPrivateManagerInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

.field private static mSecretBoxPath:Ljava/lang/String;

.field private static mSpenInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

.field private static mUtilsInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;


# instance fields
.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSecretBoxPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSpenInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mFloatingFeatureInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mPrivateManagerInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mUtilsInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDesktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    move-result-object v0

    const-string v1, "ro.csc.sales_code"

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->getSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->SALES_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    move-result-object v0

    const-string v1, "ro.csc.country_code"

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->COUNTRY_CODE:Ljava/lang/String;

    return-void
.end method

.method public static getBuildVersion(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mUtilsInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->getBuildVersion()I

    move-result v0

    return v0
.end method

.method private getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "application/vnd.oma.drm.content"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ".avi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "video/mux/AVI"

    goto :goto_0

    :cond_2
    const-string v1, ".mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "video/mux/MKV"

    goto :goto_0

    :cond_3
    const-string v1, ".divx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "video/mux/DivX"

    goto :goto_0

    :cond_4
    const-string v1, ".pyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_0

    :cond_5
    const-string v1, ".pya"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_0

    :cond_6
    const-string v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "video/x-ms-wmv"

    goto :goto_0

    :cond_7
    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "audio/x-ms-wma"

    goto :goto_0

    :cond_8
    const-string v1, ".isma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "audio/isma"

    goto :goto_0

    :cond_9
    const-string v1, ".ismv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "video/ismv"

    goto :goto_0
.end method

.method public static getGalleryButtonIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x8fe

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->gallery_for_grace:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->gallery:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mInstance:Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mInstance:Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mInstance:Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    return-object v0
.end method

.method public static getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSecretBoxPath:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mPrivateManagerInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSecretBoxPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSecretBoxPath:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "CrossAppUtils"

    const-string v2, "Failed to get a secretBoxPath"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDesktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isGalleryAppInstalled(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.sec.android.gallery3d"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x2

    if-eq v6, v1, :cond_0

    const/4 v6, 0x3

    if-ne v6, v1, :cond_1

    :cond_0
    const-string v4, "CrossAppUtils"

    const-string v6, "com.sec.android.gallery3d is disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    :goto_0
    return v4

    :cond_1
    :try_start_1
    const-string v6, "com.sec.android.gallery3d"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v6, "CrossAppUtils"

    const-string v7, "com.sec.android.gallery3d is enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "CrossAppUtils"

    const-string v6, "com.sec.android.gallery3d is not installed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v4, "CrossAppUtils"

    const-string v6, "com.sec.android.gallery3d is disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "CrossAppUtils"

    const-string v6, "com.sec.android.gallery3d is disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move v4, v5

    goto :goto_0
.end method

.method public static isHoveringIconPenSelect()Z
    .locals 2

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKORFamily()Z
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->SALES_CODE:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->SALES_CODE:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->SALES_CODE:Ljava/lang/String;

    const-string v1, "LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->COUNTRY_CODE:Ljava/lang/String;

    const-string v1, "KOREA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNOS()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaImage(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v1, p1

    int-to-float v0, p0

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v4

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    cmpl-float v3, v1, v0

    if-lez v3, :cond_2

    div-float v3, v1, v0

    :goto_1
    const v4, 0x402ccccd    # 2.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    div-float v3, v0, v1

    goto :goto_1
.end method

.method public static isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isUltraSavingMode(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mUtilsInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private releaseDrm()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->releaseDrm(Landroid/drm/DrmManagerClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static setHoveringIconToDefault(Landroid/widget/GridView;Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "CrossAppUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoveringIconToDefault isHoverPenSelect ? [ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    const/16 v4, 0x15

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    if-ne v0, v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sput v1, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSpenInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->setIcon(Landroid/widget/GridView;Landroid/content/Context;I)V

    const-string v0, "CrossAppUtils"

    const-string v1, "setHoveringIconToDefault setPointerIcon to HOVERING_SPENICON_DEFAULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setHoveringIconToPenSelect(Landroid/widget/GridView;Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x15

    const-string v1, "CrossAppUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHoveringIconToPenSelect isHoverPenSelect ? [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    if-ne v0, v3, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sput v3, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mHoveringIcon:I

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSpenInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    invoke-virtual {v0, p0, p1, v3}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->setIcon(Landroid/widget/GridView;Landroid/content/Context;I)V

    const-string v0, "CrossAppUtils"

    const-string v1, "setHoveringIconToPenSelect setPointerIcon to HOVERING_PENSELECT_POINTER_01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static useCloudKeyInCMH(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const-string v2, "com.samsung.cmh"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xbf1dc80

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static useCloudSync()Z
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mFloatingFeatureInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    const-string v1, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_SCLOUD_PROVIDER_FOR_PICKER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private useOMADrmSkip()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isKORFamily()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->releaseDrm()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mSpenInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mFloatingFeatureInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mPrivateManagerInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mUtilsInstance:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDesktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->SALES_CODE:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->COUNTRY_CODE:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mInstance:Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    return-void
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useOMADrmSkip()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isTablet(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
