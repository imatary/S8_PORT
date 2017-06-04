.class final Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;
.super Ljava/lang/Object;
.source "GalleryNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->saveHiddenCoverFile(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$eventId:I

.field final synthetic val$mainHandler:Landroid/os/Handler;

.field final synthetic val$srcFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$dstAlbumPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$srcFilePath:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$eventId:I

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$dstAlbumPath:Ljava/lang/String;

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v7

    :cond_1
    if-nez v7, :cond_2

    const-string/jumbo v8, "NotificationHelper"

    const-string/jumbo v9, "fail to mkdir"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$srcFilePath:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$srcFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->rename(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$dstAlbumPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-interface {v6, v8}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$eventId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v8, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$mainHandler:Landroid/os/Handler;

    const/16 v9, 0x70

    const-wide/16 v10, 0x32

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;->val$context:Landroid/content/Context;

    const v9, 0x7f0a048e

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
