.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;
.super Ljava/lang/Object;
.source "NearbyUtils.java"


# static fields
.field private static final FeatureUseNearbyEnabled:Z

.field private static final KEY_NEARBY_DOWNLOAD:Ljava/lang/String; = "NearbyDownloadTo"

.field private static final MEGA_BYTE:J = 0x40000000L

.field private static final ROTATION_PARAMETER_KEY:Ljava/lang/String; = "rtt="

.field private static final TAG:Ljava/lang/String; = "NearbyUtils"

.field private static alreadtInitNearbyFramework:Z

.field private static smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearby:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->FeatureUseNearbyEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->alreadtInitNearbyFramework:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static deletePreviousCache(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NearbyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deletePreviousCaches(Landroid/content/Context;)V
    .locals 5

    sget-boolean v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->FeatureUseNearbyEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "NearbyUtils"

    const-string/jumbo v4, "clear nearby caches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "NearbyUtils"

    const-string/jumbo v4, "external cache dir is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils$1;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils$1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "NearbyUtils"

    const-string/jumbo v4, "previousCaches are not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getAvailableStorageInByte(Ljava/lang/String;)J
    .locals 12

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v8, v7

    mul-long v0, v2, v8

    :goto_0
    return-wide v0

    :catch_0
    move-exception v4

    const-string/jumbo v7, "NearbyUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAvailableStorageInByte : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDownloadDir(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NearbyDownloadTo"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientationValue(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    const-string/jumbo v3, "rtt="

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NearbyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStorageAlertDialog(Landroid/content/Context;J)Landroid/app/AlertDialog;
    .locals 9

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, v4, v6

    const v3, 0x7f0a016f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0131

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static getStorageShortageInByte(Landroid/content/Context;Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getDownloadDir(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getAvailableStorageInByte(Ljava/lang/String;)J

    move-result-wide v0

    const-string/jumbo v6, "NearbyUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storage available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "NearbyUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bytes to download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v6, v2, v0

    return-wide v6
.end method

.method public static isDeviceRemoved(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevice(Ljava/lang/String;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isNearbyPlayable(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static scanForNearbyPlayerDevices()V
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "NearbyUtils"

    const-string/jumbo v2, "nearby context not exists, ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->showToastForScanningPlayerDevices()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refresh()V

    goto :goto_0
.end method

.method public static scanForNearbyProviderDevices(Landroid/app/Activity;)V
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyDeviceSet()Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->showToastForScanningProviderDevices(Landroid/app/Activity;)V

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refresh()V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/DataManager;)V
    .locals 2

    const-string/jumbo v1, "nearby"

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    sput-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static showDeviceRemovedDialog(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->showDmsDisconnectedDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startNearbyFramework(Lcom/sec/android/gallery3d/data/DataManager;)V
    .locals 3

    sget-boolean v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->FeatureUseNearbyEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->alreadtInitNearbyFramework:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NearbyUtils"

    const-string/jumbo v2, "already initialized Nearby framework. Skip init."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->alreadtInitNearbyFramework:Z

    const-string/jumbo v1, "nearby"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    sput-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->smNearbySource:Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->startAllShareFrameworkService()V

    goto :goto_0
.end method

.method public static stopNearbyFramework(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 12

    const-string/jumbo v8, "NearbyUtils"

    const-string/jumbo v9, "stop nearby framework"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->FeatureUseNearbyEnabled:Z

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    const-string/jumbo v8, "nearby"

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-nez v7, :cond_1

    const-string/jumbo v8, "NearbyUtils"

    const-string/jumbo v9, "NearbySource instance is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v8, "NearbyUtils"

    const-string/jumbo v9, "NearbyContext instance is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "NearbyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->alreadtInitNearbyFramework:Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v8, "NearbyUtils"

    const-string/jumbo v9, "NearbyClient instance is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->stopAllShareFrameworkService()V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Device;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/nearby/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v6, :cond_4

    const-string/jumbo v9, "NearbyUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Clear NearbyDevice instance. device id= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->update(Lcom/samsung/android/allshare/Device;)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->clearItems()V

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty()V

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
