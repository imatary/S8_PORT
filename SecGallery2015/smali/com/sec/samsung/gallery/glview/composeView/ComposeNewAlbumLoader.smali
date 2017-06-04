.class Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;
.super Ljava/lang/Object;
.source "ComposeNewAlbumLoader.java"


# static fields
.field private static final THM_SIZE_THUMBNAIL:B = 0x3t


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

.field private mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    return-object v0
.end method


# virtual methods
.method public getMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public getThumbNailImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public requestThumbNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z
    .locals 8

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mThumbNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    const/4 v1, 0x1

    return v1
.end method

.method public setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    return-void
.end method
