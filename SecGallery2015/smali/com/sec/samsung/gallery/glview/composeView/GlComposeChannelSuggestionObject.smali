.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    }
.end annotation


# static fields
.field private static final IS_N_OS:Z

.field private static final MSG_UPDATE_IMAGE:I = 0x10

.field private static final RES_ID_CANCEL:I = 0x3

.field private static final RES_ID_CARD_BG:I = 0x1

.field private static final RES_ID_DECOR_COUNT_LABEL:I = 0x20

.field private static final RES_ID_DEFAULT_IMAGE:I = 0x64

.field private static final RES_ID_DIVIDER:I = 0x2

.field private static final RES_ID_SUGGESTION_ADD_ALL_LABEL:I = 0x5

.field private static final RES_ID_SUGGESTION_TITLE_LABEL:I = 0x4

.field private static final USE_LOW_STORAGE_MODE:Z

.field private static final USE_NAVIGATION_BAR:Z


# instance fields
.field private mActionbarHeight:F

.field private mAddAllButtonHeight:F

.field private mAddAllButtonPadding:F

.field private final mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

.field private mBGCanvasHeightPixel:I

.field private mBGCanvasWidthPixel:I

.field private mBGHeight:F

.field private mBGWidth:F

.field private mCancelButtonPixelSize:F

.field private mCancelButtonSizePixel:F

.field private mCancelButtonTopMarginPixel:F

.field private final mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private mCardBGHeightPixel:F

.field private mCardBGSidePaddingPixel:F

.field private mCardBGTopPaddingPixel:F

.field private mCardBGWidthPixel:F

.field private final mContext:Landroid/content/Context;

.field private mDefaultImageSizePixel:F

.field private mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

.field private mDividerHeightPixel:F

.field private mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;

.field private mExtraHeight:F

.field private mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mHeightViewRatio:F

.field private mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

.field private final mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mIsPortraitMode:Z

.field private mLastFocus:I

.field private mLoaderBitmapListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private mMaxItemCount:I

.field private mNavigationPixelSize:I

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

.field private mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mResources:Landroid/content/res/Resources;

.field private mSuggestionItem:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mThumbGap:F

.field private mThumbHeightPixel:F

.field private mThumbLeftMarginPixel:F

.field private mThumbRightMarginPixel:F

.field private mThumbnailObjArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleBottomMarginPixel:F

.field private mTitleHeight:F

.field private mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

.field private mTitleStartLeftMarginPixel:F

.field private mTitleStartTopMarginPixel:F

.field private mTitleWidth:F

.field private mWidthViewRatio:F

.field private final readyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->USE_LOW_STORAGE_MODE:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasWidthPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasHeightPixel:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mIsPortraitMode:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setVisibility(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    const v2, 0x7f10007f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->readyDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    return p1
.end method

.method static synthetic access$3004(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    return v0
.end method

.method static synthetic access$3006(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasWidthPixel:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasHeightPixel:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLoaderBitmapListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbGap:F

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartLeftMarginPixel:F

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartTopMarginPixel:F

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleBottomMarginPixel:F

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleHeight:F

    return v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDefaultImageSizePixel:F

    return v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->readyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonHeight:F

    return v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbLeftMarginPixel:F

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerHeightPixel:F

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonTopMarginPixel:F

    return v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonPixelSize:F

    return v0
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleWidth:F

    return v0
.end method

.method static synthetic access$6400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isLowStorageStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonPadding:F

    return v0
.end method

.method private drawCardBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F

    float-to-int v3, v4

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const v5, 0x7f1000d6

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    const v5, 0x7f020079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    invoke-virtual {v1, v2, v3, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGHeightPixel:F

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    return-object p1
.end method

.method private getActionbarHeight(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x7f0b0039

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x7f0b0038

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private getNavigationPixelWidth()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPixelSize:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNavigationPosition()F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPixelSize:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPixelSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method private initCardBG()V
    .locals 5

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasWidthPixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasHeightPixel:I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasWidthPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasHeightPixel:I

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawCardBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private isLowStorageStatus()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->USE_LOW_STORAGE_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_low_storage"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetAttributes(ZZ)V
    .locals 9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPixelSize:I

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGHeightPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonPixelSize:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    invoke-direct {p0, v5, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getActionbarHeight(FZ)F

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mActionbarHeight:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getNavigationPixelWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGHeightPixel:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b02c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleHeight:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0b02c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0b02c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleWidth:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b02be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonHeight:F

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_0
    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getNavigationPixelWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDefaultImageSizePixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonPadding:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartLeftMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartTopMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleBottomMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonTopMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbLeftMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbLeftMarginPixel:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F

    add-float/2addr v6, v7

    sub-float v3, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F

    add-float/2addr v5, v4

    div-float v5, v3, v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    :goto_1
    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbGap:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->updateThumbnailObjArray()V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerHeightPixel:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    if-eqz p2, :cond_1

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b02b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    :goto_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareRetryProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b07f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_3
    const/4 v2, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b0820

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0824

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    :cond_4
    add-int v5, v2, v0

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mExtraHeight:F

    return-void

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_7
    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_3
    add-int/2addr v0, v5

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_3
.end method

.method private updateThumbnailObjArray()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v3, p0, v4, p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addSuggestionImage(ILcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method

.method createSuggestionCard(ZZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mIsPortraitMode:Z

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mIsPortraitMode:Z

    invoke-direct {p0, v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->resetAttributes(ZZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->initCardBG()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v4, v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    sub-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mActionbarHeight:F

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mExtraHeight:F

    sub-float v3, v4, v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getNavigationPosition()F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setPos(FFF)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    invoke-virtual {p0, v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setSize(FF)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setVisibility(Z)V

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v4, p0, v7, p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;)V

    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v4, p0, v7, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;)V

    :cond_3
    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v4, p0, v7, p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isLowStorageStatus()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setUseTouchRippleEvent(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;)V

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v4, p0, v7, p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setUseTouchRippleEvent(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;)V

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v4, p0, v7, p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    sub-int/2addr v4, v7

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setVisibility(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;)V

    :goto_3
    return-void

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setVisibility(Z)V

    goto :goto_3
.end method

.method public drawBorder(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveLeft()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveRight()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setFocusBorderVisible(Z)V

    move v0, v1

    goto/16 :goto_0
.end method

.method handleOnClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    return-void
.end method

.method isFocusBorderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getX()F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$6700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetLayout(FZZ)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->resetAttributes(ZZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->initCardBG()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getNavigationPosition()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setPos(FFF)V

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {v2, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setVisibility(Z)V

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    if-ge v6, v0, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setVisibility(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mIsPortraitMode:Z

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setVisibility(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setVisibleRange(F)V

    return-void

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mImageCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setVisibility(Z)V

    goto :goto_2
.end method

.method setLoaderBitmapListener(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLoaderBitmapListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    return-void
.end method

.method public setVisibleRange(F)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getX()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setPos(FFF)V

    return-void
.end method
