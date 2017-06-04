.class public Lcom/sec/android/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static final AOD_CONTENT_TO_SHOW_HOME_ONLY:I = 0x2

.field private static final AOD_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.app.aodservice.provider/settings/aod_content_to_show"

.field private static final COM_GOOGLE_ANDROID_APPS_PHOTOS_CONTENTPROVIDER:Ljava/lang/String; = "com.google.android.apps.photos.contentprovider"

.field private static DCIM_NAME:Ljava/lang/String; = null

.field private static DEVICE_NAME:Ljava/lang/String; = null

.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final EARTH_RADIUS_METERS:D = 6367000.0

.field private static final FEATURE_ENABLE_WECHAT_VIDEOSHOT_MODE:Z

.field private static final FEATURE_SUPPORT_CHROME_CAST:Z

.field private static final FEATURE_SUPPORT_KNOX_DESKTOP:Z

.field private static final FHD_HEIGHT_PIXELS:I = 0x780

.field public static final FHD_PIXELS:I = 0x1fa400

.field private static final HD_HEIGHT_PIXELS:I = 0x500

.field private static final IMAGE_CACHE_MIN_BYTES:I = 0x1400000

.field private static final KNOX_DESKTOP_BAR_HEIGHT:I = 0x30

.field private static final LOW_STORAGE_THRESHOLD:I = 0x1f400000

.field private static final MEDIATYPE_IMAGE:Ljava/lang/String; = "media_type=1"

.field private static final MEDIATYPE_VIDEO:Ljava/lang/String; = "media_type=3"

.field private static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final PANORAMA_RATIO:F = 2.7f

.field public static final PERFORMANCE:Ljava/lang/String; = "Gallery_Performance"

.field private static final QVGA_PIXELS:I = 0x12c00

.field private static final RAD_PER_DEG:D = 0.017453292519943295

.field private static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field private static SDCARD_NAME:Ljava/lang/String; = null

.field private static final SIDESYNC_KMS_SINK_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.sidesync.kms.sink.service.SideSyncServerService"

.field private static final SIDESYNC_KMS_SOURCE_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.sidesync.kms.source.service.SideSyncService"

.field private static final SIDESYNC_SETTING_PRESENTATION_KEY:Ljava/lang/String; = "sidesync_source_presentation"

.field private static final SIDESYNC_SETTING_PRESENTATION_VALUE_OFF:I = 0x0

.field private static final SPLITTER:Ljava/lang/String; = "/"

.field private static final TABLET_MULTIWINDOWBAR_HEIGHT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field public static final VIBRATOR_VALUE:I = 0xc

.field private static final WQHD_HEIGHT_PIXELS:I = 0xa00

.field private static final WQHD_PIXELS:I = 0x384000

.field private static final WVGA_PIXELS:I = 0x5dc00

.field private static mAlbumNumberBuffer:Ljava/lang/StringBuffer; = null

.field private static mDetails_hms:Ljava/lang/String; = null

.field private static mDetails_ms:Ljava/lang/String; = null

.field private static mGalleryId:Ljava/lang/String; = null

