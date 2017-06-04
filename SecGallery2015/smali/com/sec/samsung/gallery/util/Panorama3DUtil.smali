.class public Lcom/sec/samsung/gallery/util/Panorama3DUtil;
.super Ljava/lang/Object;
.source "Panorama3DUtil.java"


# static fields
.field private static final ACTION_VIEW_360_PHOTO:Ljava/lang/String; = "com.samsung.android.intent.action.VIEW_360_PHOTO"

.field public static final COLUMN_SPHERICAL_MOSAIC:Ljava/lang/String; = "spherical_mosaic"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.gallery3d.panorama360view.ResultApp"

.field private static final MAX_READ_LEN:I = 0x10000

.field private static final MORPHO_PANORAMA_DATA_KEY_STR:Ljava/lang/String; = "MPPA"

.field private static final MORPHO_PANORAMA_DATA_KEY_STR_LEN:I = 0x4

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d.panorama360view"

.field private static final TAG:Ljava/lang/String; = "Panorama3DUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check3DPanorama(Ljava/io/RandomAccessFile;)Z
    .locals 14

    const/4 v7, 0x0

    const/high16 v11, 0x10000

    :try_start_0
    new-array v1, v11, [B

    const-wide/16 v12, 0x2

    invoke-virtual {p0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    :goto_0
    if-ge v6, v8, :cond_3

    aget-byte v11, v1, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v1, v6

    const/16 v12, -0x17

    if-ne v11, v12, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v10, v11, 0xff

    shl-int/lit8 v11, v9, 0x8

    or-int v0, v11, v10

    add-int/lit8 v6, v6, 0x2

    add-int v11, v6, v0

    add-int/lit8 v11, v11, -0x2

    if-ge v11, v8, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v11, v0, -0x4

    if-ge v3, v11, :cond_0

    const/4 v11, 0x4

    new-array v4, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v1, v6, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v11, "MPPA"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    aget-byte v11, v1, v6

    const/16 v12, -0x20

    if-lt v11, v12, :cond_3

    aget-byte v11, v1, v6

    const/16 v12, -0x11

    if-le v11, v12, :cond_4

    :cond_3
    :goto_3
    return v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v10, v11, 0xff

    shl-int/lit8 v11, v9, 0x8

    or-int v0, v11, v10

    add-int/lit8 v11, v0, -0x2

    add-int/2addr v6, v11

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v11, "Panorama3DUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static check3DPanorama(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v2, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->check3DPanorama(Ljava/io/RandomAccessFile;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    :goto_0
    return v3

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v4, "Panorama3DUtil"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static getMediaItemContentUri(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->getImageContentUriFromFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public static is3DPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide v2, 0x4000000000L

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

.method public static launch3DPanorama(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    const-string/jumbo v3, "Panorama3DUtil"

    const-string/jumbo v4, "launch 3d panorama!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v3, "Panorama3DUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no arguments : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->is3DPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->check3DPanorama(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Panorama3DUtil"

    const-string/jumbo v4, "not 3d panorama item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.intent.action.VIEW_360_PHOTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.gallery3d.panorama360view"

    const-string/jumbo v4, "com.sec.android.gallery3d.panorama360view.ResultApp"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->getMediaItemContentUri(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v3, 0x7f0a0077

    invoke-static {p0, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
