.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "PhotoViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->mScanAllSet:Z

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->mRetThmType:B

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getPosCtrlCurrent()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;->mRetThmType:B

    goto :goto_0
.end method
