.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDecodeJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;",
        ">;"
    }
.end annotation


# instance fields
.field final album:Lcom/sec/android/gallery3d/data/ChannelAlbum;

.field final iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

.field final mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

.field mediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field startIndex:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;ILcom/sec/android/gallery3d/data/ChannelAlbum;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->startIndex:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->album:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->startIndex:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iput p3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    return-void
.end method

.method private decodeItems(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->album:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCoverItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->startIndex:I

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iput v9, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    const-string/jumbo v1, "GlCompsEvntObj"

    const-string/jumbo v2, "CoverItems from CMH are null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->startIndex:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->startIndex:I

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v7, :cond_3

    const-string/jumbo v1, "GlCompsEvntObj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decodeItems() coverItem is null at position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mediaList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    add-int/lit8 v2, v6, 0x1

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getModifiedDateInSec()J

    move-result-wide v2

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    sget-object v1, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v8, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->iStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iput v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->mFutureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    goto/16 :goto_0
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->album:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->decodeItems(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GlCompsEvntObj"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    move-result-object v0

    return-object v0
.end method
