.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/sec/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method private isAutoVideoPreview(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->USE_VIDEO_AUTO_PLAY:Z
    invoke-static {}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x8000000

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public pausePreview()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setHideVideoIcon(Z)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v4, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    :goto_1
    if-nez v0, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->isAutoVideoPreview(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_2
    move-object v1, v3

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v3, v0}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # invokes: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getTiledTextureResource()Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;
    invoke-static {v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
