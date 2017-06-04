.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;
.super Ljava/lang/Object;
.source "PhotoSplitViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;
    }
.end annotation


# instance fields
.field public final mAlbumAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;

.field public final mPhotoAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;->mPhotoAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;->mAlbumAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;

    return-void
.end method
