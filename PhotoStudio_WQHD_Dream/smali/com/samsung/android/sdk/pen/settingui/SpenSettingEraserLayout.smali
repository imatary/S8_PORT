.class public Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;
.super Landroid/widget/RelativeLayout;
.source "SpenSettingEraserLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;
    }
.end annotation


# static fields
.field private static CLEAR_ALL_BUTTON_HEIGHT:I = 0x0

.field private static final ERASER_VERSION:Ljava/lang/String; = "setting_eraser_layout_v42"

.field private static INDICATOR_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_WIDTH:I = 0x0

.field private static INDICATOR_WIDTH:I = 0x0

.field private static LAYOUT_HEIGHT_ERASER:I = 0x0

.field private static LAYOUT_WIDTH:I = 0x0

.field private static final RESET_MOVE_STATE_VALUE:I = -0x63

.field private static RIPPLE_EFFECT_OPACITY:I = 0x0

.field private static final SCREEN_UNIT:F = 360.0f

.field private static final SCREEN_WIDTH_WQHD_TB:I = 0x5f0

.field private static final SCREEN_WIDTH_WQHD_TB_SPECIAL:I = 0x5fc

.field private static final TAG:Ljava/lang/String; = "SpenSettingEraserLayout"

.field private static TOTAL_BG_MARGIN:I = 0x0

.field public static final VIEW_MODE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_SIZE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_TITLE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final btnBgPath:Ljava/lang/String; = "clear_all_btn_selector"

.field private static final clearAllButtonPath:Ljava/lang/String; = "clear_all_button"

.field private static final indicatorPath:Ljava/lang/String; = "snote_popup_bg_arrow"

.field private static final mDefaultPath:Ljava/lang/String; = ""

.field private static final mScale:F = 1.0f

.field private static final mSdkVersion:I

.field private static final showDialogActionPath:Ljava/lang/String; = "dialog_action_button"

.field private static final totalBgPath:Ljava/lang/String; = "note_handwriting_setting_bg"


# instance fields
.field private final handlerRotate:Landroid/os/Handler;

.field localDisplayMetrics:Landroid/util/DisplayMetrics;

.field private localLinearLayout:Landroid/widget/LinearLayout;

.field private mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

.field private mBodyLayout:Landroid/widget/RelativeLayout;

.field private mCanvasLayout:Landroid/widget/RelativeLayout;

.field private mCanvasSize:I

.field private mClearAllButton:Landroid/widget/Button;

.field private mClearAllButtonVisibility:I

.field private mClearAllLayout:Landroid/widget/RelativeLayout;

.field private final mClearAllListener:Landroid/view/View$OnClickListener;

.field private mCloseButton:Landroid/widget/TextView;

.field private final mCloseButtonListener:Landroid/view/View$OnClickListener;

.field private mCurrentEraserType:I

.field private mEraserContext:Landroid/content/Context;

.field private mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

.field private mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

.field private mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

.field private mEraserTypeLayout:Landroid/view/ViewGroup;

.field private mFirstLongPress:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

.field private mIndicator:Landroid/widget/ImageView;

.field private mIsFirstShown:Z

.field private mIsRotated:Z

