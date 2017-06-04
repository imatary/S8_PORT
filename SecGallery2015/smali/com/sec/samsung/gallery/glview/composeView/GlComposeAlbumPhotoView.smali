.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
.source "GlComposeAlbumPhotoView.java"


# static fields
.field private static final FeatureUseTimeLineQuickScroll:Z

.field private static final SCROLL_AREA:F = 55.0f

.field private static final TAG:Ljava/lang/String; = "GlComposeAlbumPhotoView"


# instance fields
.field private final SPLIT_RATIO_LAND:F

.field private final SPLIT_RATIO_PORT:F

.field private final mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

.field mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->FeatureUseTimeLineQuickScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iget v0, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mLandRatio:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_LAND:F

    iget v0, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_PORT:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSupportExpand:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpandValue(Z)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mListenerDragDone:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->setOnDragAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;)V

    return-void
.end method

.method private processScrollToward(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->getScrollIntensity()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    neg-float v2, v0

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMoveToward(F)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processTrailAnim(II)V
    .locals 4

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidthSpace:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeightSpace:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->setTargetPos(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->processScrollToward(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->findFocused(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private setDimForLogicalAlbum(Z)V
    .locals 8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusForLogical(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusForLogical(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setGatherAnimScrollArea()V
    .locals 8

    const/high16 v7, 0x425c0000    # 55.0f

    const/high16 v6, 0x40000000    # 2.0f

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWideMode:Z

    if-eqz v4, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_LAND:F

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidthSpace:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidthSpace:F

    mul-float/2addr v5, v1

    sub-float v2, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeightSpace:F

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getActionBarHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->convY(I)F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v3, v4, v7

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeightSpace:F

    neg-float v4, v4

    div-float/2addr v4, v6

    add-float v0, v4, v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v4, v2, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->setScrollArea(FFF)V

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_PORT:F

    goto :goto_0
.end method

.method private startTrailAnim(III)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->getFirstThumbObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mUseScaleCtrl:Z

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setDimForLogicalAlbum(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isDragAnimRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startAnimation(Landroid/util/SparseArray;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startDragAnimation()V

    goto :goto_0
.end method

.method private stopDragAnim(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->processScrollToward(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isLastAnimRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startMoveToAnimation()V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mMode:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->getFocusedObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;->onStatusChange(III)V

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->resetSourceDim(Z)V

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setDimForLogicalAlbum(Z)V

    goto :goto_0

    :cond_2
    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startInverseDragAnimation()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->resetDrag()V

    goto :goto_2
.end method


# virtual methods
.method public getPhotoWidthSpace()F
    .locals 5

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWideMode:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_LAND:F

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    const-string/jumbo v2, "GlComposeAlbumPhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPhotoWidthSpace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->convX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->convX(I)F

    move-result v2

    return v2

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_PORT:F

    goto :goto_0
.end method

.method protected handleLongClick(III)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInverseDragAnimRunning:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x7

    iput v5, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :cond_2
    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->handleLongClick(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mOriginExpanded:Z

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->startTrailAnim(III)V

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public isDragAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    return v0
.end method

.method protected onCreate(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->onCreate(II)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setGatherAnimScrollArea()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrlCurrent:I

    :cond_0
    return-void
.end method

.method protected onMoved(II)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isScreenLocked()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mOnScaling:Z

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isFadeAnimRunning()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->processTrailAnim(II)V

    move v2, v3

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSupportExpand:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x32

    if-le v1, v4, :cond_6

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mExpandable:Z

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->onMoved(II)Z

    move-result v2

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mExpandable:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x64

    if-le v0, v4, :cond_5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_9

    if-lez p1, :cond_a

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    :cond_8
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_9
    if-ltz p1, :cond_7

    :cond_a
    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_b

    if-gez p1, :cond_8

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    goto :goto_1

    :cond_b
    if-lez p1, :cond_8

    goto :goto_2
.end method

.method protected onPressed(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isFadeAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInverseDragAnimRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startInverseDragAnimation()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->onPressed(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPressed:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mUseScaleCtrl:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isFadeAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->stopDragAnim(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGatherAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->stopDragAnim(Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->onReleased(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method protected onScrolled(IIII)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isDragAnimRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->onScrolled(IIII)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p3, v2, :cond_2

    if-eq p4, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->onReleased(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSetMode(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setMode(IILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    :cond_1
    return-void
.end method

.method public performAction(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->performAction(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setGatherAnimScrollArea()V

    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setClickEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isFadeAnimRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->FeatureUseTimeLineQuickScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-boolean p1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpandValue(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPressX:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPressY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->prepareScale(II)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetXPositionForSplitLayout(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PSVC"

    const-string/jumbo v2, "Off"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {p0, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->animateScale(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->fadeOut()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PSVC"

    const-string/jumbo v2, "On"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x40266666    # 2.6f

    invoke-virtual {p0, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->animateScale(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->fadeIn()V

    goto :goto_0
.end method

.method protected setValidView()V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWideMode:Z

    if-eqz v5, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_LAND:F

    :goto_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v3, v5

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_1

    move v0, v4

    :goto_1
    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_2

    move v2, v3

    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mValidView:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeight:I

    invoke-direct {v5, v0, v4, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mValidView:Landroid/graphics/Rect;

    :goto_3
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->SPLIT_RATIO_PORT:F

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    sub-int v0, v5, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidth:I

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mValidView:Landroid/graphics/Rect;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeight:I

    invoke-virtual {v5, v0, v4, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3
.end method

.method protected startEnlargeAnimation()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-interface {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObjs(Landroid/util/SparseArray;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-interface {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setStroke(Z)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getBackObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getBackObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getSeparatorObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setVisibility(Z)V

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    :cond_6
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->startEnlargeAnimation()V

    return-void
.end method

.method protected startShrinkAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getBackObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getBackObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getSeparatorObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->startShrinkAnimation()V

    goto :goto_0
.end method
