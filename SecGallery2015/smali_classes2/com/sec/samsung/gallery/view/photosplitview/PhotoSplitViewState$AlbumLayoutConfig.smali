.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "PhotoSplitViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLayoutConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseEnlargeAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseLayoutChange:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseGroupSelect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mAlbumList:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mIsCardTypeView:Z

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioLand:F
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mLandRatio:F

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioPort:F
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mPortRatio:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mMaxObject:I

    iput v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mInitialLevel:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mTopGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mUseQuickScroll:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mPosCtrl:[Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;->mItemSizeScale:F

    return-void
.end method