.field private final mLastSetPosition:[I

.field mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLeftMargin:I

.field private mMovableRect:Landroid/graphics/Rect;

.field private mMoveSettingLayout:Z

.field private mNeedCalculateMargin:Z

.field private mNeedRecalculateRotate:Z

.field private mNeedRotateWhenSetPosition:Z

.field private mOldLocation:[I

.field private mOldMovableRect:Landroid/graphics/Rect;

.field private final mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

.field private final mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

.field private mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

.field private mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

.field private mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

.field private mStandardCanvasSize:I

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mViewMode:I

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

.field private mXDelta:I

.field private mYDelta:I

.field private requestLayoutDisable:Z

.field private final runnableRotate:Ljava/lang/Runnable;

.field private totalBg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsFirstShown:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsRotated:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mViewMode:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsFirstShown:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsRotated:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mViewMode:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLeftMargin:I

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTopMargin:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mXDelta:I

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mXDelta:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsRotated:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->rotatePosition()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->checkPosition()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mYDelta:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mYDelta:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    return-object v0
.end method

.method private bodyLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->eraserTypeLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserTypeLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserTypeLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    const/4 v4, -0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;-><init>(Landroid/content/Context;FLcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->clearAllButton()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserTypeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private checkPosition()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    if-nez v4, :cond_4

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v4, v0, v6

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_0

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    aget v4, v0, v7

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget v5, v0, v6

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v4, :cond_2

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    aget v5, v0, v7

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v4, :cond_3

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->CLEAR_ALL_BUTTON_HEIGHT:I

    sub-int v1, v4, v5

    goto :goto_0
.end method

.method private clearAllButton()V
    .locals 11

    const/16 v10, 0xfe

    const/16 v9, 0x47

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_clear_all:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    new-array v0, v6, [[I

    new-array v1, v7, [I

    const v3, 0x10100a7

    aput v3, v1, v8

    aput-object v1, v0, v8

    new-array v3, v8, [I

    aput-object v3, v0, v7

    new-array v2, v6, [I

    const/16 v3, 0xff

    invoke-static {v3, v10, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v8

    const/16 v3, 0xff

    invoke-static {v3, v10, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    const-string v5, "clear_all_button"

    const/high16 v6, -0x1000000

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    const/16 v4, 0xff

    invoke-static {v4, v10, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->bringToFront()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v6, "clear_all_btn_selector"

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 2

    const-string v0, "SpenSettingEraserLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_total_layout_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->eraser_total_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->eraser_clear_all_button_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->CLEAR_ALL_BUTTON_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_total_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->TOTAL_BG_MARGIN:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_IMAGE_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_IMAGE_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->initView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    return-void
.end method

.method private eraserTypeLayout()Landroid/view/ViewGroup;
    .locals 3

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localLinearLayout:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    :goto_0
    invoke-virtual {p1, v5, v5}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p2, v5, v5}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int v4, v2, v3

    if-le v4, p3, :cond_0

    sub-float/2addr v0, v6

    sub-float/2addr v1, v6

    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private getMovableRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    aget v2, v0, v4

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLeftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v0, v5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private initView()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->totalLayout()V

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    aput-object v2, v0, v1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setVisibility(I)V

    return-void
.end method

.method private rotatePosition()V
    .locals 14

    const v13, 0x3f7d70a4    # 0.99f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v8, "SpenSettingEraserLayout"

    const-string v9, "==== SettingEraser ===="

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "old  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    aget v8, v8, v11

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "view = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v5, v8

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v0, v8

    add-float v8, v2, v5

    div-float v1, v2, v8

    add-float v8, v6, v0

    div-float v7, v6, v8

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "left :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", right :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "top :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bottom :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v8, v1, v13

    if-lez v8, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    cmpl-float v8, v7, v13

    if-lez v8, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_3
    const-string v8, "SpenSettingEraserLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tMargin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    cmpg-float v8, v1, v12

    if-gez v8, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    cmpg-float v8, v7, v12

    if-gez v8, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3
.end method

.method private setListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setSPenSeekBarChangeListener(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private titleLayout()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v7, "snote_popup_bg_arrow"

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_IMAGE_WIDTH:I

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_IMAGE_HEIGHT:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_eraser_settings:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_eraser_settings:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_popup:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    :cond_0
    const-string v5, "monotype"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "default"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v7, "dialog_action_button"

    const/high16 v8, -0x1000000

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v11, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleView:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method private totalLayout()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setLayoutDirection(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v2, "setting_eraser_layout_v42"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->totalBg:Landroid/widget/ImageView;

    const-string v3, "note_handwriting_setting_bg"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->titleLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->bodyLayout()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SpenSettingEraserLayout"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserTypeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserTypeLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    goto :goto_0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mViewMode:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "SpenSettingEraserLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfig eraser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLocationOnScreen([I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLocationOnScreen([I)V

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsFirstShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 11

    if-ne p1, p0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    invoke-interface {v4, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    if-ne p1, p0, :cond_5

    if-nez p2, :cond_5

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsFirstShown:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIsFirstShown:Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllLayout:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->rotatePosition()V

    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setPosition(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    :try_start_2
    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLocationOnScreen([I)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v2, v4, [I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLeftMargin:I

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTopMargin:I

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v1, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->checkPosition()V

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRecalculateRotate:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ActionListener;

    :cond_0
    return-void
.end method

.method public setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v1, 0x5f0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v1, 0x5fc

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    goto :goto_1
.end method

.method public setClearAllButtonVisibility(I)V
    .locals 4

    const/4 v3, -0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->checkPosition()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->CLEAR_ALL_BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public setEraserInfoList([Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    :cond_0
    return-void
.end method

.method public setEraserListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    :cond_0
    return-void
.end method

.method public setIndicatorPosition(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, -0x63

    if-ne p1, v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$integer;->common_setting_layout_pading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p1, v0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->INDICATOR_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSdkVersion:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v5, :cond_3

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4, v4, p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    :goto_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v1, 0x5f0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    const/16 v1, 0x5fc

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    :cond_2
    :goto_2
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mStandardCanvasSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasSize:I

    goto :goto_2
.end method

.method public setPosition(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    aput p1, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLastSetPosition:[I

    aput p2, v3, v9

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->runnableRotate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->runnableRotate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_WIDTH:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButtonVisibility:I

    if-nez v3, :cond_5

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int p1, v3, v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    if-le p2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int p2, v3, v0

    :cond_2
    if-ltz p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v0, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v3, "SpenSettingEraserLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Position x,y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    aput v4, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    aput v4, v3, v9

    return-void

    :cond_5
    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->LAYOUT_HEIGHT_ERASER:I

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->CLEAR_ALL_BUTTON_HEIGHT:I

    sub-int v0, v3, v4

    goto/16 :goto_0
.end method

.method public setViewMode(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mViewMode:I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4

    const-string v1, "SpenSettingEraserLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->loadImage()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mClearAllButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$ViewListener;

    :cond_0
    return-void
.end method
