.class public Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
.super Ljava/lang/Object;
.source "GlHoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;
    }
.end annotation


# static fields
.field private static final COUNT_COL:[I

.field private static final COUNT_ROW:[I

.field private static final HOVER_END_EVT:I = 0x3

.field private static final HOVER_EXIT_INTERVAL:J = 0x190L

.field private static final HOVER_EXIT_INTERVAL_LONG:J = 0x7d0L

.field private static final HOVER_ICON_TO_MORE_ICON:I = 0x6

.field private static final HOVER_NEXT_CRIT_DELTA:J = 0x50L

.field private static final HOVER_NEXT_SET:I = 0x5

.field private static final HOVER_PREV_SET:I = 0x4

.field private static final HOVER_START_ANIM:I = 0x2

.field private static final HOVER_START_INTERVAL:J = 0x1f4L

.field private static final HOVER_START_REQ:I = 0x1

.field private static final HOVER_STATE_ACTIVE:I = 0x2

.field private static final HOVER_STATE_DESTROYING:I = 0x3

.field private static final HOVER_STATE_IDLE:I = 0x0

.field private static final HOVER_STATE_STARTED:I = 0x1

.field private static final MAX_THUMBNAIL_COUNT:I = 0x9

.field private static final RES_ID_POPUP_ALBUM_TITLE:I = 0x2

.field private static final RES_ID_POPUP_ALBUM_TITLE_BACKGROUND:I = 0x3

.field private static final RES_ID_POPUP_BACKGROUND:I = 0x0

.field private static final RES_ID_SUBID_TITLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlHoverController"


# instance fields
.field private itemBitmapHeight:I

.field private itemBitmapWidth:I

.field private mActionBarHeight:F

.field private mActionBarMinHeight:F

.field private mActionBarMinWidth:F

.field private mActionBarWidth:F

.field private mActionBtnWidth:I

.field private mActiveCount:I

.field private mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mAlbumTitleHeight:F

.field private mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

.field private mAlbumTitleWidth:F

.field private final mAppearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mBackgroundShadowSize:F

.field private mBgCommonPaddingInside:F

.field private mBgHeight:F

.field private mBgPaddingBottom:F

.field private mBgPaddingLeft:F

.field private mBgPaddingRight:F

.field private mBgPaddingTop:F

.field private mBgWidth:F

.field private mButtonLeftMarginPixel:I

.field private mButtonRightMarginPixel:I

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private final mContext:Landroid/content/Context;

.field private mDeleteActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mDisappearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

.field private mEditActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mEnabled:Z

.field private mFirstIndex:I

.field private mFlashAnnotateActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

.field private final mGlHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mHoverScrollDetectArea:F

.field private mHoverState:I

.field private mHoveringOffsetXCoordinates:F

.field private mHoveringOffsetYCoordinates:F

.field private mImageAreaHeight:F

.field private mImageAreaWidth:F

.field private mIndex:I

.field private final mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

.field private mIsActionBarClicked:Z

.field private mIsActionBarEnabled:Z

.field private mIsAlbumTitleView:Z

.field private mIsExit:Z

.field private final mIsSet:Z

.field private final mIsTablet:Z

.field private mItemGapH:F

.field private mItemGapW:F

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mLabelHeightMargin:F

.field private mLabelHeightMarginTop:F

.field private final mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mLabelWidthMargin:F

.field private final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

.field private final mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

.field private final mListenerMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private mLoadedCount:I

.field private mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mNextRequested:Z

.field private mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

.field private mRatioHeight:F

.field private mRatioWidth:F

.field private mReqIndex:I

.field private mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mScreenBottom:F

.field private mScreenLeft:F

.field private mScreenRight:F

.field private mScreenTop:F

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShareActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mStartTime:J

.field private mThmH:F

.field private mThmW:F

.field private mThumbnailType:I

.field private mTotalCount:I

.field private mTransAnimForAlbumTitle:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

.field private mTransAnimForThumbnail:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

.field private final mUsePhotoIconWithoutBorder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->COUNT_COL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->COUNT_ROW:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;Z)V
    .locals 5

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsTablet:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePhotoIconWithoutBorder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mUsePhotoIconWithoutBorder:Z

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$11;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAppearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$12;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisappearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarEnabled()V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr2;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr2;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initAttribute()V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initActionBarListeners()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createObjects()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->startShowAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->checkRemoveHoverView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareNextSet(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverViewWithDelay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->startSCloudImageEdit(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLoadedCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLoadedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLoadedCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->drawLabel(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareSetAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareItemAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    return p1
.end method

.method private checkRemoveHoverView()V
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getActiveObject()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRemoveHoverView = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eq v0, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkYposForOutOfBottomScreen(F)F
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v1, v3

    sub-float v1, p1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v0, v3

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method private checkYposForOutOfUpperScreen(F)F
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    sub-float/2addr v0, v1

    add-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method private convX(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private convY(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioHeight:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private createActionBar(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->removeBGChildView()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setBackGroundView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonLeftMarginPixel:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setButtonsMargin(II)V

    const v6, 0x7f020054

    const v7, 0x7f020055

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDeleteActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createGlActionBarButton(IILcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/GlButtonView;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v7, 0x4

    invoke-virtual {v6, v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->addActionBarItem(Lcom/sec/samsung/gallery/glview/GlButtonView;I)V

    const v6, 0x7f020058

    const v7, 0x7f020059

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mShareActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createGlActionBarButton(IILcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/GlButtonView;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->addActionBarItem(Lcom/sec/samsung/gallery/glview/GlButtonView;I)V

    const v6, 0x7f020056

    const v7, 0x7f020057

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEditActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createGlActionBarButton(IILcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/GlButtonView;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v7, 0x2

    invoke-virtual {v6, v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->addActionBarItem(Lcom/sec/samsung/gallery/glview/GlButtonView;I)V

    const v6, 0x7f020052

    const v7, 0x7f020053

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFlashAnnotateActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createGlActionBarButton(IILcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/GlButtonView;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->addActionBarItem(Lcom/sec/samsung/gallery/glview/GlButtonView;I)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setVisibility(Z)V

    return-void
.end method

.method private createGlActionBarButton(IILcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/GlButtonView;
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlButtonView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setNormalDrawableId(I)V

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setPressedDrawableId(I)V

    invoke-virtual {v0, p3}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setHoverLabelListener(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setSize(II)V

    return-object v0
.end method

.method private createObjects()V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    :goto_0
    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    :goto_1
    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForThumbnail:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    :goto_2
    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    :cond_0
    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForAlbumTitle:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    new-array v2, v7, [Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v2, :cond_5

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_5
    return-void
.end method

.method private createVideoPlayIconObject(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getVideoPlayIconCanvas(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    :cond_1
    return-object v1
.end method

.method private drawAlbumTitleExt(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 15

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0178

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelWidthMargin:F

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->rConvX(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v1, v5

    const/high16 v1, -0x1000000

    move-object/from16 v0, p2

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v12

    if-nez v14, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    const v5, 0x7f020327

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v1

    if-ge v1, v13, :cond_1

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v2

    :goto_0
    const/high16 v4, -0x1000000

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x2

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    new-instance v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-direct {v14, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelWidthMargin:F

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->rConvX(F)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMargin:F

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->rConvY(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v14, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v1, 0x3

    const/4 v5, 0x2

    invoke-virtual {v14, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v1, 0x2

    invoke-virtual {v14, v4, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_1
    return-object v14

    :cond_1
    move v2, v13

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    if-eqz v4, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v1

    if-ge v1, v13, :cond_3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v2

    :goto_2
    const/high16 v8, -0x1000000

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v5, p2

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelWidthMargin:F

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->rConvX(F)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMargin:F

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->rConvY(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v14, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v1, 0x3

    const/4 v5, 0x2

    invoke-virtual {v14, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    goto :goto_1

    :cond_3
    move v2, v13

    goto :goto_2
.end method

.method private drawButtonLabelExt(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 12

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0178

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v1, v8

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getLabelNameId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/high16 v9, 0x44160000    # 600.0f

    invoke-static {v2, v8, v9, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    const v9, 0x7f020327

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v8, -0x1000000

    invoke-static {v7, v1, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    float-to-int v8, v1

    mul-int/lit8 v3, v8, 0x2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    float-to-int v8, v1

    mul-int/lit8 v3, v8, 0x2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    goto :goto_0
.end method

.method private drawLabel(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v3, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->drawButtonLabelExt(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v4, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsX()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v1, :cond_0

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_2

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    sub-int p2, v3, v4

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMarginTop:F

    add-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    sub-int p2, v3, v4

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    add-int p2, v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBtnWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    add-int p2, v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    div-float/2addr v4, v9

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMarginTop:F

    add-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_1
.end method

.method private drawVideoIcon(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAllChild()V

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createVideoPlayIconObject(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringIconSize()F

    move-result v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    :cond_2
    invoke-virtual {v1, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_3
    return-void
.end method

.method private exitFromHoverViewWithDelay()V
    .locals 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v2, 0x3

    const-wide/16 v6, 0x7d0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    return-void
.end method

.method private getCroppedBitmap(Lcom/sec/android/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getFrameRatio(I)F

    move-result v1

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p3, v0, v1, p2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRatio(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p3, v1, p2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropCenterByRatio(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method private getFrameRatio(I)F
    .locals 8

    const/4 v1, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    int-to-float v3, v5

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    cmpl-float v5, v0, v1

    if-nez v5, :cond_4

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    int-to-float v3, v5

    goto :goto_0

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    div-float v5, v2, v3

    div-float v6, v0, v4

    div-float v1, v5, v6

    rem-int/lit16 v5, p1, 0xb4

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v1, v5, v1

    goto :goto_1
.end method

.method private getHoverItemBottomPosition(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    :goto_0
    return p1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private getHoverItemLeftPosition(FZ)F
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getHoverItemRightPosition(FZ)F
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getHoverItemTopPosition(FZ)F
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getLabelNameId(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x7f0a03cd

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const p1, 0x7f0a014e

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const p1, 0x7f0a01b9

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f0a00e0

    goto :goto_0
.end method

.method private getVideoPlayIconCanvas(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 5

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v1, 0x7f0201b1

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    const v1, 0x7f020182

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mUsePhotoIconWithoutBorder:Z

    if-eqz v2, :cond_5

    const v1, 0x7f0201b6

    goto :goto_1

    :cond_5
    const v1, 0x7f0201b5

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v2, v4, :cond_2

    const v1, 0x7f020172

    goto :goto_1
.end method

.method private getXPostion()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsX()F

    move-result v0

    return v0
.end method

.method private getYPostion()F
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private initActionBarListeners()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mShareActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEditActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDeleteActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFlashAnnotateActionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-void
.end method

.method private isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 8

    const-wide/16 v6, 0x200

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v6, v7, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "group_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/LocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_0
    invoke-virtual {p1, v6, v7, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_2
    return v0

    :cond_3
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private itemWidthHeightRatio()Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v1, v5, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    goto :goto_1
.end method

.method private layoutActiveObject()V
    .locals 15

    sget-object v11, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->COUNT_COL:[I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    aget v1, v11, v12

    sget-object v11, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->COUNT_ROW:[I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    aget v8, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapW:F

    add-int/lit8 v13, v1, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v1

    div-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapH:F

    add-int/lit8 v13, v8, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v8

    div-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapW:F

    add-float v6, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapH:F

    add-float v5, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float v9, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v10, v11, v12

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackgroundShadowSize:F

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackgroundShadowSize:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v0, v11, v12

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setPos(FFF)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMarginTop:F

    add-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    if-ge v4, v11, :cond_1

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aget-object v7, v11, v4

    rem-int v11, v4, v1

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float v2, v11, v9

    div-int v11, v4, v1

    neg-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float v3, v11, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v3, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private prepareActiveObject()Z
    .locals 15

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v11, v11, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioWidth:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioHeight:F

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v10, -0x5

    and-long/2addr v6, v10

    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->updateAllActionBarButtonsVisibility(J)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarWidth:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->redrawActionBar()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setVisibility(Z)V

    :cond_1
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    if-ge v1, v9, :cond_9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aget-object v5, v9, v1

    iput v1, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v2, v9, v1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v4, v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getCroppedBitmap(Lcom/sec/android/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v10, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v9, v10, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_2
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    if-eqz v8, :cond_4

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_7

    :cond_4
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v9, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-nez v9, :cond_6

    const/4 v9, 0x0

    invoke-direct {p0, v5, v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setThumbnailAsRealRatio(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Landroid/graphics/Bitmap;Z)V

    :goto_3
    neg-int v9, v8

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->drawVideoIcon(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/android/gallery3d/data/MediaItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_2

    :cond_6
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    invoke-virtual {v5, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_3

    :cond_7
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v9, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-nez v9, :cond_8

    const/4 v9, 0x1

    invoke-direct {p0, v5, v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setThumbnailAsRealRatio(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Landroid/graphics/Bitmap;Z)V

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    invoke-virtual {v5, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    :goto_4
    const/16 v9, 0x9

    if-ge v1, v9, :cond_a

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aget-object v5, v9, v1

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private prepareItemAnimation()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareItemAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareItemAnimation canceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mReqMedia = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLoadedCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IILcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;)V

    aput-object v0, v6, v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->requestImage()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mStartTime:J

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    goto :goto_1
.end method

.method private prepareNextSet(I)V
    .locals 14

    const/4 v13, 0x4

    const/4 v1, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    const/16 v2, 0x9

    if-gt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    add-int v9, v0, p1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x9

    mul-int/lit8 v8, v0, 0x9

    if-gez v9, :cond_5

    move v9, v8

    :cond_2
    :goto_1
    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    add-int/lit8 v7, v0, 0x9

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    if-le v7, v0, :cond_3

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    :cond_3
    const-string/jumbo v0, "GlHoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareNextSet from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    sub-int v3, v7, v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    move v0, v10

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLoadedCount:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    if-gt v0, v13, :cond_7

    move v0, v11

    :goto_3
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    if-ge v6, v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    array-length v0, v0

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    :cond_4
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    add-int/2addr v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThumbnailType:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IILcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;)V

    aput-object v0, v12, v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->requestImage()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    if-le v9, v8, :cond_2

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mStartTime:J

    if-eqz p1, :cond_9

    move v10, v11

    :cond_9
    iput-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mNextRequested:Z

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    goto/16 :goto_0
.end method

.method private prepareSetAnimation()V
    .locals 8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string/jumbo v0, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareSetAnimation = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", State = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-ne v0, v2, :cond_6

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-eq v0, v2, :cond_2

    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getAlbumItemsCount()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    :goto_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareNextSet(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x14

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_0
.end method

.method private rConvX(F)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioWidth:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method private rConvY(F)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioHeight:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method private removeHoverView(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoverView removed message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForThumbnail:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForAlbumTitle:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    goto :goto_0
.end method

.method private declared-synchronized removeHoverViewInter(Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForThumbnail:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTransAnimForAlbumTitle:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v7

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->cancelImageRequest()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->recycle()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    const/4 v1, 0x0

    aput-object v1, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActiveCount:I

    const/4 v7, 0x0

    :goto_2
    const/16 v0, 0x9

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAllChild()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->removeBGChildView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->removeAllChild()V

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisappearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisappearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private repositionXwithCheckingLeftRightArea(FFF)F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenRight:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenRight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v1, v2

    sub-float p1, v0, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenRight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetXCoordinates:F

    sub-float p1, v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenLeft:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    div-float/2addr v1, v2

    add-float p1, v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetXCoordinates:F

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private repositionYwithCheckingTopBottomArea(FFFZ)F
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    div-float/2addr v2, v4

    sub-float p1, v1, v2

    move p2, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    sub-float p3, p1, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    sub-float p1, v1, v2

    :cond_0
    :goto_1
    return p1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    sub-float/2addr v1, p3

    add-float/2addr p1, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    sub-float/2addr v1, p3

    add-float/2addr p1, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    add-float p1, v1, v2

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    sub-float p1, v1, v2

    :goto_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v1, v4

    add-float/2addr v1, p1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    sub-float p2, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v1, v4

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float p3, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    sub-float p1, v1, v2

    goto/16 :goto_1

    :cond_5
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float p1, v1, v2

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float/2addr v1, v2

    add-float/2addr p1, v1

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    sub-float/2addr v1, p3

    add-float/2addr p1, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    add-float p1, v1, v2

    goto/16 :goto_1
.end method

.method private setActionBarButtonVisibility(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    invoke-virtual {v1, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setItemVisibility(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setActionBarEnabled()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v1

    iget-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAlbumTitleObject()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->drawAlbumTitleExt(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleImageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    return-void
.end method

.method private setBackgroundObject()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const v0, 0x7f02021f

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWindowCoordinateValue(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWindowCoordinateValue(F)F

    move-result v2

    cmpg-float v4, v3, v7

    if-gez v4, :cond_0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    :goto_0
    double-to-int v6, v4

    cmpg-float v4, v2, v7

    if-gez v4, :cond_1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    :goto_1
    double-to-int v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v4, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getNinePatch(IIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v5, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    return-void

    :cond_0
    float-to-double v4, v3

    goto :goto_0

    :cond_1
    float-to-double v4, v2

    goto :goto_1
.end method

.method private setBackgroundSize()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemWidthHeightRatio()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarMinHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarMinWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    goto :goto_1
.end method

.method private setThumbnailAsRealRatio(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Landroid/graphics/Bitmap;Z)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v4

    if-eqz p3, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    :goto_0
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    :goto_1
    div-float v3, v4, v5

    div-float v1, v0, v2

    sub-float v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    invoke-virtual {p1, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :goto_2
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmW:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mThmH:F

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    mul-float v6, v2, v3

    invoke-virtual {p1, v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_2

    :cond_3
    cmpl-float v6, v3, v8

    if-ltz v6, :cond_4

    div-float v6, v8, v3

    mul-float/2addr v6, v0

    invoke-virtual {p1, v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_2

    :cond_4
    mul-float v6, v2, v3

    invoke-virtual {p1, v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_2
.end method

.method private setUpForStartingShowAnimation()V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mGlActionBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->createActionBar(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mNextRequested:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareActiveObject()Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mNextRequested:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setBackgroundSize()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initAttribute()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setAlbumTitleObject()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareActiveObject()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingInside()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingLeft()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingRight()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingTop()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingBottom()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitleWidth:F

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getVisibleMarginTop(Landroid/content/Context;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setBackgroundObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->layoutActiveObject()V

    goto/16 :goto_1
.end method

.method private showHoverItem(FF)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsZ()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAppearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x96

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    move-wide v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMainObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsZ()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAppearAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x96

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    move-wide v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_1
.end method

.method private startSCloudImageEdit(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startShowAnimation()V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const-string/jumbo v6, "GlHoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startShowAnimation state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setUpForStartingShowAnimation()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getXPostion()F

    move-result v4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getYPostion()F

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getHoverItemTopPosition(FZ)F

    move-result v3

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getHoverItemBottomPosition(FZ)F

    move-result v0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    invoke-direct {p0, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getHoverItemLeftPosition(FZ)F

    move-result v1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    invoke-direct {p0, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->getHoverItemRightPosition(FZ)F

    move-result v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, v3, v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->repositionYwithCheckingTopBottomArea(FFFZ)F

    move-result v5

    invoke-direct {p0, v4, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->repositionXwithCheckingLeftRightArea(FFF)F

    move-result v4

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsTablet:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgWidth:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    mul-float/2addr v7, v9

    sub-float v5, v6, v7

    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->checkYposForOutOfUpperScreen(F)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->checkYposForOutOfBottomScreen(F)F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->showHoverItem(FF)V

    return-void
.end method

.method private updateAllActionBarButtonsVisibility(J)V
    .locals 11

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    :goto_1
    const-wide/16 v6, 0x4

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x3

    invoke-direct {p0, v6, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    :goto_3
    const-wide/32 v6, 0x40000

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v3, 0x1

    :goto_4
    const/4 v6, 0x1

    invoke-direct {p0, v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    :goto_5
    const/4 v6, 0x4

    invoke-direct {p0, v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    goto :goto_3

    :cond_7
    const-wide/16 v6, 0x200

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v2, 0x1

    :goto_6
    const/4 v6, 0x2

    invoke-direct {p0, v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarButtonVisibility(IZ)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_4
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSettingsObserver:Landroid/database/ContentObserver;

    :cond_1
    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mObjSet:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method public exitFromHoverView(Z)V
    .locals 8

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mAlbumTitle:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->clearHoveringState()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->clearHoveringState()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-nez v0, :cond_2

    const-string/jumbo v0, "GlHoverController"

    const-string/jumbo v1, "GlHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_3

    const-string/jumbo v0, "GlHoverController"

    const-string/jumbo v1, "GlHandler mRootView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x190

    move v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v2, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public initAttribute()V
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mRatioHeight:F

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageSetWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageSetHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageSetOffsetXCoordinatesFromOriginalThumbnail()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetXCoordinates:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageSetOffsetYCoordinatesFromOriginalThumbnail()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageGap()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapW:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageGap()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemGapH:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingInside()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingLeft()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingRight()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemWidthHeightRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->itemBitmapHeight:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPanoramaPaddingLeft()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingLeft:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPanoramaPaddingRight()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingRight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingTop()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingTop:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringBgPaddingBottom()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgCommonPaddingInside:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBgPaddingBottom:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarShadowSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mBackgroundShadowSize:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarMinWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarMinWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarMinHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mActionBarMinHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonLabelHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMargin:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonLabelWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelWidthMargin:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonLabelMarginTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabelHeightMarginTop:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonMarginLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonLeftMarginPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringActionBarButtonMarginRight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mButtonRightMarginPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getVisibleMarginTop(Landroid/content/Context;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->convY(I)F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenTop:F

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenBottom:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenLeft:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mScreenRight:F

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x41a00000    # 20.0f

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverScrollDetectArea:F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mImageAreaHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageOffsetXCoordinatesFromOriginalThumbnail()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetXCoordinates:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringImageOffsetYCoordinatesFromOriginalThumbnail()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoveringOffsetYCoordinates:F

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isIdleState()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHoverState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStart(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/android/gallery3d/data/MediaObject;IZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->isAlbumTitleTextLengthOver()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqMedia:Lcom/sec/android/gallery3d/data/MediaObject;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mEnabled:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverViewInter(Z)V

    goto :goto_0
.end method
