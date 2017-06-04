.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;
.super Ljava/lang/Object;
.source "PhotoViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;,
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;,
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;
    }
.end annotation


# instance fields
.field public final data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

.field private final mIsEasyMode:Z


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iput-object p1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsEasyMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->mIsEasyMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoAdapterCfg:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->mIsEasyMode:Z

    return v0
.end method


# virtual methods
.method public setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iput-object p1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    return-void
.end method
