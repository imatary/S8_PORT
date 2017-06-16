.class public Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
.super Landroid/widget/RelativeLayout;
.source "SpenSettingRemoverLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;
    }
.end annotation


# static fields
.field private static BACKGROUND_ELEVATION_VALUE:I = 0x0

.field private static final ERASER_SIZE_MAX:I = 0xa

.field private static final IB_REMOVER_EXIT_ID:I = 0xb82f91

.field private static INDICATOR_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_WIDTH:I = 0x0

.field private static INDICATOR_WIDTH:I = 0x0

.field private static LAYOUT_HEIGHT_CUTTER:I = 0x0

.field private static LAYOUT_HEIGHT_REMOVER:I = 0x0

.field private static LAYOUT_WIDTH:I = 0x0

.field private static final REMOVER_VERSION:Ljava/lang/String; = "setting_remover_layout_v42"

.field private static final RESET_MOVE_STATE_VALUE:I = -0x63

.field private static RIPPLE_EFFECT_OPACITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenSettingRemoverLayout"

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

.field private static final mSdkVersion:I

.field private static final mViewMode:I = 0x0

.field private static final showDialogActionPath:Ljava/lang/String; = "dialog_action_button"

.field private static final totalBgPath:Ljava/lang/String; = "note_setting_bg"


# instance fields
.field private final handlerRotate:Landroid/os/Handler;

.field localDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

.field private mBodyLayout:Landroid/widget/RelativeLayout;

.field private mCanvasLayout:Landroid/widget/RelativeLayout;

.field private mClearAllButton:Landroid/widget/Button;

.field private mClearAllListener:Landroid/view/View$OnClickListener;

.field private mCloseButton:Landroid/widget/TextView;

.field private mCloseButtonListener:Landroid/view/View$OnClickListener;

.field private mCurrentCutterType:I

.field private mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

.field private mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

.field private mFirstLongPress:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

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

.field private mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioButton1:Landroid/widget/RadioButton;

.field private mRadioButton2:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRadioRipple1:Landroid/view/View;

.field private mRadioRipple2:Landroid/view/View;

.field private mRemoverContext:Landroid/content/Context;

.field private mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

.field private mResources:Landroid/content/res/Resources;

.field private final mScale:F

.field private final mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

.field private mSeekbar:Landroid/widget/RelativeLayout;

.field private mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

.field private mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

.field private mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

.field private mXDelta:I

.field private mYDelta:I

.field private requestLayoutDisable:Z

.field private final runnableRotate:Ljava/lang/Runnable;

.field private totalBg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mScale:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsFirstShown:Z

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

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

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mScale:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsFirstShown:Z

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLeftMargin:I

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTopMargin:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mXDelta:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mXDelta:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->checkPosition()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2700()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    return v0
.end method

.method static synthetic access$2800()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mYDelta:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mYDelta:I

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->rotatePosition()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    return-object v0
.end method

