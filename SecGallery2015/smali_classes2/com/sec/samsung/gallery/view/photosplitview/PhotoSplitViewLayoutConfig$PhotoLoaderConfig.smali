.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "PhotoSplitViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mScanAllSet:Z

    const-string/jumbo v0, "PhotoSplitPhotoLoader"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mUseBitmapDrawTask:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mUseZoomLevelInformation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mUseScrollDirectionData:Z

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;->mRetThmType:B

    return p1
.end method
