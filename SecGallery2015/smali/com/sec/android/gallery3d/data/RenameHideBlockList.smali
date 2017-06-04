.class public Lcom/sec/android/gallery3d/data/RenameHideBlockList;
.super Ljava/lang/Object;
.source "RenameHideBlockList.java"


# static fields
.field private static final BLOCK_BUCKET_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->COLLAGE_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->PHOTO_EDITOR_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SCLOUD_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->BURSTSHOT_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->VIDEO_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_SCREENSHOT_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREEN_VIDEO_ALBUM_BUCKET_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->refreshSDCardBlockList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget-object v3, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v3, Lcom/sec/android/gallery3d/data/BucketHelper;->NCR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1
.end method

.method public static refreshSDCardBlockList()V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->BLOCK_BUCKET_LIST_FOR_SDCARD:Ljava/util/ArrayList;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
