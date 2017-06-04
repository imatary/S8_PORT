.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;
.source "PositionControllerRealRatioStoryDetail.java"


# static fields
.field private static GRID_COLCNT:[I


# instance fields
.field private mGridTimelineButtonHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->GRID_COLCNT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;-><init>()V

    return-void
.end method

.method private calcMarginTop()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b01df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionCardVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b03e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareRetryProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int v4, v3, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mExtraMarginTopPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mExtraMarginTopPixel:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mGridTimelineButtonHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mMarginTopPixel:I

    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v3

    goto :goto_0
.end method

.method public static getGridColumnsCount(Landroid/content/res/Resources;Z)[I
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0f002d

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0f002e

    goto :goto_0
.end method

.method public static getThumbSizeType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private hideCommentComponents()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setAlpha(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setAlpha(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private interpolateVisibleCommentPosition(F)V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setAlpha(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mGroupVGapPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mTitleTextMarginTopPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mTitleTextMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mTitleTextMarginLeftPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mMarginLeftPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mMarginRightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0823

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b081f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mGridTimelineButtonHeight:I

    return-void
.end method

.method public interpolateVisibleObjectPosition(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->interpolateVisibleObjectPosition(F)V

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->interpolateVisibleCommentPosition(F)V

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 9

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mLevel:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->calcMarginTop()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mTitleWidthPixel:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->resetValues(Z)V

    sget-object v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->GRID_COLCNT:[I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mLevel:I

    aget v6, v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mLevel:I

    aget v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->convX(I)F

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemGapW:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mLevel:I

    aget v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->convY(I)F

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemGapH:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->convX(I)F

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    int-to-float v7, v7

    div-float v3, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mValidW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mValidW:F

    div-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    :cond_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mValidW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemGapW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mPhotoLineCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemW:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mItemH:F

    return-void
.end method

.method protected resetValues(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->resetValues(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mResource:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->GRID_COLCNT:[I

    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateGridTimelineText()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isShared()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->hideCommentComponents()V

    :cond_1
    return-void
.end method

.method public setVisibleRange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setVisibleRange()V

    return-void
.end method
