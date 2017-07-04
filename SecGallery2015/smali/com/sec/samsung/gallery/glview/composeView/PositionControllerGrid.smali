.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerGrid.java"


# static fields
.field private static GRID_COLCNT:[I = null

.field private static GRID_ITEM_GAP:[I = null

.field private static final GRID_THM_TYPES:[I

.field private static final IsTablet:Z

.field private static final IsVisualSearch:Z

.field private static final SEARCH_BG_TOP_MARGIN:F = 1.5f

.field private static final SEARCH_BOTTOM_THRESHOLD:F = 30.0f

.field private static final SEARCH_TOP_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "PositionControllerGrid"


# instance fields
.field private final CHECK_BOX_NEED_ADD:I

.field private final LOCATION_BOX_NEED_ADD:I

.field private final LOCATION_BOX_NEED_REMOVED:I

.field private final LOCATION_BOX_POST_REMOVED:I

.field private final NO_FOCUS:I

.field private final TITLE_BOX_NEED_ADD:I

.field private final TITLE_BOX_NEED_REMOVE:I

.field private final TITLE_BOX_POST_REMOVED:I

.field private mHasTitleView:Z

.field private mLocationFocusStatus:I

.field private mSearchBgHeightOffset:F

.field private mSearchBgWidthOffset:F

.field private mTitleFocusStatus:I

.field private mTitleInFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_COLCNT:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_THM_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->NO_FOCUS:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->TITLE_BOX_POST_REMOVED:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->TITLE_BOX_NEED_ADD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->TITLE_BOX_NEED_REMOVE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->LOCATION_BOX_POST_REMOVED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->LOCATION_BOX_NEED_ADD:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->LOCATION_BOX_NEED_REMOVED:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->CHECK_BOX_NEED_ADD:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleInFocus:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mHasTitleView:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgWidthOffset:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgHeightOffset:F

    return-void
.end method

.method private calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 14

    iget-object v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v5, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    iput v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    div-int/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapW:F

    add-int/lit8 v13, v6, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v6

    div-float v4, v11, v12

    move v2, v4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapW:F

    add-float v1, v4, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapH:F

    add-float v0, v2, v11

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTopGroupTitle:Z

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    add-float/2addr v11, v2

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottom:F

    add-float v3, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleW:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    neg-float v11, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    :goto_0
    const/4 v10, 0x0

    :goto_1
    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v10, v11, :cond_4

    rem-int v11, v10, v6

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v4, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

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

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTopGroupSearchTitle:Z

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    add-float/2addr v11, v2

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottom:F

    add-float v3, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleW:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchTitleTextMarginLeft:F

    sub-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    neg-float v11, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoTitle:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapH:F

    add-float v3, v2, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapH:F

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupVGap:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleW:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottom:F

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    goto :goto_0

    :cond_3
    move v3, v2

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleW:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    neg-float v11, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    add-float/2addr v11, v12

    iput v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    goto/16 :goto_0

    :cond_4
    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    int-to-float v11, v11

    iget v12, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupVGap:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottom:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    add-float/2addr v11, v12

    return v11
.end method

.method private calculateLineCount()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsDexMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->calculateLineCountDexMode()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->calculateLineCountNormal()V

    goto :goto_0
.end method

.method private calculateLineCountDexMode()V
    .locals 5

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_COLCNT:[I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b06bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(I)F

    move-result v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    :cond_0
    return-void
.end method

.method private calculateLineCountNormal()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f0f0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v5, v4, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(I)F

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    int-to-float v6, v6

    div-float v1, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    div-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    goto :goto_0
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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
    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v4, v9, :cond_3

    if-eqz v8, :cond_3

    iget v7, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    :cond_3
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    add-float/2addr v9, v3

    add-float/2addr v9, v7

    cmpg-float v9, v5, v9

    if-gez v9, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x41200000    # 10.0f

    add-float/2addr v7, v9

    :cond_4
    sub-float v9, v5, v3

    sub-float v6, v9, v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    add-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    sub-float v6, v5, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public static getGridColumnsCount(Landroid/content/res/Resources;ZLcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)[I
    .locals 8

    const v3, 0x7f0f001e

    const v6, 0x7f0f0010

    const v5, 0x7f0f000f

    const v4, 0x7f0f000a

    const v2, 0x7f0f0009

    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsDexMode:Z

    if-eqz v7, :cond_0

    const v2, 0x7f0f003c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v7, :cond_1

    const v2, 0x7f0f0012

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v7, :cond_4

    if-eqz p1, :cond_2

    const v2, 0x7f0f001b

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0f001c

    goto :goto_2

    :cond_3
    const v2, 0x7f0f0011

    goto :goto_2

    :cond_4
    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsPeopleView:Z

    if-nez v7, :cond_5

    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAllView:Z

    if-nez v7, :cond_5

    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mSuggestionPickerMode:Z

    if-eqz v7, :cond_8

    :cond_5
    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    iget-boolean v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_e

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz p1, :cond_9

    move v2, v5

    :goto_4
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_1

    :cond_9
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0f003b

    goto :goto_4

    :cond_a
    move v2, v6

    goto :goto_4

    :cond_b
    if-eqz p1, :cond_c

    :goto_5
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_1

    :cond_c
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_5

    :cond_d
    move v2, v4

    goto :goto_5

    :cond_e
    if-eqz p1, :cond_f

    :goto_6
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_1

    :cond_f
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_10

    const v5, 0x7f0f003b

    goto :goto_6

    :cond_10
    move v5, v6

    goto :goto_6
.end method

.method public static getGridGap(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGridRowCount(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)I
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewTotalTimeTitleHeight()I

    move-result v8

    int-to-float v7, v8

    :goto_0
    const/4 v6, 0x0

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0b0296

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v6, v8

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0b01ee

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    :goto_2
    int-to-float v8, v8

    sub-float v2, v8, v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v1, v8, v7

    div-float v3, v1, v2

    int-to-float v8, p1

    mul-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    return v5

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const v8, 0x7f0b0295

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v6, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, v0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mHasTitleView:Z

    if-eqz v5, :cond_32

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_2f

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    iput v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    goto :goto_0

    :pswitch_0
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v5, v6, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_6
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleInFocus:Z

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

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

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto :goto_1

    :cond_9
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleInFocus:Z

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_d

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_d

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-eq v5, v10, :cond_e

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_10

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_f

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_f
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_3

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    goto/16 :goto_1

    :cond_10
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_13

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_11

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_11

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    :cond_12
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_13
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_14

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_14

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_14
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v5, v3, 0x1

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_16
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_17
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_18

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_18
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_19

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_19

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_19
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_2
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-ltz v5, :cond_1a

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int/2addr v3, v5

    goto/16 :goto_1

    :cond_1a
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-gez v5, :cond_20

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-ne v5, v9, :cond_20

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    if-ne v5, v9, :cond_20

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_1b

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_1b

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_1b
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1c

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_1c
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_1d
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_1e

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_1f
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_20
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_21

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_23

    :cond_21
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_22

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_22
    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    :cond_23
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v5, v3, -0x1

    if-ltz v5, :cond_24

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_24
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-ne v5, v9, :cond_2c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_25

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_25

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_25
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_28

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_26

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_26
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_27

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_27
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_28
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_29
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_2a
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_2b

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_2b
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_2c
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_2e

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_2d

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_2d
    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    :cond_2e
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_2f
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v5, :cond_30

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_2

    :cond_30
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_31

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_31

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_31
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_2

    :cond_32
    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateSearchBG(Z)V
    .locals 13

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v7, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v10, v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    const/4 v11, 0x0

    aget-object v3, v10, v11

    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    const/4 v2, 0x1

    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgWidthOffset:F

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(F)F

    move-result v11

    sub-float v8, v10, v11

    if-eqz v2, :cond_4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v4, v10, v11

    :goto_2
    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->rConvX(F)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->rConvY(F)I

    move-result v5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargTop:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v4, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    add-float v6, v10, v11

    if-eqz p1, :cond_2

    if-nez v7, :cond_5

    new-instance v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v10, v11, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    invoke-virtual {v7, v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :goto_3
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const v11, 0x7f020298

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v0, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_2
    :goto_4
    if-eqz v2, :cond_a

    const/high16 v10, -0x3f600000    # -5.0f

    cmpg-float v10, v6, v10

    if-gez v10, :cond_8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_5
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToFirst()V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgHeightOffset:F

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(F)F

    move-result v11

    add-float v4, v10, v11

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v7, v9, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    invoke-virtual {v7, v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v10

    if-ne v10, v9, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v10

    if-eq v10, v5, :cond_2

    :cond_7
    invoke-virtual {v0, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_4

    :cond_8
    add-float v10, v6, v4

    const/high16 v11, 0x41f00000    # 30.0f

    add-float/2addr v10, v11

    iget v11, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float/2addr v10, v6

    sub-float/2addr v10, v4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgHeightOffset:F

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(F)F

    move-result v11

    add-float v1, v10, v11

    const/4 v10, 0x0

    neg-float v11, v1

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_5

    :cond_b
    if-eqz v7, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected fitToLine(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v7, v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    add-float/2addr v7, v2

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v3, v7, :cond_2

    sub-float v7, v4, v2

    sub-float v5, v7, v6

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    sub-float v5, v4, v2

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    add-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    sub-float v5, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public getCenteredScroll(F)F
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottom:F

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
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollableMax:F

    goto :goto_0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupVGapPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTopPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginLeftPixel:I

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchTitleTextMarginLeftPixel:I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSelectionModeExtMarginPixel:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method initTitleDecorator()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    return-void
.end method

.method public moveTo(I)Z
    .locals 20

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTipCardObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getFocusedBtnType()I

    move-result v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mHasTitleView:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_4

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 p1, 0x4

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_3
    const/16 p1, 0x2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_7

    if-eqz v15, :cond_7

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    :cond_5
    const/16 p1, 0x4

    goto :goto_0

    :cond_6
    const/16 p1, 0x2

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    const/16 p1, 0x2

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 p1, 0x2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->moveTo(ZI)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->moveToTimeLineSplit(ZI)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    move v9, v10

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveStart:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    if-gez v17, :cond_42

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_f

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_f
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto :goto_2

    :cond_11
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveStart:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_13
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    goto/16 :goto_2

    :cond_15
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveStart:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->moveToTimeLineSplit(ZI)Z

    move-result v17

    if-eqz v17, :cond_18

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    goto/16 :goto_2

    :cond_19
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->moveToGrid()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveStart:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    goto/16 :goto_2

    :cond_1a
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_1b
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_40

    :cond_1c
    instance-of v0, v5, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_23

    const/4 v6, 0x1

    :cond_1d
    :goto_3
    if-eqz v6, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_32

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v17

    if-nez v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v8, :cond_1e

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_1e
    if-eqz v12, :cond_1f

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v17

    if-nez v17, :cond_32

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v14, :cond_20

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    if-eqz v8, :cond_21

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    const/16 v17, 0x0

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setGrpChkBorderVisible(ZI)V

    :cond_21
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2e

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_2e

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_23
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_25

    const/4 v6, 0x1

    :goto_4
    goto/16 :goto_3

    :cond_25
    const/4 v6, 0x0

    goto :goto_4

    :cond_26
    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    if-nez v17, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mHasTitleView:Z

    move/from16 v17, v0

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    :cond_29
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    goto/16 :goto_3

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_2b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v17, v0

    if-nez v17, :cond_2c

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    :cond_2d
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_30

    if-eqz v16, :cond_30

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_30

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    goto/16 :goto_5

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->moveToTimeLineSplit(ZI)Z

    move-result v10

    if-eqz v10, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    goto/16 :goto_5

    :cond_32
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mHasTitleView:Z

    move/from16 v17, v0

    if-nez v17, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v8, :cond_36

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_36
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v14, :cond_38

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3d

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_3d

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_3a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v17, v0

    if-nez v17, :cond_3b

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    :cond_3c
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3f

    if-eqz v16, :cond_3f

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_3f

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->moveTo(ZI)Z

    move-result v17

    if-eqz v17, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    goto/16 :goto_6

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    goto/16 :goto_6

    :cond_40
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v17, v0

    if-nez v17, :cond_41

    instance-of v0, v5, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    if-lez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_42
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleInFocus:Z

    move/from16 v17, v0

    if-eqz v17, :cond_45

    :cond_43
    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mFocusChangedFlag:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_44

    if-nez v7, :cond_46

    :cond_44
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_45
    const/16 v17, 0x0

    goto :goto_7

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v8, :cond_47

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    :cond_48
    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4a

    if-nez v7, :cond_4b

    :cond_4a
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v8, :cond_4c

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v17, 0x1

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setGrpChkBorderVisible(ZI)V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_8

    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4e

    if-nez v7, :cond_4f

    :cond_4e
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v8, :cond_50

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_50

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_50
    if-eqz v12, :cond_51

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_51

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_8

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_48

    :cond_53
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    move/from16 v17, v0

    if-nez v17, :cond_54

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleFocusStatus:I

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_55

    if-nez v7, :cond_56

    :cond_55
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v8, :cond_57

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_57

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_57
    if-eqz v12, :cond_58

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v17

    if-eqz v17, :cond_58

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    :cond_58
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_48

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLocationFocusStatus:I

    goto/16 :goto_8

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v13, :cond_5a

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v13

    :cond_5a
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_9
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 14

    const v13, 0x7f0b0204

    const v12, 0x7f0b0203

    const/4 v8, 0x0

    const v11, 0x7f0b0296

    const v10, 0x7f0b0295

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFaceTagObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSearchFaceObj:Z

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetLayout()V

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getSearchFaceObjHeight()F

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopForExtraObject:F

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_c

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginLeft:I

    :goto_2
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginLeftPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_d

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginRight:I

    :goto_3
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginRightPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    add-int/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getNotificationHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginBottom:I

    :goto_4
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginBottomPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_10

    if-nez v3, :cond_1

    if-eqz v2, :cond_f

    :cond_1
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginRightPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginRightPixel:I

    :cond_2
    :goto_5
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleHeightPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b0206

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTopPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottomPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b0205

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginLeftPixel:I

    :cond_3
    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsTablet:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleHeightPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b0206

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginTopPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginBottomPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b0205

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginLeftPixel:I

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v7, :cond_6

    if-nez v3, :cond_5

    if-eqz v2, :cond_13

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b08e2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginLeftPixel:I

    :cond_6
    :goto_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-eqz v7, :cond_8

    :cond_7
    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginBottomPixel:I

    :cond_8
    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_14

    const/4 v4, 0x1

    :goto_7
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopPixel:I

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopPixel:I

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleWidthPixel:I

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v7

    sput-object v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->resetValues(Z)V

    sget-object v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_COLCNT:[I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v7, v7, v8

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    sget-object v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convX(I)F

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapW:F

    sget-object v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_ITEM_GAP:[I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convY(I)F

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapH:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->calculateLineCount()V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemGapW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mPhotoLineCount:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemW:F

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mItemH:F

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopForExtraObject:F

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setMarginTopForTipCard()V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b01db

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    goto/16 :goto_2

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b01dc

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    goto/16 :goto_3

    :cond_e
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b01da

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    goto/16 :goto_4

    :cond_f
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginRightPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginRightPixel:I

    goto/16 :goto_5

    :cond_10
    if-nez v3, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginLeftPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginLeftPixel:I

    goto/16 :goto_5

    :cond_12
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginLeftPixel:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginLeftPixel:I

    goto/16 :goto_5

    :cond_13
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b08e2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleTextMarginLeftPixel:I

    goto/16 :goto_6

    :cond_14
    move v4, v8

    goto/16 :goto_7

    :catch_0
    move-exception v1

    const-string/jumbo v7, "PositionControllerGrid"

    const-string/jumbo v8, "resetAttributes err "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public resetPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupVGap:F

    sub-float/2addr v2, v4

    :cond_1
    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollableMax:F

    :goto_2
    sget-boolean v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->updateSearchBG(Z)V

    :cond_3
    return-void

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollableMax:F

    goto :goto_2
.end method

.method resetValues(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgWidthOffset:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSearchBgHeightOffset:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mResource:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-static {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridColumnsCount(Landroid/content/res/Resources;ZLcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_COLCNT:[I

    return-void
.end method

.method public setLocationFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    neg-float v12, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCount:I

    add-int/lit8 v10, v15, -0x1

    move v9, v10

    move v7, v10

    move v6, v10

    move v5, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargTop:F

    sget-boolean v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsTablet:Z

    if-eqz v15, :cond_0

    const/high16 v15, 0x40a00000    # 5.0f

    add-float/2addr v11, v15

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCount:I

    if-ge v4, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v4

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v12, v15

    if-ge v4, v6, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraTop:F

    cmpg-float v15, v15, v12

    if-gtz v15, :cond_1

    move v6, v4

    :cond_1
    if-ge v4, v9, :cond_2

    neg-float v15, v11

    cmpg-float v15, v15, v12

    if-gtz v15, :cond_2

    move v9, v4

    :cond_2
    if-ne v7, v10, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargBtm:F

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpl-float v15, v12, v15

    if-ltz v15, :cond_3

    move v7, v4

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraBtm:F

    cmpl-float v15, v12, v15

    if-ltz v15, :cond_7

    move v5, v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v9

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    neg-float v15, v11

    cmpl-float v15, v2, v15

    if-lez v15, :cond_8

    const/4 v8, 0x0

    :goto_1
    invoke-static {v9, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopForExtraObject:F

    move/from16 v16, v0

    add-float v15, v15, v16

    neg-float v15, v15

    cmpl-float v15, v2, v15

    if-lez v15, :cond_a

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v15, v15, v9

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v8, v15, :cond_c

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroupCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpVisibleStart:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v7

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargBtm:F

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_d

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v7

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSpaceHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargTop:F

    move/from16 v17, v0

    add-float v16, v16, v17

    sub-float v14, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v15, v15, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mSoftKeyHeightPixel:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->convY(I)F

    move-result v15

    sub-float/2addr v14, v15

    :cond_5
    cmpg-float v15, v2, v14

    if-gtz v15, :cond_f

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_5
    if-lez v8, :cond_11

    add-int/lit8 v15, v8, -0x1

    invoke-static {v7, v15}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpVisibleEnd:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v6

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraTop:F

    cmpl-float v15, v2, v15

    if-lez v15, :cond_13

    const/4 v8, 0x0

    :goto_7
    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v5

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraBtm:F

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_15

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_8
    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpContentEnd:I

    sget-boolean v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->IsVisualSearch:Z

    if-nez v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->updateSearchBG(Z)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    add-float v15, v11, v2

    neg-float v13, v15

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_9

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-int v8, v15

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v8, v15

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mTitleH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMarginTopForExtraObject:F

    move/from16 v16, v0

    add-float v15, v15, v16

    add-float/2addr v15, v2

    neg-float v13, v15

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_b

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_b
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-int v8, v15

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v8, v15

    goto/16 :goto_2

    :cond_c
    invoke-static {v9, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpVisibleStart:I

    goto/16 :goto_3

    :cond_d
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mValidH:F

    move/from16 v16, v0

    sub-float v16, v2, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mMargBtm:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    sub-float v13, v15, v16

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_e

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_e
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v15, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_4

    :cond_f
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v16, v2, v14

    sub-float v13, v15, v16

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_10

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_10
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v15, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_5

    :cond_11
    if-lez v7, :cond_12

    add-int/lit8 v15, v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v16, v0

    add-int/lit8 v17, v7, -0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpVisibleEnd:I

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mGrpVisibleEnd:I

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraTop:F

    sub-float v13, v15, v2

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_14

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_14
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-int v8, v15

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v8, v15

    goto/16 :goto_7

    :cond_15
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->mExtraBtm:F

    move/from16 v16, v0

    sub-float v16, v2, v16

    sub-float v13, v15, v16

    const/4 v15, 0x0

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_16

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_16
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v13, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v15, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_8
.end method
