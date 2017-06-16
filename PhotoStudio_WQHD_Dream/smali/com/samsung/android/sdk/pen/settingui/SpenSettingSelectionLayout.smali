.class public Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;
.super Landroid/widget/RelativeLayout;
.source "SpenSettingSelectionLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ICON_COLOR:I

.field private static COMPOUND_DRAWABLE_PADDING:F = 0.0f

.field private static DRAWABLE_LASSO_SIZE:I = 0x0

.field private static INDICATOR_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_HEIGHT:I = 0x0

.field private static INDICATOR_IMAGE_WIDTH:I = 0x0

.field private static INDICATOR_WIDTH:I = 0x0

.field private static LASSO_BUTTON_WIDTH:F = 0.0f

.field private static LASSO_TEXT_GAP_PADDING:I = 0x0

.field private static LASSO_TEXT_TOP_PADDING:I = 0x0

.field private static LAYOUT_HEIGHT:I = 0x0

.field private static LAYOUT_WIDTH:I = 0x0

.field private static RECTANGLE_TEXT_TOP_PADDING:I = 0x0

.field private static final RESET_MOVE_STATE_VALUE:I = -0x63

.field private static RIPPLE_EFFECT_OPACITY:I = 0x0

.field private static final SELECTION_VERSION:Ljava/lang/String; = "setting_selection_layout_v42"

.field private static final TAG:Ljava/lang/String; = "SpenSettingSelectionLayout"

.field private static TOTAL_BG_MARGIN:I = 0x0

.field public static final VIEW_MODE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_TITLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final indicatorPath:Ljava/lang/String; = "snote_popup_bg_arrow"

.field private static final lassoPath:Ljava/lang/String; = "snote_toolbar_icon_lasso_mtrl"

.field private static final mDefaultPath:Ljava/lang/String; = ""

.field private static final mScale:F = 1.0f

.field private static final mSdkVersion:I

.field private static final rectPath:Ljava/lang/String; = "snote_toolbar_icon_rectangle_mtrl"

.field private static final showDialogActionPath:Ljava/lang/String; = "dialog_action_button"


# instance fields
.field private final handlerRotate:Landroid/os/Handler;

.field private mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

.field private mBodyLayout:Landroid/widget/RelativeLayout;

.field private mCanvasLayout:Landroid/widget/RelativeLayout;

.field private mCloseButton:Landroid/widget/TextView;

.field private mCloseButtonListener:Landroid/view/View$OnClickListener;

.field private mFirstLongPress:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

.field private mIndicator:Landroid/widget/ImageView;

.field private mIsFirstShown:Z

.field private mIsRotated:Z

.field private mLassoBg:Landroid/widget/ImageView;

.field private mLassoButton:Landroid/widget/Button;

.field private mLassoButtonLayout:Landroid/widget/RelativeLayout;

.field private mLassoImageIcon:Landroid/widget/ImageView;

.field private mLassoTextView:Landroid/widget/TextView;

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

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRectangleBg:Landroid/widget/ImageView;

.field private mRectangleButton:Landroid/widget/Button;

.field private mRectangleButtonLayout:Landroid/widget/RelativeLayout;

.field private mRectangleImageIcon:Landroid/widget/ImageView;

.field private mRectangleTextView:Landroid/widget/TextView;

.field private mSelectionContext:Landroid/content/Context;

.field private mSelectionTypeLayout:Landroid/view/ViewGroup;

.field private mSelectionTypeListner:Landroid/view/View$OnClickListener;

