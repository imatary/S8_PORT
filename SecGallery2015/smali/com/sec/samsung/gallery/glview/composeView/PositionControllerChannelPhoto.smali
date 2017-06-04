.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerChannelPhoto.java"


# static fields
.field private static final DEFAULT_TRIP_LAYOUT_ROW_CNT:I = 0x2

.field private static GRID_COLCNT:[I = null

.field private static final GRID_THM_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "PosControllerChannPhoto"

.field private static final USE_DREAM_LAYOUT:Z

.field private static final USE_GRACE_LAYOUT:Z


# instance fields
.field private final LOCATION_BOX_NEED_ADD:I

.field private final LOCATION_BOX_NEED_REMOVED:I

.field private final LOCATION_BOX_POST_REMOVED:I

.field private final NO_FOCUS:I

.field private final TITLE_BOX_NEED_ADD:I

.field private final TITLE_BOX_NEED_REMOVE:I

.field private final TITLE_BOX_POST_REMOVED:I

.field private mExtraObjectsHeight:F

.field private final mHasTitleView:Z

.field private mLocationFocusStatus:I

.field private mTitleFocusStatus:I

.field private mTitleInFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_COLCNT:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_THM_TYPES:[I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_LAYOUT:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_DREAM_LAYOUT:Z

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->NO_FOCUS:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->TITLE_BOX_POST_REMOVED:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->TITLE_BOX_NEED_ADD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->TITLE_BOX_NEED_REMOVE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->LOCATION_BOX_POST_REMOVED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->LOCATION_BOX_NEED_ADD:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->LOCATION_BOX_NEED_REMOVED:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleInFocus:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mHasTitleView:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    return-void
.end method

.method private calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 14

    iget-object v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v5, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    iput v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    div-int/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapW:F

    add-int/lit8 v13, v6, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v6

    div-float v4, v11, v12

    move v2, v4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapW:F

    add-float v1, v4, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapH:F

    add-float v0, v2, v11

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleH:F

    add-float/2addr v11, v2

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginBottom:F

    add-float v3, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleW:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTop:F

    neg-float v11, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    const/4 v10, 0x0

    :goto_0
    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v10, v11, :cond_1

    rem-int v11, v10, v6

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v4, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidW:F

    aget v12, v8, v10

    sub-float/2addr v11, v12

    aput v11, v8, v10

    :cond_0
    div-int v11, v10, v6

    int-to-float v11, v11

    mul-float/2addr v11, v0

    add-float/2addr v11, v3

    aput v11, v9, v10

    aput v4, v7, v10

    aput v2, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    int-to-float v11, v11

    iget v12, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupVGap:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleH:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginBottom:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    return v11
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v9, v0

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v4, v9, :cond_0

    iget-object v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v10, 0x0

    aget v3, v9, v10

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v10, v10, v4

    add-float v5, v9, v10

    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    add-float/2addr v9, v5

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    add-float/2addr v10, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v4, v9, :cond_4

    if-eqz v8, :cond_3

    iget v7, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    :cond_3
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    add-float/2addr v9, v5

    sub-float/2addr v9, v3

    sub-float v6, v9, v7

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_4
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    add-float/2addr v9, v5

    sub-float v6, v9, v3

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    add-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    sub-float v6, v5, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public static getGridColumnsCount(Landroid/content/res/Resources;Z)[I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_DECOR:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0018

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0f0016

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_DECOR:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f001d

    goto :goto_0

    :cond_2
    const v0, 0x7f0f0017

    goto :goto_0
.end method

.method public static getGridRowCount(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)I
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewTotalTimeTitleHeight()I

    move-result v7

    int-to-float v6, v7

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f0b01ee

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    :goto_1
    int-to-float v2, v7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v1, v7, v6

    div-float v3, v1, v2

    int-to-float v7, p1

    mul-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_DREAM_LAYOUT:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_LAYOUT:Z

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v5, 0x2

    :cond_1
    return v5

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method

.method private updateAddButtonBorder(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz p1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->drawAddButtonBorder(Z)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->drawAddButtonBorder(Z)V

    move v1, v3

    goto :goto_0
.end method

.method private updateExtraTop()V
    .locals 7

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargTop:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExpandRatio:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    add-float/2addr v4, v5

    neg-float v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargTop:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExpandRatio:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    neg-float v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargBtm:F

    add-float/2addr v4, v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExpandRatio:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraBtm:F

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->convY(I)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraObjectsHeight:F

    return-void

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    goto :goto_0
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, v0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_29

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    iput v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    goto :goto_0

    :pswitch_0
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v5, v6, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_6
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleInFocus:Z

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_8

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_8

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto :goto_1

    :cond_9
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleInFocus:Z

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_c

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_c

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v9, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_d

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_d
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_3

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    goto/16 :goto_1

    :cond_e
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_11

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_f

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_f

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    :cond_10
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_11
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_12

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_12

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_12
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v5, v3, 0x1

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_15
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_16

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_16

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_16
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_2
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-ltz v5, :cond_17

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int/2addr v3, v5

    goto/16 :goto_1

    :cond_17
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-gez v5, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v10, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    if-ne v5, v10, :cond_1c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_18

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_18

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_18
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_19

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_19
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_1c
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_1d

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1f

    :cond_1d
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_1e

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1e
    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    :cond_1f
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v5, v3, -0x1

    if-ltz v5, :cond_20

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_20
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v10, :cond_26

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_21

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_21

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_21
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_23

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_22

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_22
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_23
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_25
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_26
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_27

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_27
    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    :cond_28
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_29
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_2a

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_2a

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_2a
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateMemberButtonBorder(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v2

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected fitToLine(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v7, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, v0

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v7, :cond_0

    iget-object v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v8, 0x0

    aget v2, v7, v8

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    add-float/2addr v7, v2

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v3, v7, :cond_2

    sub-float v7, v4, v2

    sub-float v5, v7, v6

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    sub-float v5, v4, v2

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    add-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    sub-float v5, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public getCenteredScroll(F)F
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginBottom:F

    add-float/2addr v2, v3

    add-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollableMax:F

    goto :goto_0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getScrollForIndex(I)F

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getValidScroll(F)F

    move-result v4

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemH:F

    sub-float v1, v8, v9

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->convY(I)F

    move-result v9

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    :cond_0
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v8

    add-float/2addr v7, v8

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v8

    add-float/2addr v7, v8

    :cond_2
    sub-float v8, v4, v7

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getScrollForIndex(I)F

    move-result v8

    add-float v3, v8, v7

    :goto_0
    return v3

    :cond_3
    add-float v8, v4, v1

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4

    sub-float v3, v5, v1

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTopPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginLeftPixel:I

    return-void
.end method

.method initTitleDecorator()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    return-void
.end method

.method public moveTo(I)Z
    .locals 23

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getShareProgressObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v18

    if-nez v3, :cond_2

    if-nez v20, :cond_2

    if-nez v18, :cond_2

    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v21, v3

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddContactObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    move-result-object v21

    if-nez v21, :cond_6

    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v19, 0x1

    :cond_4
    :goto_2
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_12

    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    if-eqz v20, :cond_5

    if-nez v19, :cond_c

    :cond_5
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateAddButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v21, v3

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddContactObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    goto :goto_1

    :cond_7
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v21, v8

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v21

    if-nez v21, :cond_8

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v21, v8

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    goto :goto_1

    :cond_9
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    goto :goto_1

    :cond_a
    const/16 v19, 0x0

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v21, v8

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v21

    if-nez v21, :cond_d

    const/4 v5, 0x0

    :cond_c
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_10

    if-nez v5, :cond_10

    move-object/from16 v21, v20

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateMemberButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_c

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    if-eqz v5, :cond_c

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_3

    :cond_10
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateAddButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_11
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v21, v8

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v21

    if-nez v21, :cond_14

    const/4 v5, 0x0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    if-eqz v5, :cond_19

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_17

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->drawAddButtonBorder(Z)V

    :cond_13
    :goto_4
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateMemberButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_15
    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_12

    if-nez v5, :cond_16

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    if-eqz v5, :cond_12

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_18

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    goto :goto_4

    :cond_18
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    goto :goto_4

    :cond_19
    if-eqz v19, :cond_13

    check-cast v20, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    goto :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGrpContentStart:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    if-gez v21, :cond_34

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_1c
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    :cond_1d
    instance-of v0, v7, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    move/from16 v21, v0

    if-eqz v21, :cond_23

    const/4 v9, 0x1

    :cond_1e
    :goto_6
    if-eqz v9, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1f

    if-eqz v12, :cond_2e

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2e

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-nez v21, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v14, 0x0

    if-eqz v11, :cond_20

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_20

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    :cond_20
    if-eqz v14, :cond_21

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_21

    if-eqz v12, :cond_2e

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v17, :cond_22

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eqz v20, :cond_29

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_29

    move-object/from16 v21, v20

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isVisible()Z

    move-result v21

    if-eqz v21, :cond_29

    check-cast v20, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    move-result v21

    if-eqz v21, :cond_2d

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_23
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_25

    const/4 v9, 0x1

    :goto_7
    goto/16 :goto_6

    :cond_25
    const/4 v9, 0x0

    goto :goto_7

    :cond_26
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    if-nez v21, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    :cond_27
    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_28
    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_29
    if-nez v5, :cond_2d

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_2a

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->drawAddButtonBorder(Z)V

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_2a
    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v21, v8

    check-cast v21, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v21

    if-eqz v21, :cond_2b

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_2b
    if-eqz v18, :cond_2c

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_2c
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_2d
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_2e
    if-eqz v9, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_31

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_31

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_31
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v17, :cond_33

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_34
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v13, v0, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleInFocus:Z

    move/from16 v21, v0

    if-eqz v21, :cond_38

    :cond_35
    const/16 v21, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mFocusChangedFlag:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_36

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    :cond_37
    :goto_9
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_38
    const/16 v21, 0x0

    goto/16 :goto_8

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    if-eqz v21, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3c

    if-nez v12, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v14, 0x0

    if-eqz v11, :cond_3a

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3a

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    :cond_3a
    if-eqz v14, :cond_3b

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3b

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_9

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v13, v0, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    if-eqz v21, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_37

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    move/from16 v21, v0

    if-nez v21, :cond_3e

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleFocusStatus:I

    :cond_3e
    if-nez v10, :cond_3f

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_42

    if-nez v12, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v14, 0x0

    if-eqz v11, :cond_40

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_40

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    :cond_40
    if-eqz v14, :cond_41

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_41

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    :cond_41
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_37

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLocationFocusStatus:I

    goto/16 :goto_9

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v16, :cond_43

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v16

    :cond_43
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_a
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b01db

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginLeftPixel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b01dc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginRightPixel:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v14}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v14, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v14}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v13

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0b01df

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v13, v14

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-boolean v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_LAYOUT:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b02b4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v3, v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionCardVisibility()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b03e2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v5, v14

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareProgress()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b0086

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v4, v14

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareRetryProgress()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b07f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v4, v14

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v14

    sub-int v14, v13, v14

    add-int/2addr v14, v3

    add-int/2addr v14, v4

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraMarginTopPixel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraMarginTopPixel:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginTopPixel:I

    sget-boolean v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_LAYOUT:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b01da

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    :goto_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginBottomPixel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v9

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_b

    const/4 v8, 0x1

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginTopPixel:I

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMarginTopPixel:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleWidthPixel:I

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->resetValues(Z)V

    sget-object v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_COLCNT:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLevel:I

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLevel:I

    aget v14, v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->convX(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapW:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLevel:I

    aget v14, v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->convY(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapH:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->convX(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    int-to-float v15, v15

    div-float v10, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidW:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidW:F

    div-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v14, 0x1

    invoke-static {v11, v14, v12}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidW:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemGapW:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mPhotoLineCount:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemW:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mItemH:F

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNeedShowSharedFriendsBar:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b006e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v3, v14

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f0b0083

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v14, "PosControllerChannPhoto"

    const-string/jumbo v15, "resetAttributes err "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public resetPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupVGap:F

    sub-float/2addr v2, v4

    :cond_1
    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollableMax:F

    :goto_2
    return-void

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollableMax:F

    goto :goto_2
.end method

.method resetValues(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->USE_GRACE_LAYOUT:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleH:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginTop:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mTitleTextMarginBottom:F

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mResource:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_COLCNT:[I

    return-void
.end method

.method public setLocationFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->updateExtraTop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCount:I

    move/from16 v16, v0

    add-int/lit8 v10, v16, -0x1

    move v9, v10

    move v7, v10

    move v6, v10

    move v5, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargTop:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_5

    const/4 v15, 0x0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroupCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    aget-object v3, v16, v4

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v12, v12, v16

    if-ge v4, v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    move/from16 v16, v0

    cmpg-float v16, v16, v12

    if-gtz v16, :cond_1

    move v6, v4

    :cond_1
    if-ge v4, v9, :cond_2

    neg-float v0, v11

    move/from16 v16, v0

    cmpg-float v16, v16, v12

    if-gtz v16, :cond_2

    move v9, v4

    :cond_2
    if-ne v7, v10, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargBtm:F

    move/from16 v16, v0

    add-float v16, v16, v15

    cmpl-float v16, v12, v16

    if-ltz v16, :cond_3

    move v7, v4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraBtm:F

    move/from16 v16, v0

    cmpl-float v16, v12, v16

    if-ltz v16, :cond_6

    move v5, v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    aget-object v3, v16, v9

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    move/from16 v17, v0

    sub-float v2, v16, v17

    neg-float v0, v11

    move/from16 v16, v0

    cmpl-float v16, v2, v16

    if-lez v16, :cond_7

    const/4 v8, 0x0

    :goto_2
    invoke-static {v9, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    aget-object v3, v16, v7

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move/from16 v16, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    move/from16 v17, v0

    sub-float v2, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargBtm:F

    move/from16 v16, v0

    add-float v16, v16, v15

    cmpg-float v16, v2, v16

    if-gtz v16, :cond_9

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_3
    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    aget-object v3, v16, v6

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    move/from16 v17, v0

    sub-float v2, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    move/from16 v16, v0

    cmpl-float v16, v2, v16

    if-lez v16, :cond_b

    const/4 v8, 0x0

    :goto_4
    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    aget-object v3, v16, v5

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move/from16 v16, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mScrollable:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    sub-float v2, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraBtm:F

    move/from16 v16, v0

    cmpg-float v16, v2, v16

    if-gtz v16, :cond_d

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_5
    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mGrpContentEnd:I

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mValidH:F

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    add-float v16, v11, v2

    move/from16 v0, v16

    neg-float v13, v0

    const/16 v16, 0x0

    cmpg-float v16, v13, v16

    if-gtz v16, :cond_8

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_8
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v16, v0

    div-float v16, v13, v16

    move/from16 v0, v16

    float-to-int v8, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v16, v0

    mul-int v8, v8, v16

    goto/16 :goto_2

    :cond_9
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    sub-float v17, v2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mMargBtm:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    sub-float v13, v16, v17

    const/16 v16, 0x0

    cmpg-float v16, v13, v16

    if-gtz v16, :cond_a

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_a
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v16, v0

    div-float v16, v13, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v16, v0

    mul-int v16, v16, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraTop:F

    move/from16 v16, v0

    sub-float v13, v16, v2

    const/16 v16, 0x0

    cmpg-float v16, v13, v16

    if-gtz v16, :cond_c

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_c
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v16, v0

    div-float v16, v13, v16

    move/from16 v0, v16

    float-to-int v8, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v16, v0

    mul-int v8, v8, v16

    goto/16 :goto_4

    :cond_d
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->mExtraBtm:F

    move/from16 v17, v0

    sub-float v17, v2, v17

    sub-float v13, v16, v17

    const/16 v16, 0x0

    cmpg-float v16, v13, v16

    if-gtz v16, :cond_e

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_e
    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v16, v0

    div-float v16, v13, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v16, v0

    mul-int v16, v16, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_5
.end method