.method private bodyLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->remover_body_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->initRadioButton()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    const/4 v4, -0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;-><init>(Landroid/content/Context;FLcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setEnableSeekbar(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->clearAllButton()V

    return-void
.end method

.method private checkPosition()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v4, v0, v6

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_0

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    aget v4, v0, v7

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget v5, v0, v6

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v4, :cond_2

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    aget v5, v0, v7

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v4, :cond_3

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    goto :goto_0
.end method

.method private clearAllButton()V
    .locals 11

    const/16 v10, 0x6a

    const/16 v9, 0x4e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_clear_all:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    new-array v0, v7, [[I

    new-array v1, v6, [I

    const v3, 0x10100a7

    aput v3, v1, v8

    aput-object v1, v0, v8

    new-array v3, v8, [I

    aput-object v3, v0, v6

    new-array v2, v7, [I

    const/16 v3, 0xff

    const/16 v4, 0xf4

    invoke-static {v3, v4, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v8

    const/16 v3, 0xff

    const/16 v4, 0xf4

    invoke-static {v3, v4, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    const-string v5, "clear_all_button"

    const/high16 v6, -0x1000000

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    const/16 v4, 0xff

    const/16 v5, 0xf4

    invoke-static {v4, v5, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->bringToFront()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v6, "clear_all_btn_selector"

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 2

    const-string v0, "SpenSettingRemoverLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_total_layout_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->remover_layout_height_remover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->remover_layout_height_cutter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_IMAGE_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_IMAGE_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->RIPPLE_EFFECT_OPACITY:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->bg_elevation_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->BACKGROUND_ELEVATION_VALUE:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->initView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    return-void
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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    aget v2, v0, v4

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLeftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v0, v5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private initRadioButton()V
    .locals 14

    const/16 v13, 0x10

    const/4 v12, 0x2

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v11}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v9}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v7, 0x15

    if-le v6, v7, :cond_0

    const v5, -0x8f8f90

    const v0, -0xb95b2

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v6, v12, [[I

    new-array v7, v9, [I

    const v8, -0x10100a0

    aput v8, v7, v11

    aput-object v7, v6, v11

    new-array v7, v9, [I

    const v8, 0x10100a0

    aput v8, v7, v11

    aput-object v7, v6, v9

    new-array v7, v12, [I

    aput v5, v7, v11

    aput v0, v7, v9

    invoke-direct {v1, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v11}, Landroid/widget/RadioGroup;->setSoundEffectsEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setSoundEffectsEnabled(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ur"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ar"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    if-le v6, v13, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_line_by_line:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_line_by_line_talkback:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    const-string v7, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setSoundEffectsEnabled(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ur"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ar"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    if-le v6, v13, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_touched_area:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_touched_area_talkback:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    const-string v7, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    invoke-direct {v4, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v7, Lcom/samsung/android/spen/R$id;->remover_radio_riple_button1:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_line_by_line_talkback:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v7, Lcom/samsung/android/spen/R$id;->remover_radio_riple_button2:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_erase_touched_area_talkback:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    invoke-static {v9, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    invoke-static {v9, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$11;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    invoke-direct {v4, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method private initView()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->totalLayout()V

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    aput-object v2, v0, v1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    return-void
.end method

.method private rotatePosition()V
    .locals 14

    const v13, 0x3f7d70a4    # 0.99f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v8, "SpenSettingRemoverLayout"

    const-string v9, "==== SettingRemover ===="

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingRemoverLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "old  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingRemoverLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    aget v8, v8, v11

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    const-string v8, "SpenSettingRemoverLayout"

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

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v5, v8

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v0, v8

    add-float v8, v2, v5

    div-float v1, v2, v8

    add-float v8, v6, v0

    div-float v7, v6, v8

    const-string v8, "SpenSettingRemoverLayout"

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

    const-string v8, "SpenSettingRemoverLayout"

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

    const-string v8, "SpenSettingRemoverLayout"

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
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

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

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

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
    const-string v8, "SpenSettingRemoverLayout"

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

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setSPenSeekBarChangeListener(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method private titleLayout()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v5, "snote_popup_bg_arrow"

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_IMAGE_WIDTH:I

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_IMAGE_HEIGHT:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_eraser_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_eraser_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    const v4, 0xb82f91

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    :cond_0
    const-string v3, "monotype"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    const-string v4, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v4, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v4, 0x13

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v5, "dialog_action_button"

    const/high16 v6, -0x1000000

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method private totalLayout()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v1, "setting_remover_layout_v42"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->totalBg:Landroid/widget/ImageView;

    const-string v2, "note_setting_bg"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->BACKGROUND_ELEVATION_VALUE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setElevation(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->titleLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->bodyLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SpenSettingRemoverLayout"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    goto :goto_0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "SpenSettingRemoverLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfig remover "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLocationOnScreen([I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLocationOnScreen([I)V

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsFirstShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

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

    if-ne p1, p0, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    invoke-interface {v4, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    if-nez p2, :cond_7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$13;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$13;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x2

    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLocationOnScreen([I)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsFirstShown:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsFirstShown:Z

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->rotatePosition()V

    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z

    :cond_2
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setPosition(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_2
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    new-array v2, v4, [I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLeftMargin:I

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTopMargin:I

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedCalculateMargin:Z

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v1, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->checkPosition()V

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    :cond_0
    return-void
.end method

.method public setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    :cond_0
    return-void
.end method

.method public setIndicatorPosition(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, -0x63

    if-ne p1, v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$integer;->common_setting_layout_pading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p1, v0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mFirstLongPress:Z

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->INDICATOR_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSdkVersion:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iput v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRemoverSeekbarLayout:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setPosition(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    aput p1, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I

    aput p2, v3, v9

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->runnableRotate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->runnableRotate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_WIDTH:I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int p1, v3, v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    if-le p2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int p2, v3, v0

    :cond_2
    if-ltz p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v0, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v3, "SpenSettingRemoverLayout"

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

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    aput v4, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    aput v4, v3, v9

    return-void

    :cond_5
    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    goto :goto_0
.end method

.method public setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    :cond_0
    return-void
.end method

.method public setRemoverListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestLayoutDisable:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setVisibility(I)V
    .locals 6

    :try_start_0
    const-string v2, "SpenSettingRemoverLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVisibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v2, v2, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->loadImage()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->jumpDrawablesToCurrentState()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ViewListener;

    :cond_0
    return-void
.end method
