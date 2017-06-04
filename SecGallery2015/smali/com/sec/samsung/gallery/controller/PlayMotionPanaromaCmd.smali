.class public Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PlayMotionPanaromaCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field public static final MOTIONPANORAMA_COMPONENT_NAME:Ljava/lang/String; = "com.samsung.android.app.motionpanoramaviewer.ViewerActivity"

.field public static final MOTIONPANORAMA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.motionpanoramaviewer"

.field private static final TAG:Ljava/lang/String; = "PlayMotionPanoramaCmd"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method public static isSelectedMotionPanorama(Landroid/content/Context;)Z
    .locals 12

    move-object v8, p0

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    instance-of v8, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v8, :cond_0

    instance-of v8, v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v4, :cond_1

    instance-of v8, v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v8, :cond_3

    move-object v6, v4

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x200000

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_2

    const-wide/32 v10, 0x1000000

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_3
    instance-of v8, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_1

    move-object v8, v4

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x200000

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_1

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x1000000

    invoke-virtual {v4, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v8, v3, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_5

    move-object v8, v3

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x200000

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_5

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x1000000

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private startMotionPanoramaViewer(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v4, "PlayMotionPanoramaCmd"

    const-string/jumbo v5, "play interactive shot image"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.motionpanoramaviewer"

    const-string/jumbo v5, "com.samsung.android.app.motionpanoramaviewer.ViewerActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0077

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v4, "PlayMotionPanoramaCmd"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->startMotionPanoramaViewer(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method
