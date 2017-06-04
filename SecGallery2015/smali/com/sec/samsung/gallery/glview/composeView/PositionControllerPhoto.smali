.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerPhoto.java"


# static fields
.field static GRID_COLCNT:[I = null

.field private static GRID_ITEM_GAP:[I = null

.field private static final GRID_ITEM_GAP_EASYMODE:[I

.field private static final GRID_THM_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "PositionControllerPhoto"

.field static mFocusAlbum:I


# instance fields
.field mFocusedLeft:Z

.field mItemSizeScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_COLCNT:[I

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP_EASYMODE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_THM_TYPES:[I

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    return-void

    :array_0
    .array-data 4
        0x6
        0x9
        0xc
        0x4
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemSizeScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusedLeft:Z

    return-void
.end method

.method private getItemGap()[I
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0f000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 13

    iget-object v7, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v6, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v4, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    iput v5, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v10, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    div-int/2addr v10, v11

    iput v10, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapW:F

    add-int/lit8 v12, v5, -0x1

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    int-to-float v11, v5

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemSizeScale:F

    mul-float v3, v10, v11

    move v2, v3

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapW:F

    add-float v1, v3, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapH:F

    add-float v0, v2, v10

    iput v0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    const/4 v9, 0x0

    :goto_0
    iget v10, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v9, v10, :cond_1

    rem-int v10, v9, v5

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    add-float/2addr v10, v11

    aput v10, v7, v9

    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    aget v11, v7, v9

    sub-float/2addr v10, v11

    aput v10, v7, v9

    :cond_0
    div-int v10, v9, v5

    int-to-float v10, v10

    mul-float/2addr v10, v0

    add-float/2addr v10, v2

    aput v10, v8, v9

    aput v3, v6, v9

    aput v2, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget v10, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    int-to-float v10, v10

    iget v11, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupVGap:F

    add-float/2addr v10, v11

    return v10
.end method

.method protected fitToLine(I)V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v4, v0

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v5, 0x0

    aget v2, v4, v5

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v5, v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    add-float/2addr v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v5, v5, p1

    sub-float v5, v2, v5

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v5, v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v4, v4, p1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    sub-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 8

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getScrollForIndex(I)F

    move-result v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getValidScroll(F)F

    move-result v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemH:F

    sub-float v0, v6, v7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v7

    sub-float v5, v6, v7

    :cond_0
    sub-float v6, v3, v5

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getScrollForIndex(I)F

    move-result v6

    add-float v2, v6, v5

    :goto_0
    return v2

    :cond_1
    add-float v6, v3, v0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    sub-float v2, v4, v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public getMarginTop()F
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b033c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    goto :goto_0
.end method

.method getPhotoLineCount(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_COLCNT:[I

    aget v0, v0, p1

    return v0
.end method

.method getVisibileHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemH:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getVisibleScrollDelta(F)F
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, p1, v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getVisibileHeight()F

    move-result v1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public moveTo(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->moveToGrid(IZ)Z

    move-result v0

    return v0
.end method

.method moveToGrid(IZ)Z
    .locals 12

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x5

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_0

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_0

    const/4 p1, 0x2

    :cond_0
    const/4 v9, -0x1

    sput v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    iget-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-nez v9, :cond_5

    if-nez p2, :cond_1

    const/4 v9, 0x2

    if-eq p1, v9, :cond_1

    const/4 v9, 0x5

    if-eq p1, v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    if-eqz p2, :cond_2

    const/4 v9, 0x4

    if-eq p1, v9, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpActiveStart:I

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v9, :cond_e

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    if-ne p1, v9, :cond_8

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez v9, :cond_7

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_6

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    const/4 v9, -0x1

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusedLeft:Z

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/4 v9, 0x3

    if-ne p1, v9, :cond_c

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    if-lez v9, :cond_9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v0, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_9
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ge v9, v0, :cond_b

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_a

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_a
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    const/4 v9, -0x1

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    :cond_c
    const/4 v9, 0x5

    if-ne p1, v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_d

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    const/4 v9, -0x1

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_e
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    const/4 v10, 0x0

    aget-object v2, v9, v10

    if-nez v2, :cond_f

    const-string/jumbo v9, "PositionControllerPhoto"

    const-string/jumbo v10, "gruupInfo is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    iget v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lez v9, :cond_10

    iget-object v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v10, 0x0

    aget v3, v9, v10

    :cond_10
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v9, "PositionControllerPhoto"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknow direction : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_3
    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v4, v9, :cond_14

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusChangedFlag:Z

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v4, v9, :cond_18

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_12

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_12
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_13

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v9, v10, :cond_15

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v9, v10

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v9, v10, :cond_11

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto :goto_3

    :pswitch_1
    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v9, v9, 0x1

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v9, v10, :cond_11

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto :goto_3

    :pswitch_2
    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int/2addr v9, v10

    if-ltz v9, :cond_11

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int/2addr v9, v10

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto :goto_3

    :pswitch_3
    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_11

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto :goto_3

    :cond_14
    const/4 v9, 0x0

    goto :goto_4

    :cond_15
    iget v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget v11, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    aget v10, v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    add-float/2addr v10, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_19

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    iget-object v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget v11, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    aget v10, v10, v11

    sub-float v10, v3, v10

    add-float v8, v9, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float/2addr v10, v8

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    :cond_16
    :goto_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v5, :cond_17

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ge v9, v4, :cond_1a

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v8, v9, v3

    :goto_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_17
    const/4 v9, 0x1

    invoke-virtual {p0, v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_19
    iget v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget v11, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    aget v10, v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    iget-object v9, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    aget v9, v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    sub-float v8, v9, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_5

    :cond_1a
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    add-float v8, v9, v3

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 13

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b0261

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b033c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v9, v11

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v9, :cond_1

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    if-eqz v9, :cond_6

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b01df

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    :goto_0
    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginBottomPixel:I

    const/4 v2, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->isSelectionBufferVisible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v11

    add-int/2addr v9, v11

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    :cond_2
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v9

    :goto_2
    add-int/2addr v9, v11

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->resetValues(Z)V

    const-string/jumbo v9, "PositionControllerPhoto"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resetAttributes :: mTitleCanvsH : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mTitleCanvsH:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mTitleCanvsW:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mTitleCanvsW:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getPhotoLineCount(I)I

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convX(I)F

    move-result v10

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewWidth:I

    div-int/lit8 v11, v8, 0x4

    if-ge v9, v11, :cond_8

    const/16 v9, 0xa

    :goto_3
    int-to-float v9, v9

    div-float v4, v10, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v9, :cond_4

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convX(I)F

    move-result v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    int-to-float v10, v10

    div-float v4, v9, v10

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v9, 0x1

    invoke-static {v5, v9, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    :cond_4
    sget-object v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP:[I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    aget v9, v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convX(I)F

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapW:F

    sget-object v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP:[I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    aget v9, v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapH:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupVGap:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWQHD(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP_EASYMODE:[I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    aget v9, v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convX(I)F

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapW:F

    sget-object v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP_EASYMODE:[I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    aget v9, v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapH:F

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    :goto_4
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemGapW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPhotoLineCount:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemW:F

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemH:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mItemSizeScale:F

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemSizeScale:F

    return-void

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v9

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    add-int/2addr v9, v11

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMarginTopPixel:I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "PositionControllerPhoto"

    const-string/jumbo v11, "resetAttributes err "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move v9, v10

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x6

    goto/16 :goto_3

    :cond_9
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mSpaceWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidW:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargRight:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemSx:F

    goto :goto_4
.end method

.method public resetPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupCount:I

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setMaxScrollable()V

    return-void
.end method

.method resetValues(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mResource:Landroid/content/res/Resources;

    if-eqz p1, :cond_0

    const v0, 0x7f0f0009

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_COLCNT:[I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getItemGap()[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_ITEM_GAP:[I

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->USE_GRACE_DECOR:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f001e

    goto :goto_0

    :cond_1
    const v0, 0x7f0f000a

    goto :goto_0
.end method

.method public setFocused(IZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    sput v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    sget v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    sput v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusAlbum:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez p2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eq v1, v5, :cond_4

    invoke-virtual {p0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->update(II)Z

    :cond_4
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mFocusIndex:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->update(II)Z

    goto :goto_0
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 15

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v12, :cond_1

    :cond_0
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    :cond_1
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    neg-float v9, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupCount:I

    add-int/lit8 v8, v12, -0x1

    move v7, v8

    move v5, v8

    move v4, v8

    move v3, v8

    const/4 v2, 0x0

    :goto_0
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupCount:I

    if-ge v2, v12, :cond_5

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v2

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v9, v12

    if-ge v2, v4, :cond_2

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraTop:F

    cmpg-float v12, v12, v9

    if-gtz v12, :cond_2

    move v4, v2

    :cond_2
    if-ge v2, v7, :cond_3

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    neg-float v12, v12

    cmpg-float v12, v12, v9

    if-gtz v12, :cond_3

    move v7, v2

    :cond_3
    if-ne v5, v8, :cond_4

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargBtm:F

    add-float/2addr v12, v13

    cmpl-float v12, v9, v12

    if-ltz v12, :cond_4

    move v5, v2

    :cond_4
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraBtm:F

    cmpl-float v12, v9, v12

    if-ltz v12, :cond_7

    move v3, v2

    :cond_5
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v7

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    neg-float v12, v12

    cmpl-float v12, v0, v12

    if-lez v12, :cond_8

    const/4 v6, 0x0

    :goto_1
    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpActiveStart:I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v12

    neg-float v12, v12

    cmpl-float v12, v0, v12

    if-lez v12, :cond_a

    const/4 v6, 0x0

    :goto_2
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v12, v12, v7

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v6, v12, :cond_c

    add-int/lit8 v12, v7, 0x1

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroupCount:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpVisibleStart:I

    :goto_3
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v5

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargBtm:F

    add-float/2addr v12, v13

    cmpg-float v12, v0, v12

    if-gtz v12, :cond_d

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpActiveEnd:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v5

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mSpaceHeight:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    sub-float v11, v12, v13

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v12, :cond_6

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v12

    sub-float/2addr v11, v12

    :cond_6
    cmpg-float v12, v0, v11

    if-gtz v12, :cond_f

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_5
    if-lez v6, :cond_11

    add-int/lit8 v12, v6, -0x1

    invoke-static {v5, v12}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpVisibleEnd:I

    :goto_6
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v4

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraTop:F

    cmpl-float v12, v0, v12

    if-lez v12, :cond_12

    const/4 v6, 0x0

    :goto_7
    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpContentStart:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v12, v3

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mScrollable:F

    sub-float v0, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraBtm:F

    cmpg-float v12, v0, v12

    if-gtz v12, :cond_14

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_8
    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpContentEnd:I

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargTop:F

    add-float/2addr v12, v0

    neg-float v10, v12

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-int v6, v12

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v6, v12

    goto/16 :goto_1

    :cond_a
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraMarginTopPixel:I

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->convY(I)F

    move-result v12

    add-float/2addr v12, v0

    neg-float v10, v12

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_b

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_b
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-int v6, v12

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v6, v12

    goto/16 :goto_2

    :cond_c
    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v12

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpVisibleStart:I

    goto/16 :goto_3

    :cond_d
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mValidH:F

    sub-float v13, v0, v13

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mMargBtm:F

    sub-float/2addr v13, v14

    sub-float v10, v12, v13

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_e

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_e
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/lit8 v6, v12, 0x1

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v12, v6

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_4

    :cond_f
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v13, v0, v11

    sub-float v10, v12, v13

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_10

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_10
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v12, v6

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_5

    :cond_11
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpActiveEnd:I

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mGrpVisibleEnd:I

    goto/16 :goto_6

    :cond_12
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraTop:F

    sub-float v10, v12, v0

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_13

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_13
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-int v6, v12

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v6, v12

    goto/16 :goto_7

    :cond_14
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->mExtraBtm:F

    sub-float v13, v0, v13

    sub-float v10, v12, v13

    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_15

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_15
    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v12, v10, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v12, v6

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_8
.end method