.field private mSelectionTypeView:[Landroid/view/View;

.field private mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

.field private mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

.field private mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

.field private mTempMovableRect:Landroid/graphics/Rect;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mViewMode:I

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

.field private mXDelta:I

.field private mYDelta:I

.field private final runnableRotate:Ljava/lang/Runnable;

.field private totalBg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const-string v0, "#676767"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->BUTTON_ICON_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsFirstShown:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mFirstLongPress:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mViewMode:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;F)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsFirstShown:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mFirstLongPress:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mViewMode:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLeftMargin:I

    return p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTopMargin:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mFirstLongPress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mFirstLongPress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->selectionTypeSetting(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mXDelta:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->rotatePosition()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mXDelta:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->checkPosition()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mYDelta:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mYDelta:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    return-object v0
.end method

.method private bodyLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->setting_selection_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->selectionTypeLayout()V

    return-void
.end method

.method private checkButtonTextSize(Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_BUTTON_WIDTH:F

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->COMPOUND_DRAWABLE_PADDING:F

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v6

    mul-int/lit8 v7, p3, 0x2

    sub-int v4, v6, v7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, p2, v10, v7, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gt v6, v4, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_BUTTON_WIDTH:F

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->COMPOUND_DRAWABLE_PADDING:F

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->RECTANGLE_TEXT_TOP_PADDING:I

    invoke-virtual {v6, v5, v7, v5, v10}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v10, v8, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_BUTTON_WIDTH:F

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->COMPOUND_DRAWABLE_PADDING:F

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_TEXT_GAP_PADDING:I

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_TEXT_TOP_PADDING:I

    invoke-virtual {v6, v2, v7, v2, v10}, Landroid/widget/Button;->setPadding(IIII)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    invoke-virtual {v6, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v6, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_0
.end method

.method private checkPosition()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_HEIGHT:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v4, v0, v7

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_0

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    aget v4, v0, v8

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget v5, v0, v7

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v4, :cond_2

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    aget v5, v0, v8

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v4, :cond_3

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    aput v5, v4, v8

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 2

    const-string v0, "SpenSettingSelectionLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_total_layout_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->selection_total_layout_height_v42:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_total_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->TOTAL_BG_MARGIN:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_IMAGE_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->pen_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_IMAGE_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->RIPPLE_EFFECT_OPACITY:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->selection_button_lasso_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LASSO_BUTTON_WIDTH:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->selection_button_drawable_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$integer;->selection_button_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->COMPOUND_DRAWABLE_PADDING:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->initView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    aget v2, v0, v4

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLeftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v0, v5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private initView()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->totalLayout()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setVisibility(I)V

    return-void
.end method

.method private rotatePosition()V
    .locals 15

    const/4 v14, 0x1

    const v13, 0x3f7d70a4    # 0.99f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v8, "SpenSettingSelectionLayout"

    const-string v9, "==== SettingSelection ===="

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingSelectionLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "old  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SpenSettingSelectionLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    aget v8, v8, v11

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    aget v8, v8, v14

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    const-string v8, "SpenSettingSelectionLayout"

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

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v5, v8

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v0, v8

    add-float v8, v2, v5

    div-float v1, v2, v8

    add-float v8, v6, v0

    div-float v7, v6, v8

    const-string v8, "SpenSettingSelectionLayout"

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

    const-string v8, "SpenSettingSelectionLayout"

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

    const-string v8, "SpenSettingSelectionLayout"

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
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

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

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

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
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    aput v9, v8, v11

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    aput v9, v8, v14

    const-string v8, "SpenSettingSelectionLayout"

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

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    cmpg-float v8, v1, v12

    if-gez v8, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    cmpg-float v8, v7, v12

    if-gez v8, :cond_1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_4
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3
.end method

.method private selectionTypeLayout()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x2

    new-array v1, v11, [[I

    const/4 v11, 0x1

    new-array v2, v11, [I

    const/4 v11, 0x0

    const v12, 0x10100a7

    aput v12, v2, v11

    const/4 v11, 0x0

    aput-object v2, v1, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-array v12, v12, [I

    aput-object v12, v1, v11

    const/4 v11, 0x2

    new-array v10, v11, [I

    const/4 v11, 0x0

    const-string v12, "#676767"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "#676767"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    sget v12, Lcom/samsung/android/spen/R$drawable;->note_selection_selector:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    const v12, 0x3da3d70a    # 0.08f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/spen/R$string;->pen_string_lasso:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v12, "snote_toolbar_icon_lasso_mtrl"

    sget v13, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    sget v14, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->BUTTON_ICON_COLOR:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v12, Lcom/samsung/android/spen/R$id;->lasso_image:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoImageIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v12, Lcom/samsung/android/spen/R$id;->lasso_text:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoTextView:Landroid/widget/TextView;

    new-instance v12, Landroid/content/res/ColorStateList;

    invoke-direct {v12, v1, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    sget v12, Lcom/samsung/android/spen/R$drawable;->note_selection_selector:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    const v12, 0x3da3d70a    # 0.08f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/spen/R$string;->pen_string_rectangle:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v12, "snote_toolbar_icon_rectangle_mtrl"

    sget v13, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    sget v14, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->DRAWABLE_LASSO_SIZE:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->BUTTON_ICON_COLOR:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v12, Lcom/samsung/android/spen/R$id;->rectangle_image:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleImageIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v12, Lcom/samsung/android/spen/R$id;->rectangle_text:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleTextView:Landroid/widget/TextView;

    new-instance v12, Landroid/content/res/ColorStateList;

    invoke-direct {v12, v1, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_0

    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    aget-object v8, v9, v11

    :cond_0
    const-string v11, "monotype"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "default"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    const-string v12, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    const-string v12, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    sget v12, Lcom/samsung/android/spen/R$drawable;->note_selection_unselected:I

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    sget v12, Lcom/samsung/android/spen/R$drawable;->note_selection_unselected:I

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v14, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->RIPPLE_EFFECT_OPACITY:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v13, "note_selection_unselected"

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v14, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->RIPPLE_EFFECT_OPACITY:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v13, "note_selection_unselected"

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private selectionTypeSetting(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    aget-object v3, v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setSelected(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iput v5, v3, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iput v4, v3, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;->getSelectionSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iput v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    invoke-interface {v3, v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;->setSelectionSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;->getSelectionSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iput v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    invoke-interface {v3, v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;->setSelectionSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private titleLayout()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v6, Lcom/samsung/android/spen/R$id;->setting_selection_view_title:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v7, "snote_popup_bg_arrow"

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_IMAGE_WIDTH:I

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_IMAGE_HEIGHT:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_selection_mode:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_selection_mode:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v7, "dialog_action_button"

    const/high16 v8, -0x1000000

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v11, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleView:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

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
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setLayoutDirection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v1, "setting_selection_layout_v42"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->setting_selection_bg_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->totalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->titleLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->bodyLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SpenSettingSelectionLayout"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeView:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mBodyLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeListner:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->close()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->close()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    goto/16 :goto_0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mViewMode:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v1, 0x1

    const-string v2, "SpenSettingSelectionLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfig selection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "SpenSettingSelectionLayout"

    const-string v2, "Restore old moveable rect "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLocationOnScreen([I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsFirstShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "SpenSettingSelectionLayout"

    const-string v2, "Restore old moveable rect "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLocationOnScreen([I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 11

    if-ne p1, p0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    invoke-interface {v4, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    if-ne p1, p0, :cond_6

    if-nez p2, :cond_6

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x2

    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLocationOnScreen([I)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsFirstShown:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsFirstShown:Z

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->rotatePosition()V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z

    :cond_2
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setPosition(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_2
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    new-array v2, v4, [I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLeftMargin:I

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTopMargin:I

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedCalculateMargin:Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v1, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->checkPosition()V

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ActionListener;

    :cond_0
    return-void
.end method

.method public setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;

    :cond_0
    return-void
.end method

.method public setIndicatorPosition(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, -0x63

    if-ne p1, v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mFirstLongPress:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$integer;->common_setting_layout_pading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p1, v0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMoveSettingLayout:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->INDICATOR_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSdkVersion:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionContext:Landroid/content/Context;

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

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    aput p1, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I

    aput p2, v3, v9

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->runnableRotate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->runnableRotate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_WIDTH:I

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->LAYOUT_HEIGHT:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int p1, v3, v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    if-le p2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int p2, v3, v0

    :cond_2
    if-ltz p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v0, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v3, "SpenSettingSelectionLayout"

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

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    aput v4, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldLocation:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    aput v4, v3, v9

    return-void
.end method

.method public setViewMode(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mViewMode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mSelectionTypeLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    const-string v1, "SpenSettingSelectionLayout"

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
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->loadImage()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

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

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLassoButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mRectangleButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

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

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$ViewListener;

    :cond_0
    return-void
.end method
