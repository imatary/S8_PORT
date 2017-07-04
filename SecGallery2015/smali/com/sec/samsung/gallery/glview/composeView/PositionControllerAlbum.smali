.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerAlbum.java"


# static fields
.field private static final FeatureSupportKnoxDesktop:Z

.field static GRID_COLCNT:[I

.field static final GRID_THM_TYPES:[I

.field private static final IsNOS:Z

.field private static final IsTablet:Z

.field private static final mUseAlbumCopyMove:Z


# instance fields
.field private final mJustAboveAlbumDividerPosition:Lcom/sec/android/gallery3d/glcore/GlPos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_THM_TYPES:[I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsNOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumCopyMove:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUseAlbumCopyMove:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureSupportKnoxDesktop:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mJustAboveAlbumDividerPosition:Lcom/sec/android/gallery3d/glcore/GlPos;

    return-void
.end method

.method private calcAboveAlbumScrollable(IF)F
    .locals 6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v3, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput p2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v3, v1, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    :cond_1
    add-float/2addr p2, v2

    :cond_2
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v4, v1, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_4
    return p2
.end method

.method private calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x0

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v5, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    iget v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-int/lit8 v11, v4, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    int-to-float v10, v4

    div-float v2, v9, v10

    move v1, v2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapH:F

    add-float v0, v1, v9

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lez v9, :cond_0

    aput v8, v6, v12

    aput v8, v7, v12

    aput v2, v5, v12

    aput v1, v3, v12

    aget v9, v6, v12

    iput v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v9, :cond_1

    :goto_0
    iput v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    aget v8, v5, v12

    iput v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    sget-boolean v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v8, :cond_2

    aget v8, v3, v12

    :goto_1
    iput v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    :cond_0
    iget v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupVGap:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    add-float/2addr v8, v9

    return v8

    :cond_1
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    goto :goto_0

    :cond_2
    aget v8, v3, v12

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    add-float/2addr v8, v9

    goto :goto_1
.end method

.method private calculateActiveRange(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveStart:I

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveEnd:I

    return-void
.end method

.method private calculateContentRange(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v4, p1

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    sub-float v0, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraTop:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpContentStart:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v4, p2

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    sub-float v0, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraBtm:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_1
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpContentEnd:I

    return-void

    :cond_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraTop:F

    sub-float v3, v4, v0

    cmpg-float v4, v3, v6

    if-gtz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v4, v3, v4

    float-to-int v2, v4

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v2, v4

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraBtm:F

    sub-float v5, v0, v5

    sub-float v3, v4, v5

    cmpg-float v4, v3, v6

    if-gtz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v4, v2

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method

.method private checkKnoxDesktopMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureSupportKnoxDesktop:Z

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private checkPickerMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v4, v0

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float v2, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    if-ge v0, v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v3, v2, v4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapH:F

    sub-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public static getThumbSizeType(I)I
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_THM_TYPES:[I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    aget v0, v0, p0

    return v0
.end method

.method private interpolateVisibleObjectPositionForCheckBox(F)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    const/4 v10, 0x0

    const/16 v21, 0x0

    new-instance v18, Landroid/graphics/Canvas;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    if-eqz v15, :cond_9

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v22

    if-eqz v22, :cond_4

    if-nez v10, :cond_0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v4, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->red(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->green(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v6, v0

    move/from16 v0, v19

    invoke-static {v4, v0, v13, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f020315

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_1
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsNOS:Z

    if-eqz v22, :cond_3

    const v22, 0x7f020111

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxSourceAlpha:F

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxTargetAlpha:F

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxSourceAlpha:F

    sub-float v23, v23, v24

    mul-float v23, v23, p1

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_1
    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsNOS:Z

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f0202ca

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f020314

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_1

    :cond_3
    const v22, 0x7f020110

    goto/16 :goto_2

    :cond_4
    if-nez v21, :cond_5

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v4, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->red(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->green(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxSourceColor:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUnCheckedBoxTartgetColor:I

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p1

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v6, v0

    move/from16 v0, v19

    invoke-static {v4, v0, v13, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f0202f8

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_4
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsNOS:Z

    if-eqz v22, :cond_8

    const v22, 0x7f020117

    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxSourceAlpha:F

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxTargetAlpha:F

    sget v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mCheckBoxSourceAlpha:F

    sub-float v23, v23, v24

    mul-float v23, v23, p1

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v21, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto/16 :goto_3

    :cond_6
    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsNOS:Z

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f0202ad

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    const v23, 0x7f0202f7

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_4

    :cond_8
    const v22, 0x7f020116

    goto/16 :goto_5

    :cond_9
    return-void
.end method

.method private setGapSizeForItem()V
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b0714

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupVGapPixel:I

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v2, :cond_1

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapWPixel:I

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v2, :cond_2

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapHPixel:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b0331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapWPixel:I

    goto :goto_2
.end method

.method private setGroupLineCount(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->checkKnoxDesktopMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->checkPickerMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0014

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0f0015

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    const v0, 0x7f0f0019

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    goto :goto_1

    :cond_2
    const v0, 0x7f0f001a

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_4

    const v0, 0x7f0f0001

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    goto :goto_1

    :cond_4
    const v0, 0x7f0f0002

    goto :goto_3
.end method

.method private setMarginSizeForView(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0715

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraMarginTopPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraMarginTopPixel:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getNotificationHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginTopPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraMarginTopPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginBottomPixel:I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_3

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginLeftPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginLeftPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginRightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumTitleTextMarginLeftPixel:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isVisibleSelectionBuffer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginTopPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMarginTopPixel:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_4
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v1, v0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    sub-int/2addr v0, v1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTexCoords(FFFF)V

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumRoundRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumRoundRadius:F

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundRadius(F)V

    :cond_2
    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    iput-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderEnable:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelectEnable:Z

    iput-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectEnable:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    :cond_3
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectEnable:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    :goto_1
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    goto :goto_1

    :cond_6
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_7
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    goto :goto_1
.end method

.method public changeGroupIndex(Ljava/util/HashSet;IIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;IIIII)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->checkAlwaysActiveGroupObjectIndex(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v7

    if-eqz v3, :cond_4

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveStart:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    if-ne v7, v9, :cond_2

    if-ltz p2, :cond_3

    :cond_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveEnd:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    if-ne v7, v9, :cond_4

    if-lez p2, :cond_4

    :cond_3
    move-object v2, v1

    :cond_4
    if-ne v7, p4, :cond_5

    if-eqz v3, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, p4}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    if-ne v7, p4, :cond_8

    move v4, p3

    :goto_1
    if-ltz v4, :cond_1

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v5

    iget-object v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_7

    iput v5, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget-object v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v5, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setIndex(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_8
    :try_start_1
    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v9, :cond_9

    move/from16 v0, p5

    if-lt v7, v0, :cond_a

    :cond_9
    move/from16 v0, p6

    if-le v7, v0, :cond_b

    :cond_a
    move v4, v7

    goto :goto_1

    :cond_b
    add-int v4, v7, p2

    goto :goto_1

    :cond_c
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setAlwaysActiveGroupObjectIndex(I)V

    if-eqz v2, :cond_d

    iget-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    invoke-virtual {v8, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->inActivateObject(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->remove(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    invoke-virtual {v8, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->inActivateGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V

    :cond_d
    return-void
.end method

.method public getCenteredScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    add-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollableMax:F

    goto :goto_0
.end method

.method public getChangeGroupDY(II)F
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-gt v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getChangeGroupPosition(IILcom/sec/android/gallery3d/glcore/GlPos;)V
    .locals 7

    const v6, 0x7f0b0325

    const v5, 0x7f0b0320

    const v4, 0x7f0b032d

    const v3, 0x7f0b032b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-le v1, p2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v1, p2

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    :goto_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSx:F

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSy:F

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mListAlbumThumbMarg:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    goto :goto_1

    :cond_4
    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    goto/16 :goto_1
.end method

.method getDesktopModeColumns(I)I
    .locals 10

    const/4 v5, 0x1

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b0715

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    sub-int v4, v6, v3

    div-int v6, v4, p1

    int-to-float v1, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b06bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v2, v6

    cmpl-float v6, v2, v1

    if-lez v6, :cond_3

    int-to-float v6, v4

    div-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    if-lez v6, :cond_2

    sget-object v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    add-int/lit8 v8, v8, -0x1

    aget v6, v6, v8

    sget-object v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    aget v8, v8, v9

    sub-int/2addr v6, v8

    :goto_1
    sub-int v0, v7, v6

    if-ge v0, v5, :cond_0

    move v0, v5

    :cond_0
    :goto_2
    return v0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b0337

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_2
.end method

.method getGroupLineCount(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)I
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    aget v0, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->checkKnoxDesktopMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getDesktopModeColumns(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getNormalModeColumns(I)I

    move-result v0

    goto :goto_0
.end method

.method public getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-le v1, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSx:F

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSy:F

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mListAlbumThumbMarg:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    goto :goto_0
.end method

.method getNormalModeColumns(I)I
    .locals 6

    move v0, p1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convX(I)F

    move-result v4

    int-to-float v5, v0

    div-float v1, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidW:F

    int-to-float v5, v0

    mul-float/2addr v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v3, v0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidW:F

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    :cond_0
    return p1
.end method

.method protected getStrokeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public interpolateVisibleObjectPosition(F)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->interpolateVisibleObjectPosition(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isPlusIconAlbum(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getViewSub()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->interpolateVisibleObjectPositionForCheckBox(F)V

    return-void
.end method

.method isPlusIconAlbum(I)Z
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mUseAlbumCopyMove:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v1, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lez v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method isVisibleSelectionBuffer()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelectionBufferVisible()Z

    move-result v1

    return v1
.end method

.method public moveTo(I)Z
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v8, 0x5

    if-ne p1, v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 p1, 0x4

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-nez v8, :cond_6

    const/4 v8, 0x4

    if-eq p1, v8, :cond_3

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v8, :cond_0

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveStart:I

    iput v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v8, :cond_12

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v8, 0x3

    if-ne p1, v8, :cond_8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto :goto_2

    :cond_8
    const/4 v8, 0x4

    if-ne p1, v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpActiveStart:I

    iput v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto :goto_2

    :cond_9
    const/4 v8, 0x3

    if-eq p1, v8, :cond_a

    const/4 v8, 0x5

    if-ne p1, v8, :cond_5

    :cond_a
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v8, v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v8, :cond_c

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v7, :cond_b

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x3

    if-ne p1, v8, :cond_f

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v8, v8

    if-lez v8, :cond_d

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    :cond_d
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    if-ge v8, v0, :cond_e

    const/4 v2, 0x1

    :goto_4
    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    :cond_f
    const/4 v2, 0x1

    goto :goto_3

    :cond_10
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_11
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v5, v8, :cond_14

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mFocusChangedFlag:Z

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mFocusChangedFlag:Z

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v8, :cond_13

    if-nez v3, :cond_15

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_14
    const/4 v8, 0x0

    goto :goto_5

    :cond_15
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->fitToLine()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v6, :cond_16

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v6

    :cond_16
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_1
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 5

    const v4, 0x3f79999a    # 0.975f

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mUseParentThumbTouchAnim:Z

    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setThumbPressScale(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setThumbPressScale(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    return-void
.end method

.method public resetAttributes(Z)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setMarginSizeForView(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setGapSizeForItem()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v3, :cond_2

    const v1, 0x7f0b0049

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v3, :cond_4

    const v2, 0x7f0b004a

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleHeightPixel:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleTextMarginBottom:F

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->resetValues(Z)V

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mPhotoLineCount:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getGroupLineCount(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mSpaceWidth:F

    neg-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMargLeft:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mSpaceHeight:F

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMargTop:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemH:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSy:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    sget-object v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_COLCNT:[I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    :goto_3
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvX(F)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleWidthPixel:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleCanvsW:I

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumRoundRadius:F

    goto/16 :goto_0

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v3, :cond_3

    const v1, 0x7f0b0334

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f0b0058

    goto/16 :goto_1

    :cond_4
    const v2, 0x7f0b005a

    goto/16 :goto_2

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convX(I)F

    move-result v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumTextureRadiusRatio:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumRoundRadius:F

    goto/16 :goto_0
.end method

.method public resetPosition()V
    .locals 15

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v0

    :goto_0
    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    if-le v0, v9, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b032d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getAlbumDividerY()F

    move-result v10

    add-float/2addr v10, v5

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    invoke-direct {p0, v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->calcAboveAlbumScrollable(IF)F

    move-result v8

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    sub-int/2addr v9, v0

    if-ge v3, v9, :cond_a

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    add-int v10, v3, v0

    aget-object v2, v9, v10

    if-nez v2, :cond_3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v7

    iput v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v9, :cond_6

    if-nez v3, :cond_4

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v10, v0, v10

    int-to-float v10, v10

    mul-float v4, v9, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mJustAboveAlbumDividerPosition:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSx:F

    add-float/2addr v10, v4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemSy:F

    iget v12, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    add-float/2addr v11, v12

    iget v12, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mListAlbumThumbMarg:F

    sub-float/2addr v11, v12

    invoke-virtual {v9, v10, v11, v14}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    :cond_4
    const/4 v1, 0x0

    if-nez v3, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int/2addr v9, v10

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    iget v11, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v10, v11

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    const/4 v1, 0x1

    :cond_5
    iget v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getAlbumDividerY()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    if-eqz v1, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int/2addr v10, v11

    if-ne v9, v10, :cond_6

    iget v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float/2addr v9, v10

    iput v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    :cond_6
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v9, v3, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_7

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_8

    :cond_7
    add-float/2addr v8, v7

    add-float/2addr v6, v7

    :cond_8
    sget-boolean v9, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v10, v3, v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto/16 :goto_3

    :cond_9
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapW:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    rem-int v10, v3, v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto/16 :goto_3

    :cond_a
    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v9, :cond_d

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v10

    sub-int/2addr v9, v10

    if-gtz v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isHideAlbumMode()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getAlbumDividerY()F

    move-result v10

    sub-float/2addr v9, v10

    add-float/2addr v8, v9

    :cond_c
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v9

    if-nez v9, :cond_d

    sub-float/2addr v8, v6

    :cond_d
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_e

    iput v14, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollableMax:F

    goto/16 :goto_1

    :cond_e
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    sub-float v9, v8, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemGapH:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollableMax:F

    goto/16 :goto_1
.end method

.method resetValues(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setGroupLineCount(Z)V

    return-void
.end method

.method public setDualScreenFocusVisibility(II)V
    .locals 3

    if-eq p1, p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v2, p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->updateBorder(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->updateBorder(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isPlusIconAlbum(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-boolean v4, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getCanvasManager()Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iput-boolean v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    goto :goto_0
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->GRID_THM_TYPES:[I

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->IsTablet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mLevel:I

    goto :goto_0
.end method

.method public setVisibleRange()V
    .locals 14

    const/4 v13, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    add-int/lit8 v6, v11, -0x1

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v10, v6

    move v9, v6

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mSpaceHeight:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMargTop:F

    sub-float v8, v11, v12

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v11

    sub-float/2addr v8, v11

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    if-ge v1, v11, :cond_6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v11, v1

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mScrollable:F

    sub-float v7, v11, v12

    if-ge v1, v3, :cond_1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraTop:F

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_1

    move v3, v1

    :cond_1
    if-ge v1, v5, :cond_2

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMargTop:F

    neg-float v11, v11

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_2

    move v5, v1

    :cond_2
    if-ge v1, v10, :cond_3

    const/4 v11, 0x0

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_3

    move v10, v1

    :cond_3
    if-ne v4, v6, :cond_4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mValidH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mMargBtm:F

    add-float/2addr v11, v12

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/2addr v11, v1

    add-int/lit8 v4, v11, -0x1

    if-le v4, v6, :cond_4

    move v4, v6

    :cond_4
    if-ne v9, v6, :cond_5

    cmpl-float v11, v7, v8

    if-ltz v11, :cond_5

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/2addr v11, v1

    add-int/lit8 v9, v11, -0x1

    if-le v9, v6, :cond_5

    move v9, v6

    :cond_5
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mExtraBtm:F

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_7

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupLineCount:I

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroupCount:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_6
    invoke-static {v10, v13}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpVisibleStart:I

    invoke-static {v9, v13}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGrpVisibleEnd:I

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->calculateActiveRange(II)V

    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->calculateContentRange(II)V

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 12

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v10, 0x9

    invoke-virtual {p1, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v11

    aget-object v7, v10, v11

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    iget v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvX(F)I

    move-result v9

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvY(F)I

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b0046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convX(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v6, v10, v11

    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v10, v11, v9, v8}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->convY(I)F

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    add-float/2addr v10, v4

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    iget v11, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    sub-float/2addr v11, v5

    invoke-virtual {v1, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :goto_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v10, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleCanvsW:I

    if-eq v10, v11, :cond_2

    invoke-virtual {v1, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v3, v4, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    add-float/2addr v10, v6

    iget v11, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    add-float/2addr v11, v6

    invoke-virtual {v1, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_2
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget v12, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v11, v0, v1

    iget v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAlbumTitleTextMarginLeftPixel:I

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleLeftMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mDisplaySelectedCount:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvX(F)I

    move-result v4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvY(F)I

    move-result v4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvY(F)I

    move-result v4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsListAlbumLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemH:F

    invoke-virtual {p1, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTitleVisible:Z

    if-eqz v0, :cond_2

    iget-object v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleCanvsW:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleCanvsH:I

    invoke-direct {v0, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    invoke-virtual {v9, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleH:F

    add-float/2addr v0, v4

    neg-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {v9, v7, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v6, -0x1

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    if-eqz v10, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mItemW:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->rConvX(F)I

    move-result v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->mTitleCanvsH:I

    invoke-virtual {v10, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    invoke-virtual {v10, v13, v13}, Lcom/sec/android/gallery3d/glcore/GlView;->setAlign(II)V

    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
