.class Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/sec/android/gallery3d/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;ILcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/BitmapLoader;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected onLoadComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask()Lcom/sec/android/gallery3d/util/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripWithFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FilmStrip_Perf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThumbnailLoader : submitBitmapTask(). mSlotIndex ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/util/JobLimiter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/gallery3d/util/JobLimiter;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v1

    return-object v1
.end method

.method public updateEntry()V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v8

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-object v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v6

    iget-object v7, v3, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v6, v7}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->getRectOfAllFaces(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x3

    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v6, v4, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropFace(Landroid/graphics/Bitmap;ILandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v6, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v6

    iput-object v6, v3, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/sec/android/gallery3d/glrenderer/Texture;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    iget v7, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$1006(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$1100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$1200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$1200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "AlbumSlidingWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
