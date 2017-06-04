.class public Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartStoryAlbumAppCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final STORYALBUM_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.episodes.MainActivity"

.field private static final STORYALBUM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.episodes"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method public static getStoryAlbumMaxItemCount(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storyalbum_max_photo_limit"

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private startStoryAlbum(Landroid/app/Activity;)V
    .locals 11

    move-object v8, p1

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "intent.action.SEND_MULTIPLE_TO_STORYALBUM"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "type"

    const/4 v9, 0x3

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalItemList()Ljava/util/LinkedList;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_1

    instance-of v8, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.samsung.android.app.episodes"

    const-string/jumbo v9, "com.samsung.android.app.episodes.MainActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0052

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->mContext:Landroid/content/Context;

    const v9, 0x7f0a049e

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "selectedItems"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->startStoryAlbum(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
