.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;
.source "PositionControllerAlbumPhoto.java"


# static fields
.field private static final ALBUM_COLUMN:I = 0x1

.field private static final ALBUM_TITLE_HRATIO:F = 0.24f

.field private static GRID_COLCNT_DEX:[I = null

.field private static GRID_COLCNT_SPLIT_PANEL:[I = null

.field private static GRID_COLCNT_SPLIT_PANEL_DEX:[I = null

.field private static final GRID_THM_TYPES_M:[I

.field private static final IsNOS:Z

.field private static final IsTablet:Z

.field private static final TAG:Ljava/lang/String; = "PosControllerAlbumPhoto"

.field private static final UseRealRatio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsNOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRealRatioForPhotoSplit:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->UseRealRatio:Z

    sput-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL:[I

    sput-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_DEX:[I

    sput-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL_DEX:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_THM_TYPES_M:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;-><init>()V

    return-void
.end method

.method private calculateActiveRange(FII)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p2

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    sub-float v0, v7, v8

    neg-float v7, p1

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpActiveStart:I

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, p2

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v2, v7, :cond_3

    add-int/lit8 v7, p2, 0x1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpVisibleStart:I

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargBtm:F

    add-float/2addr v7, v8

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_4

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_3
    invoke-static {p3, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpActiveEnd:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargTop:F

    sub-float v6, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convY(I)F

    move-result v7

    sub-float/2addr v6, v7

    :cond_0
    cmpg-float v7, v0, v6

    if-gtz v7, :cond_5

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    if-lez v2, :cond_6

    add-int/lit8 v7, v2, -0x1

    invoke-static {p3, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpVisibleEnd:I

    :goto_5
    return-void

    :cond_1
    add-float v7, p1, v0

    neg-float v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargTop:F

    sub-float v5, v7, v8

    invoke-direct {p0, p2, v4, v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_0

    :cond_2
    neg-float v4, v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    invoke-direct {p0, p2, v4, v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpVisibleStart:I

    goto :goto_2

    :cond_4
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    sub-float v8, v0, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargBtm:F

    sub-float/2addr v8, v9

    sub-float v4, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceHeight:F

    add-float v3, v7, v8

    invoke-direct {p0, p3, v4, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_3

    :cond_5
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v8, v0, v6

    sub-float v4, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    add-float v3, v7, v6

    invoke-direct {p0, p3, v4, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_4

    :cond_6
    if-lez p3, :cond_7

    add-int/lit8 v7, p3, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    add-int/lit8 v9, p3, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpVisibleEnd:I

    goto :goto_5

    :cond_7
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpActiveEnd:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpVisibleEnd:I

    goto :goto_5
.end method

.method private calculateContentRange(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v6, p1

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    sub-float v0, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraTop:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpContentStart:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v6, p2

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    sub-float v0, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraBtm:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_1

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_1
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpContentEnd:I

    return-void

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraTop:F

    sub-float v4, v6, v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    div-float/2addr v7, v8

    sub-float v5, v6, v7

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraBtm:F

    sub-float v7, v0, v7

    sub-float v4, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceHeight:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    div-float/2addr v7, v8

    add-float v3, v6, v7

    const/4 v6, 0x1

    invoke-direct {p0, p2, v4, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_1
.end method

.method private getInGrpIndex(IFFZ)I
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v3, p1

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v1, 0x0

    :goto_1
    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v1, v3, :cond_0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v4, v4, v1

    add-float/2addr v4, v3

    if-eqz p4, :cond_2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v3, v3, v1

    add-float/2addr v3, p3

    :goto_2
    cmpl-float v3, v4, v3

    if-lez v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_2
    move v3, p3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_THM_TYPES_M:[I

    aget v0, v0, p0

    return v0
.end method

.method private moveToSplit(IZ)Z
    .locals 11

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v8, 0x5

    if-ne p1, v8, :cond_1

    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_2

    const/4 p1, 0x4

    :cond_1
    :goto_1
    iget-boolean v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-nez v8, :cond_8

    const/4 v8, 0x4

    if-eq p1, v8, :cond_3

    const/4 v8, 0x1

    if-eq p1, v8, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGrpActiveStart:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    iput v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    :goto_2
    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v2, v8, :cond_10

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusChangedFlag:Z

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v2, v8, :cond_16

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v5, :cond_6

    iget v8, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-eq v8, v9, :cond_11

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v8, :cond_7

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v8, :cond_7

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    if-lt v8, v9, :cond_12

    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    const/4 v8, 0x3

    if-ne p1, v8, :cond_c

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez v8, :cond_a

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    const/4 v8, -0x1

    iput v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eqz v5, :cond_9

    iget v8, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-eq v8, v9, :cond_b

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_9
    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_6

    :cond_c
    const/4 v8, 0x2

    if-eq p1, v8, :cond_d

    const/4 v8, 0x5

    if-ne p1, v8, :cond_4

    :cond_d
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v8, -0x1

    iput v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-eqz v5, :cond_e

    iget v8, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-eq v8, v9, :cond_f

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_e
    :goto_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_7

    :pswitch_0
    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    if-ge v8, v9, :cond_5

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v8

    sput v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusAlbum:I

    goto/16 :goto_2

    :pswitch_1
    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_5

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v8

    sput v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusAlbum:I

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto/16 :goto_4

    :cond_12
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    aget-object v1, v8, v9

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_13

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    :cond_13
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_17

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_18

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v8, v9

    :goto_9
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    sub-float/2addr v7, v8

    if-eqz v4, :cond_14

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_15

    :cond_14
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_15
    const/4 v8, 0x1

    invoke-virtual {p0, v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_16
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x0

    goto :goto_8

    :cond_18
    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    add-float v7, v8, v9

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSrcTgtTexCoords(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 12

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceTexCoords(FFFF)V

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getSequentialIndex(I)I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v8, v8

    if-lt v6, v8, :cond_1

    const-string/jumbo v8, "PosControllerAlbumPhoto"

    const-string/jumbo v9, "Target album index is bigger than size of target group list"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v8, v6

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v7, v8, :cond_2

    const-string/jumbo v8, "PosControllerAlbumPhoto"

    const-string/jumbo v9, "Target photo index is bigger than size of target photo list"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v8, v8, v7

    iput v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v8, v8, v7

    iput v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v8, v4, v5, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetTexCoords(FFFF)V

    goto :goto_0
.end method

.method private updateLeft(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;I)V
    .locals 15

    const-string/jumbo v1, "PosControllerAlbumPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update left albumType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v1, :cond_1

    const-string/jumbo v1, "PosControllerAlbumPhoto"

    const-string/jumbo v3, "update left is ignored because adapter is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v13

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-eq v12, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v1

    if-ne v12, v1, :cond_5

    :cond_2
    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setFocusBorderVisible(Z)V

    :cond_3
    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->updateBorder(I)V

    if-ltz v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-lt v2, v1, :cond_6

    :cond_4
    const-string/jumbo v1, "PosControllerAlbumPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update left is ignored albumIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v10, v1, v2

    iget v1, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v13, v1, :cond_7

    const-string/jumbo v1, "PosControllerAlbumPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update left is ignored photoIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v14, v1, v13

    iget-object v1, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v11, v1, v13

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v6, :cond_9

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    div-float v4, v14, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsH:I

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    const v1, 0x3f79999a    # 0.975f

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setThumbPressScale(F)V

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginTop:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    invoke-virtual {v6, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    if-eq v1, v3, :cond_8

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    div-float v4, v14, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsH:I

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_2
.end method


# virtual methods
.method applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDragAnimRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusForLogical(Z)V

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusForLogical(Z)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    return-void

    :cond_3
    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusForLogical(Z)V

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusForLogical(Z)V

    goto :goto_0
.end method

.method public calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 27

    const/16 v22, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapW:F

    move/from16 v25, v0

    add-int/lit8 v26, v10, -0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    int-to-float v0, v10

    move/from16 v25, v0

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSizeScale:F

    move/from16 v25, v0

    mul-float v7, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    sget-boolean v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsNOS:Z

    if-nez v24, :cond_0

    sget-boolean v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsTablet:Z

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    move/from16 v24, v0

    sub-float v5, v7, v24

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapW:F

    move/from16 v24, v0

    add-float v4, v7, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    move v3, v5

    :goto_1
    move-object/from16 v0, p2

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleW:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginTop:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->isDynamicLayout()Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v8, v0, [F

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    sub-float v24, v6, v5

    aput v24, v8, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapH:F

    move/from16 v24, v0

    add-float v3, v5, v24

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapH:F

    move/from16 v24, v0

    add-float v3, v5, v24

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getNewAlbumList()Ljava/util/ArrayList;

    move-result-object v22

    :cond_5
    :goto_3
    if-eqz v22, :cond_1a

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v15, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getOrientation()I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v24, v0

    if-nez v24, :cond_8

    div-float v21, v15, v23

    :goto_5
    const/high16 v24, 0x3f100000    # 0.5625f

    cmpg-float v24, v21, v24

    if-gez v24, :cond_9

    const/high16 v21, 0x3f100000    # 0.5625f

    :cond_6
    :goto_6
    aput v7, v12, v16

    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-eqz v24, :cond_a

    aget v24, v12, v16

    mul-float v24, v24, v21

    :goto_7
    aput v24, v9, v16

    const/16 v18, 0x0

    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_c

    if-nez v11, :cond_b

    const/16 v24, 0x0

    aget v18, v8, v24

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSmallItemList(II)Ljava/util/ArrayList;

    move-result-object v22

    goto/16 :goto_3

    :cond_8
    div-float v21, v23, v15

    goto :goto_5

    :cond_9
    const v24, 0x3fe38e39

    cmpl-float v24, v21, v24

    if-lez v24, :cond_6

    const v21, 0x3fe38e39

    goto :goto_6

    :cond_a
    move/from16 v24, v5

    goto :goto_7

    :cond_b
    aget v24, v8, v11

    move/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    aget v24, v8, v11

    cmpl-float v24, v18, v24

    if-nez v24, :cond_f

    aget v24, v8, v11

    aget v25, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapH:F

    move/from16 v26, v0

    add-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v8, v11

    int-to-float v0, v11

    move/from16 v24, v0

    mul-float v24, v24, v4

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v7, v25

    add-float v24, v24, v25

    aput v24, v13, v16

    sget-boolean v24, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    move/from16 v24, v0

    aget v25, v13, v16

    sub-float v24, v24, v25

    aput v24, v13, v16

    :cond_d
    aget v24, v8, v11

    aput v24, v14, v16

    :cond_e
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    rem-int v24, v16, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v4

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v7, v25

    add-float v24, v24, v25

    aput v24, v13, v16

    sget-boolean v24, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    move/from16 v24, v0

    aget v25, v13, v16

    sub-float v24, v24, v25

    aput v24, v13, v16

    :cond_11
    div-int v24, v16, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v3

    add-float v24, v24, v6

    aput v24, v14, v16

    aput v7, v12, v16

    aput v5, v9, v16

    goto :goto_b

    :cond_12
    const/16 v17, 0x0

    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    aget v24, v8, v16

    cmpg-float v24, v17, v24

    if-gez v24, :cond_13

    aget v17, v8, v16

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    :cond_14
    const/16 v24, 0x0

    cmpl-float v24, v17, v24

    if-eqz v24, :cond_15

    :goto_d
    return v17

    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    move/from16 v25, v0

    add-float v17, v24, v25

    goto :goto_d

    :cond_16
    const/16 v16, 0x0

    :goto_e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1a

    rem-int v24, v16, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v4

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v7, v25

    add-float v24, v24, v25

    aput v24, v13, v16

    sget-boolean v24, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v24, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    move/from16 v24, v0

    aget v25, v13, v16

    sub-float v24, v24, v25

    aput v24, v13, v16

    :cond_17
    div-int v24, v16, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v3

    add-float v24, v24, v6

    aput v24, v14, v16

    aput v7, v12, v16

    aput v5, v9, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    move-object/from16 v0, p2

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    sget-boolean v24, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v24, :cond_19

    move-object/from16 v0, p2

    iput v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    :cond_18
    :goto_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    move/from16 v24, v0

    add-float v24, v24, v5

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    goto :goto_f

    :cond_1a
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeight:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    move-object/from16 v25, v0

    const v26, 0x7f0b032c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convY(I)F

    move-result v25

    add-float v19, v24, v25

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    move/from16 v25, v0

    add-float v24, v24, v25

    add-float v24, v24, v19

    :goto_10
    move/from16 v17, v24

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    move/from16 v25, v0

    add-float v24, v24, v25

    goto :goto_10
.end method

.method public getInitScrollForShirnk(I)F
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getScrollForIndex(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getCenteredScroll(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getInitScrollForShirnk(I)F

    move-result v0

    goto :goto_0
.end method

.method public getNewAlbumHeaderRect(Landroid/graphics/RectF;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v6, :cond_0

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    :goto_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceWidth:F

    mul-float v5, v6, v2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    add-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumHeaderPaddingTop()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumHeaderPaddingBottom()F

    move-result v7

    add-float v0, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceWidth:F

    sub-float v6, v5, v6

    div-float v3, v6, v8

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceHeight:F

    sub-float/2addr v6, v0

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convY(I)F

    move-result v7

    sub-float v4, v6, v7

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    goto :goto_0
.end method

.method protected getPhotoLineCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_DEX:[I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL_DEX:[I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getScrollForIndex(I)F
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    if-ltz p1, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v5, v0

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-lez v5, :cond_0

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v6, v6, v3

    add-float/2addr v5, v6

    iget-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v6, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float v4, v5, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PosControllerAlbumPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScrollForIndex ArrayIndexOutOfBoundsException > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getStrokeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected getVisibileHeight()F
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    const v2, 0x3e75c28f    # 0.24f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mScrollTopMargine:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public isDynamicLayout()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getPosCtrl1()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getPosCtrl2()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v1

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->UseRealRatio:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isOnScaling()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLevel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLevel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    if-ne v3, v4, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isRealRatioLayout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->isDynamicLayout()Z

    move-result v0

    return v0
.end method

.method public moveTo(I)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getParent()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v0

    :cond_1
    iget-object v1, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusedLeft:Z

    if-eqz v3, :cond_3

    invoke-direct {v1, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->moveToSplit(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusedLeft:Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->moveToGrid(IZ)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->moveToGrid(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusedLeft:Z

    invoke-direct {v1, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->moveToSplit(IZ)Z

    move-result v3

    goto :goto_0
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mUseOwnThumbTouchAnim:Z

    const v0, 0x3f79999a    # 0.975f

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setThumbPressScale(F)V

    :cond_0
    return-void
.end method

.method public resetAttributes(Z)V
    .locals 15

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mNewAlbum:Z

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mNewAlbum:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0257

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_1
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v11, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    if-nez v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v12

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeight:F

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v14, 0x7f0b032c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v14, 0x7f0b0321

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    :cond_0
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginTopPixel:I

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0380

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_2
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginLeftPixel:I

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0381

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_3
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginRightPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b025d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleHeightPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b025f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginTopPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b025c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginBottomPixel:I

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewSplitAlbumTitlePaddingLeft()I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginLeftPixel:I

    :goto_4
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b00ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mEdgeExtraMarginPixel:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginBottomPixel:I

    const/4 v3, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_d

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v3, :cond_1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginTopPixel:I

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginTopPixel:I

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->resetValues(Z)V

    const-string/jumbo v11, "PosControllerAlbumPhoto"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resetAttributes :: mTitleCanvsH : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsH:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " mTitleCanvsW:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v11, :cond_e

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getPhotoLineCount(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    :goto_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v11, :cond_f

    if-nez v2, :cond_f

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v10, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    :cond_2
    :goto_7
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v11, :cond_15

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewWidth:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    mul-float/2addr v11, v10

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargLeft:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargRight:F

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v11, :cond_3

    if-nez v2, :cond_3

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    :cond_3
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapWPixel:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapHPixel:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convY(I)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapH:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginBottom:F

    add-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceWidth:F

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargLeft:F

    add-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSx:F

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceWidth:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargLeft:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSx:F

    :cond_4
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mDisplaySelectedCount:Z

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v11, :cond_14

    const/4 v11, 0x0

    :goto_8
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAlbumRoundRadius:F

    :cond_5
    :goto_9
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mItemSizeScale:F

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSizeScale:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapW:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSizeScale:F

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v11, :cond_18

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsNOS:Z

    if-nez v11, :cond_17

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->IsTablet:Z

    if-eqz v11, :cond_17

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    sub-float/2addr v11, v12

    :goto_a
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    :goto_b
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleW:F

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvX(F)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleHeightPixel:I

    :cond_6
    return-void

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0382

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_1

    :cond_9
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0256

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_1

    :cond_a
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0251

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_2

    :cond_b
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0252

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_3

    :cond_c
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0261

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraMarginTopPixel:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginTopPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0253

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginLeftPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0254

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMarginRightPixel:I

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    const-string/jumbo v11, "PosControllerAlbumPhoto"

    const-string/jumbo v12, "resetAttributes err "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    goto/16 :goto_6

    :cond_f
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v10, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mLandRatio:F

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_10

    if-eqz v2, :cond_13

    :cond_10
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewWidth:I

    div-int/lit8 v13, v9, 0x4

    if-ge v11, v13, :cond_11

    const/16 v11, 0xa

    :goto_c
    int-to-float v11, v11

    div-float v5, v12, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v11, :cond_12

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    int-to-float v12, v12

    div-float v5, v11, v12

    const/high16 v11, 0x3f800000    # 1.0f

    sget v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    sub-float v10, v11, v12

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v11, 0x1

    invoke-static {v7, v11, v8}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPhotoLineCount:I

    goto/16 :goto_7

    :cond_11
    const/4 v11, 0x6

    goto :goto_c

    :cond_12
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    div-float v10, v5, v11

    sput v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    goto/16 :goto_7

    :cond_13
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v11, :cond_2

    sput v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    goto/16 :goto_7

    :cond_14
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAlbumTextureRadiusRatio:F

    mul-float/2addr v11, v12

    goto/16 :goto_8

    :cond_15
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b025b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapW:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b025b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convY(I)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemGapH:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupVGap:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v11, :cond_16

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_5

    :cond_16
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewWidth:I

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v11

    mul-float/2addr v11, v10

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargLeft:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargRight:F

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mSpaceWidth:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidW:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargRight:F

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemSx:F

    goto/16 :goto_9

    :cond_17
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    goto/16 :goto_a

    :cond_18
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    goto/16 :goto_b
.end method

.method protected resetValues(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->resetValues(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_0

    const v0, 0x7f0f000b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL:[I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_1

    const v0, 0x7f0f0033

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_DEX:[I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    const v0, 0x7f0f0035

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_COLCNT_SPLIT_PANEL_DEX:[I

    return-void

    :cond_0
    const v0, 0x7f0f000c

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0034

    goto :goto_1

    :cond_2
    const v0, 0x7f0f0036

    goto :goto_2
.end method

.method public setCheckBoxVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mDisplaySelectedCount:Z

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setCheckBoxVisibility()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusBorderVisible(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_0
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->GRID_THM_TYPES_M:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    return-void
.end method

.method public setVisibleRange()V
    .locals 9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mScrollable:F

    neg-float v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    add-int/lit8 v5, v7, -0x1

    move v4, v5

    move v3, v5

    move v2, v5

    move v1, v5

    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroupCount:I

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v6, v7

    if-ge v0, v2, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraTop:F

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_0

    move v2, v0

    :cond_0
    if-ge v0, v4, :cond_1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargTop:F

    neg-float v7, v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1

    move v4, v0

    :cond_1
    if-ne v3, v5, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargBtm:F

    add-float/2addr v7, v8

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2

    move v3, v0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mExtraBtm:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4

    move v1, v0

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mMargTop:F

    invoke-direct {p0, v7, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->calculateActiveRange(FII)V

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->calculateContentRange(II)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(II)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->update(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->updateLeft(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->updateLeft(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 12

    const/16 v11, 0x9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v10, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v10

    aget-object v6, v9, v10

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->USE_GRACE_DECOR:Z

    if-eqz v9, :cond_4

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    iget v10, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    sub-float v4, v9, v10

    :goto_1
    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvX(F)I

    move-result v8

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvY(F)I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b0046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->convX(I)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    if-nez v1, :cond_5

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    invoke-virtual {v1, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v9, v10, v8, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v1, v3, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    add-float/2addr v9, v5

    iget v10, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    add-float/2addr v10, v5

    invoke-virtual {v1, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v9, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_4
    iget v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    if-nez v9, :cond_6

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v9, v10, v8, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    if-eq v9, v10, :cond_2

    invoke-virtual {v1, v8, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    goto :goto_2
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v0, v1

    iget v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mDisplaySelectedCount:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mFocusIndex:I

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    if-eq v8, v0, :cond_3

    move v0, v9

    :goto_1
    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsSelectedAlbum:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->isDynamicLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v9, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget v5, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {p1, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mIsDualScreen:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->setSrcTgtTexCoords(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move v3, v9

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