.field private static mParenthesis:[Ljava/lang/String; = null

.field public static final qHD_PIXELS:I = 0x7e900

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static sDisplayLongSideSize:I

.field private static sDisplayPixels:I

.field private static sDisplayShortSideSize:I

.field public static final sLockForAutoAdjust:Ljava/lang/Object;

.field private static sPixelDensity:F

.field private static sRealScreenSize:Landroid/graphics/Point;

.field private static sStatusBarHeight:I

.field private static volatile sWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_ENABLE_WECHAT_VIDEOSHOT_MODE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportChromeCast:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_SUPPORT_CHROME_CAST:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_SUPPORT_KNOX_DESKTOP:Z

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayLongSideSize:I

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayShortSideSize:I

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    sput-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->sRealScreenSize:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sLockForAutoAdjust:Ljava/lang/Object;

    sput-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_ms:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_hms:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->mGalleryId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RemoveAlphaToRGBArray(I)[F
    .locals 8

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v7

    sub-float v1, v6, v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v6, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v0

    mul-float v5, v6, v1

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v0

    mul-float v5, v6, v1

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v0

    mul-float v5, v6, v1

    add-float/2addr v4, v5

    aput v4, v2, v3

    return-object v2
.end method

.method private static accurateDistanceMeters(DDDD)D
    .locals 14

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static addUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    move-object v0, p0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static allowDownloadBySettings(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "setting_wifi_only"

    invoke-static {p0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sWarned:Z

    const-string/jumbo v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static checkAODShowHomeOnly(Landroid/app/Activity;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.android.app.aodservice.provider/settings/aod_content_to_show"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v0

    move-object v7, v0

    :goto_1
    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    move-object v7, v0

    goto :goto_1
.end method

.method public static checkGoogleUriImage(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGooglePhoto(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/ACTUAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "/ACTUAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static checkLowStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z
    .locals 12

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExternalStorageFreeSize()J

    move-result-wide v4

    const-wide/32 v8, 0x1400000

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ImageCacheService;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ImageCacheService;->getImageDiskCacheMaxBytes()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ImageCacheService;->getCurrentDiskCacheSize()J

    move-result-wide v10

    sub-long v2, v8, v10

    cmp-long v7, v4, v2

    if-gez v7, :cond_1

    const-string/jumbo v7, "GalleryUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "context = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / checkLowStorage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x400

    div-long v10, v4, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "GalleryUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkLowStorage() for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static checkLowStorageMode()Z
    .locals 14

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    sget-object v9, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v12

    mul-long v4, v10, v12

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v12

    mul-long v6, v10, v12

    const-wide/16 v10, 0xa

    div-long v2, v6, v10

    const-wide/32 v10, 0x1f400000

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v9, v2, v4

    if-lez v9, :cond_0

    const-string/jumbo v9, "GalleryUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " checkLowStorage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v4, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " total "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " lowStorageThreshold "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v2, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "GalleryUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkLowStorageMode() for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 6

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    div-float v0, v3, v1

    const/4 v4, 0x0

    mul-float v5, v0, v2

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public static checkNeedToUpdateApk(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->checkAvailablityOfUpdate()V

    return-void
.end method

.method public static checkUseSDCard(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/StorageManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/StorageManagerFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/StorageManagerInterface;

    invoke-interface {v1, p0}, Lcom/sec/samsung/gallery/lib/libinterface/StorageManagerInterface;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v2

    return v2
.end method

.method public static convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-byte v0, v3

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static convertToMediaProviderUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "mediaprovider_uri"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "GalleryUtils"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    move-object v0, v10

    goto :goto_1
.end method

.method public static cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->cpuScrollBoostRelease()V

    return-void
.end method

.method public static cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->cpuScrollBoostStart()V

    return-void
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteData(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x7

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x3

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    return v1

    :cond_3
    const-string/jumbo v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x3

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static dimLocationObj(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1

    int-to-float v0, p0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12

    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    :goto_0
    return-wide v8

    :cond_1
    sub-double v2, p0, p4

    sub-double v4, p2, p6

    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v0

    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    div-int/lit16 v1, p1, 0xe10

    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    if-nez v1, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_ms:Ljava/lang/String;

    if-nez v4, :cond_0

    const v4, 0x7f0a0117

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_ms:Ljava/lang/String;

    :cond_0
    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_ms:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_hms:Ljava/lang/String;

    if-nez v4, :cond_2

    const v4, 0x7f0a085e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_hms:Ljava/lang/String;

    :cond_2
    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mDetails_hms:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateQueryPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, p1

    :goto_0
    if-lez v2, :cond_0

    const-string/jumbo v4, "?, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeLastCommaFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isShowingTab(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020049

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020046

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isShowingTab(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f02004a

    goto :goto_0

    :cond_2
    const v0, 0x7f020048

    goto :goto_0
.end method

.method public static getActionBarBackgroundRscIDWithTab(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f020046

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020048

    goto :goto_0

    :cond_1
    const v0, 0x7f020049

    goto :goto_0
.end method

.method public static getActionBarSize(Landroid/content/Context;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getAlbumNumber(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mAlbumNumberBuffer:Ljava/lang/StringBuffer;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mAlbumNumberBuffer:Ljava/lang/StringBuffer;

    const v4, 0x7f0a003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    array-length v4, v4

    if-eq v4, v6, :cond_0

    if-eqz p2, :cond_3

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, " ("

    aput-object v5, v4, v7

    const-string/jumbo v5, ")"

    aput-object v5, v4, v8

    :goto_0
    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    :cond_0
    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mAlbumNumberBuffer:Ljava/lang/StringBuffer;

    sget-object v5, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->mAlbumNumberBuffer:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    if-nez v4, :cond_2

    if-eqz p2, :cond_4

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, " ("

    aput-object v5, v4, v7

    const-string/jumbo v5, ")"

    aput-object v5, v4, v8

    :goto_1
    sput-object v4, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->mParenthesis:[Ljava/lang/String;

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    int-to-long v2, p1

    const-string/jumbo v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "("

    aput-object v5, v4, v7

    const-string/jumbo v5, ")"

    aput-object v5, v4, v8

    goto :goto_0

    :cond_4
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "("

    aput-object v5, v4, v7

    const-string/jumbo v5, ")"

    aput-object v5, v4, v8

    goto :goto_1
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-char v0, v5, v4

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getDCIMName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->DCIM_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/16 v3, 0x20

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x181

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x141

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getDisplayDensity()F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getDisplayLongSideSize()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayLongSideSize:I

    return v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getDisplayPixels(Landroid/content/Context;)I
    .locals 3

    sget v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v2

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    sget v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    goto :goto_0
.end method

.method public static getDisplayShortSideSize()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayShortSideSize:I

    return v0
.end method

.method public static getDisplayWidth(Z)I
    .locals 1

    if-eqz p0, :cond_0

    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayShortSideSize:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayLongSideSize:I

    goto :goto_0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "GalleryUtils"

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    new-instance v3, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v3, p0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sget v6, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v6

    long-to-int v4, v6

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "GalleryUtils"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v6, "GalleryUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getExifOrientation(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    sparse-switch p0, :sswitch_data_0

    :try_start_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AssertionError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getExternalStorageFreeSize()J
    .locals 8

    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long v0, v4, v6

    return-wide v0
.end method

.method public static getFWActionBarBtnBG(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101039c

    aput v3, v0, v4

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method public static getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 7

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v4, p0, Landroid/graphics/RectF;->left:F

    int-to-float v6, p1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float v6, p2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/RectF;->right:F

    int-to-float v6, p1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    if-gez v4, :cond_3

    move v4, v5

    :goto_1
    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    if-gez v4, :cond_4

    :goto_2
    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_5

    :goto_3
    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    if-le v4, p2, :cond_6

    :goto_4
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v3, v2, :cond_7

    sub-int v4, v3, v2

    div-int/lit8 v1, v4, 0x2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_4
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, v2

    goto :goto_2

    :cond_5
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int p1, v4, v3

    goto :goto_3

    :cond_6
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int p2, v4, v2

    goto :goto_4

    :cond_7
    if-ge v3, v2, :cond_1

    sub-int v4, v2, v3

    div-int/lit8 v1, v4, 0x2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public static getFhdHeightPixels()I
    .locals 1

    const/16 v0, 0x780

    return v0
.end method

.method public static getFilePathFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "GalleryUtils"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "GalleryUtils"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static getFilteredSetPathTypeBit(Landroid/content/Intent;ZLandroid/content/Context;)I
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/16 v0, 0xf

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v0, 0xd

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_6

    const/16 v0, 0x21

    goto :goto_0

    :cond_6
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public static getGalleryID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->mGalleryId:Ljava/lang/String;

    return-object v0
.end method

.method public static getHhdHeightPixels()I
    .locals 1

    const/16 v0, 0x500

    return v0
.end method

.method public static getIndexFromMmsList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J)I"
        }
    .end annotation

    const-string/jumbo v2, "content://mms/part"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "mid"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "ct"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v2

    const-string/jumbo v5, "mid = ?"

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    if-eqz p2, :cond_0

    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    :cond_0
    const/4 v15, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "_id"

    const-string/jumbo v8, "GalleryUtils"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string/jumbo v2, "ct"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "image"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "video"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/part/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v2, v12, v10

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v15, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v15

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static getLargeTextSize(Landroid/content/Context;F)F
    .locals 3

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v1, v0

    :cond_0
    mul-float v2, p1, v1

    return v2
.end method

.method public static getLatestAlbumInfo(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "latest_update_album"

    invoke-static {p0, v1, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLcdRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 10

    const/4 v9, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const-string/jumbo v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v4, v9, v9, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v7, "GalleryUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "fa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ur"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "iw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, " \u200f\u200e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x181

    invoke-static {p0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x141

    invoke-static {p0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getMidFromMmsList(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "mid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "ct"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "GalleryUtils"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-wide v8

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020325

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f020321

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020324

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f020322

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getNewChannelCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "channel_new_exist_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNewChannelCoverFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "channel_cover_file_path"

    invoke-static {p0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sRealScreenSize:Landroid/graphics/Point;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sput-object v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sRealScreenSize:Landroid/graphics/Point;

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->sRealScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sRealScreenSize:Landroid/graphics/Point;

    return-object v1
.end method

.method public static getResizedIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v8, "GalleryUtils"

    const-string/jumbo v9, "info is null at getResizedIcon"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v7, v5, v4, v8}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_1
    move-object v8, v3

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    const-string/jumbo v8, "GalleryUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getRotationOfDisplay(Landroid/content/Context;)I
    .locals 2

    instance-of v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayRotation()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    goto :goto_0
.end method

.method public static getSDCardRemovedIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GalleryUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)Landroid/graphics/Point;
    .locals 4

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isScaleWindow()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x28

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZ)Landroid/graphics/Point;
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)Landroid/graphics/Point;

    move-result-object v0

    if-eqz p2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x30

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v0
.end method

.method private static getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->USER_OWNER:I

    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    instance-of v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getStatusBarHeightFromWindowInset()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setStatusBarHeightFromResource(Landroid/content/Context;)V

    :cond_2
    sget v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    goto :goto_0
.end method

.method public static getStatusBarUiVisibility(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    or-int/lit16 v0, p1, 0x2000

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p1, -0x2001

    goto :goto_0
.end method

.method public static getStorageName(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->SDCARD_NAME:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->DEVICE_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUpImageButton(Landroid/app/Activity;)Landroid/widget/ImageButton;
    .locals 12

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f0a02b2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getVideoDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getWqhdHeightPixels()I
    .locals 1

    const/16 v0, 0xa00

    return v0
.end method

.method public static hasSaveAbleSDCardStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    sget-object v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    const-wide/32 v6, 0x1400000

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const-string/jumbo v5, "GalleryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "context = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / checkLowStorage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a02eb

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GalleryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " hasSaveAbleSDCardStorage() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasSaveAbleStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    sget-object v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    const-wide/32 v6, 0x1400000

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const-string/jumbo v5, "GalleryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "context = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / checkLowStorage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a02eb

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GalleryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " hasSaveAbleStorage() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 10

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v5, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    cmp-long v5, v6, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GalleryUtils"

    const-string/jumbo v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static init(Landroid/util/DisplayMetrics;)V
    .locals 2

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayLongSideSize:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayShortSideSize:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v0

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sDisplayPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    :cond_0
    return-void
.end method

.method public static intColorToFloatARGBArray(I)[F
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->RemoveAlphaToRGBArray(I)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static intColorToFloatARGBArrayWithLastAlphaValue(I)[F
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->RemoveAlphaToRGBArray(I)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static isASoundSceneFileSelected(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isASoundSceneFileSelected()Z

    move-result v0

    return v0
.end method

.method private static isAuSlServiceOff(Landroid/hardware/display/DisplayManager;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/util/ReflectUtil;->isAuSLServiceRunning(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoAdjustedImage(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x8c0

    :try_start_0
    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x911

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x901

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAvailableAOD()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAODSupported:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsSetAsAODSupported:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromWallpaperPicker(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallWindow(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from-Camera"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "camera"

    const-string/jumbo v5, "startApp"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromLockscreen(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSecureKeyguardLocked(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChromeCastConnected(Landroid/content/Context;)Z
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x0

    sget-boolean v3, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_SUPPORT_CHROME_CAST:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "media_router"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    invoke-virtual {v1, v4}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->matchesTypes(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getDeviceAddress(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v3, "GalleryUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isChromeCastConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isConnetedSideSync(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isKMSRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPSSRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPSSRunningTablets(Landroid/content/Context;)Z

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

.method public static isContainsHiddenItems(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string/jumbo v3, "(media_type=1 OR media_type=3)) AND (is_hide=1"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "bucket_id"

    aput-object v0, v2, v10

    const-string/jumbo v0, "media_type"

    aput-object v0, v2, v9

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v9

    :goto_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v0

    :cond_0
    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isContainsHiddenItemsForSCloud(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v11

    :cond_0
    const/4 v8, 0x0

    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v0, "content"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.cmh"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "files"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "(media_type=1 OR media_type=3) AND (is_hide=1)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "bucket_id"

    aput-object v0, v2, v11

    const-string/jumbo v0, "media_type"

    aput-object v0, v2, v10

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v10

    :goto_1
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v11, v0

    goto :goto_0

    :cond_1
    move v0, v11

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isCoverMode(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "covermode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isDeskTopMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDocomoUx(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    invoke-static {p0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEDMSettingsChangeAllowed(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "false"

    aput-object v2, v0, v1

    const-string/jumbo v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v2, "isSettingsChangesAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEasyOrEmergencyMode()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEmergencyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

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

.method public static isEnableButtonBackgrounds(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEnhancedMessageUri(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "content://im/ft_thumbnail/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "content://im/ft_file/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public static isExist(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 12

    const/4 v3, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "GalleryUtils"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v8

    :try_start_4
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static isExistLocalContents(Landroid/content/Context;)Z
    .locals 10

    const/4 v7, 0x0

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=1 OR media_type=3) AND _data not like\'%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CLOUD_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " AND is_hide!=1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, " _id LIMIT 1"

    const-string/jumbo v6, "GalleryUtils"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v7

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "GalleryUtils"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isExploreByTouchEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    return v1
.end method

.method public static isExternalDisplayAvailable(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v4, "display"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v4, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const-string/jumbo v4, "GalleryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isExternalDisplayAvailable: displays.length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isHoverZoomModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v1

    if-le v4, v2, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSideSyncPresentationOff(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAuSlServiceOff(Landroid/hardware/display/DisplayManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    array-length v4, v1

    if-ne v4, v2, :cond_3

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSideSyncPresentationOff(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAuSlServiceOff(Landroid/hardware/display/DisplayManager;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static isFromGalleryWidget(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "photo-pick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isFromGifMaker(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "photo-pick-gifmaker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isFromGooglePhoto(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFromInsideGallery(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pick-from-gallery"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isFromLockscreen(Landroid/app/Activity;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "createdByLockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isFromWallpaperPicker(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "set-as-wallpaper"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isGalleryInForeground(Landroid/content/Context;)Z
    .locals 10

    const/4 v7, 0x0

    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v8, 0x64

    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v0, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :cond_0
    if-lez v4, :cond_1

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    :goto_0
    return v7

    :catch_0
    move-exception v3

    const-string/jumbo v8, "GalleryUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isHoverZoomModeOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    invoke-static {p0, v5, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    :goto_0
    const-string/jumbo v5, "FmMagnifier"

    invoke-static {p0, v5, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    :goto_1
    const-string/jumbo v5, "finger_magnifier"

    invoke-static {p0, v5, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    :goto_2
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIncludeRtlChar(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v0, v1, v3

    const/16 v5, 0x5d0

    if-lt v0, v5, :cond_1

    const/16 v5, 0x6ff

    if-gt v0, v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isJpeg(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "image/jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static isKMSRunning(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_2

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "com.sec.android.sidesync.kms.sink.service.SideSyncServerService"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.sec.android.sidesync.kms.source.service.SideSyncService"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isLandScapeModel(Landroid/content/Context;Landroid/util/DisplayMetrics;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v4, v5, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :pswitch_1
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_2

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLandscapeOrientation(Landroid/app/Activity;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryUtils"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLightStatusBar(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isMmsItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "content://mms/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isMmsUri(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "content://mms/part/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/factory/ConfigurationWrapper;->mobileKeyboardCovered(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/lib/factory/ConfigurationWrapper;->MOBILE_KEYBOARD_COVERED_YES:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f0a02b7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "GalleryUtils"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isNetworkWarningDialogNeeded(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNewMarkAlbum(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "is_new_item_present"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOnAOD(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAODEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkAODShowHomeOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverWQHD(I)Z
    .locals 1

    const/16 v0, 0xa00

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOwnerUser(Landroid/app/Activity;)Z
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    move-object v0, v1

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isOwnerUser(Landroid/app/Activity;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPSSRunning(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sidesync_source_connect"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private static isPSSRunningTablets(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_sink_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x200000

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v3

    int-to-float v1, v3

    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v3

    int-to-float v0, v3

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_0

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

.method private static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isQvga(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    const v1, 0x12c00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRaw(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "image/x-adobe-dng"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "image/x-canon-cr2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "image/x-nikon-nef"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "image/x-nikon-nrw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "image/x-sony-arw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "image/x-panasonic-rw2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "image/x-olympus-orf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "image/x-fuji-raf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "image/x-pentax-pef"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v3, "image/x-samsung-srw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_7
        -0x617ac9e4 -> :sswitch_9
        -0x5f082c57 -> :sswitch_4
        -0x54d6098a -> :sswitch_0
        -0x3ab85cc1 -> :sswitch_5
        -0x13d592a1 -> :sswitch_8
        0x52243d4a -> :sswitch_6
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_3
        0x7dd6e2bc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static isSDCardWeChatSightPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_ENABLE_WECHAT_VIDEOSHOT_MODE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isScaleWindow(Landroid/content/Context;)Z
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isScaleWindow()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isScaleWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSecureKeyguardLocked(Landroid/app/Activity;)Z
    .locals 2

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShowingTab(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sec/android/gallery3d/app/TabActivityState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/TabActivityState;->isTabEnabledActivityState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSideSyncPresentationOff(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sidesync_source_presentation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSortedByTimeAscendingOrder(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTooSmallForCrop(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUnablePickPrivateFiles(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "unable-pick-private-file"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isUnderWvga(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    const v1, 0x5dc00

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWQHD(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    const v1, 0x384000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeChatSightMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_ENABLE_WECHAT_VIDEOSHOT_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeChatSightPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->FEATURE_ENABLE_WECHAT_VIDEOSHOT_MODE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GalleryUtils"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isWvga(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    const v1, 0x5dc00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesTypes(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string/jumbo v1, "GalleryUtils"

    const-string/jumbo v2, "router is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_1

    if-nez p1, :cond_2

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static parseMimetypeFromHttpUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "image/jpeg"

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "image/png"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "image/gif"

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static playSoundKeyClick(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public static playSoundKeyClick(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static removeAlphaToInt(I)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v6

    sub-float v1, v5, v0

    const/4 v3, 0x4

    new-array v2, v3, [I

    const/16 v3, 0xff

    aput v3, v2, v7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    mul-float v4, v5, v1

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v8

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    mul-float v4, v5, v1

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v9

    const/4 v3, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float/2addr v4, v0

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    aget v3, v2, v7

    shl-int/lit8 v3, v3, 0x18

    aget v4, v2, v8

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget v4, v2, v9

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v2, v4

    or-int/2addr v3, v4

    return v3
.end method

.method private static removeLastCommaFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v1, p0

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static requestScanFile(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static resetStatusBarHeight()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    return-void
.end method

.method public static scanExternalStorage(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "*/*"

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static setContentInsetForCustomActionBar(Landroid/app/Activity;II)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_bar"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Toolbar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_0
    return-void
.end method

.method public static setDCIMName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/util/GalleryUtils;->DCIM_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setGalleryID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/util/GalleryUtils;->mGalleryId:Ljava/lang/String;

    return-void
.end method

.method public static setNavigationUpButtonColor(Landroid/app/Activity;I)V
    .locals 4

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static setRenderThread()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    return-void
.end method

.method public static setStatusBarHeightFromResource(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/gallery3d/util/GalleryUtils;->sStatusBarHeight:I

    goto :goto_0
.end method

.method public static setStorageName(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->SDCARD_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/GalleryUtils;->DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setTitleTextColor(Landroid/app/Activity;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "action_bar"

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method public static showSetAsActivity(Lcom/sec/android/gallery3d/data/MediaItem;ZLcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {p2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SET_AS_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "/"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "HighLightVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "event id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.app.highlightvideo.Analyse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "eventIds"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static unionList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static updateAgifAttribute(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const-wide/16 v2, 0x20

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->isAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_0
    return-void
.end method

.method public static updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V
    .locals 3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100120

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarUiVisibility(ZI)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
