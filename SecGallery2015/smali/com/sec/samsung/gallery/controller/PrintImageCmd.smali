.class public Lcom/sec/samsung/gallery/controller/PrintImageCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PrintImageCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mFilePath:Ljava/lang/String;

.field private mItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private doPrintByPrintHelper()V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getContentUri(Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v4, Landroid/support/v4/print/PrintHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/support/v4/print/PrintHelper;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/support/v4/print/PrintHelper;->setScaleMode(I)V

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error printing an image"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivered name is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivered path is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivered uri is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    aget-object v5, v3, v6

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x1

    aget-object v4, v3, v5

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isActivePrint()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setActivePrint(Z)V

    instance-of v5, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getMediaForDetails()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->doPrintByPrintHelper()V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilePathFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Index Out of Bounds Error; getting media item using filePath: mFilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error getting media item using filePath: mFilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/sec/samsung/gallery/controller/PrintImageCmd;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "URI cannot be null : framework doesn\'t pass it"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
