.class public Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
.super Landroid/widget/RelativeLayout;
.source "SpenSettingPenLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SeekBarChangeListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$FavoritePenSettingClosedListener;
    }
.end annotation


# static fields
.field private static final BEAUTIFY_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Beautify"

.field private static BODY_LAYOUT_HEIGHT:I = 0x0

.field private static BODY_LAYOUT_HEIGHT_MAGIC_PEN:I = 0x0

.field private static BODY_LAYOUT_HEIGHT_WITH_ALPHA:I = 0x0

.field private static final BRUSH_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Brush"

.field private static final BUTTON_COLOR:I = -0x371f1f20

.field private static final CHINESE_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

.field private static final COLOR_GRADATION_ITEM:I = 0x9

.field private static COLOR_PALTTE_LAYOUT_HEIGHT:I = 0x0

.field private static EXIT_BUTTON_RIGHT_MARGIN:I = 0x0

.field private static final FOUNTAIN_MONTBLANC_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

.field private static final FOUNTAIN_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field private static GRADATION_HEIGHT:I = 0x0

.field private static final HIGHRIGHT_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field private static final MAGIC_PEN_ID:I = 0x3ee

.field private static final MAGIC_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final MARKER_ALPHA_VALUE:I = 0x4c

.field private static final MAX_HEIGHT_FLAG:I = 0x1869f

.field private static final MAX_NUMBER_OF_PEN_WITHOUT_SCROLL:I = 0x7

.field private static final OBLIQUE_MONBLANCE_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

.field private static final OBLIQUE_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

.field private static final PENCIL2_ALPHA_VALUE:I = 0xa0

.field private static final PEN_ALPHA_MAX:I = 0x63

.field private static PEN_ALPHA_PREVIEW_HEIGHT_DEFAULT:F = 0.0f

.field private static PEN_ALPHA_PREVIEW_PROGRESS_DIVIDER:F = 0.0f

.field private static final PEN_ALPHA_PROGRESS_MAX:F = 100.0f

.field private static PEN_BUTTON_SELECTED_HEIGHT:I = 0x0

.field private static PEN_BUTTON_UNSELECTED_HEIGHT:I = 0x0

.field private static PEN_BUTTON_WIDTH:I = 0x0

.field private static PEN_FOCUS_BUTTON_HEIGHT:I = 0x0

.field private static PEN_FOCUS_BUTTON_WIDTH:I = 0x0

.field public static final PEN_LIST_DRAWING_NORMAL:I = 0x1

.field public static final PEN_LIST_DRAWING_PRO:I = 0x2

.field public static final PEN_LIST_NORMAL:I = 0x0

.field private static PEN_PREVIEW_LAYOUT_HEIGHT:I = 0x0

.field private static PEN_PREVIEW_LAYOUT_MARGIN_BOTTOM:I = 0x0

.field private static PEN_PREVIEW_LAYOUT_WIDTH:I = 0x0

.field private static PEN_TYPE_BUTTON_LEFT_MARGIN:I = 0x0

.field private static PEN_TYPE_BUTTON_SELECTED_Y:I = 0x0

.field private static PEN_TYPE_BUTTON_UNSELECTED_Y:I = 0x0

.field private static PEN_TYPE_BUTTON_WIDTH:I = 0x0

.field private static PEN_TYPE_LAYOUT_HEIGHT:I = 0x0

.field private static PEN_TYPE_LAYOUT_PADDING:I = 0x0

.field private static PEN_TYPE_SCROLL_VIEW_HEIGHT:I = 0x0

.field private static PEN_TYPE_SCROLL_VIEW_SIDE_PADDING:I = 0x0

.field private static PEN_TYPE_SCROLL_VIEW_SIDE_PADDING_INTEGER:I = 0x0

.field private static final RESET_MOVE_STATE_VALUE:I = -0x63

.field private static RIPPLE_EFFECT_OPACITY:I = 0x0

.field private static final SCREEN_UNIT:F = 360.0f

.field private static final SCREEN_WIDTH_WQHD:I = 0x5a0

.field private static final SCREEN_WIDTH_WQHD_TB:I = 0x5f0

.field private static final SCREEN_WIDTH_WQHD_TB_SPECIAL:I = 0x5fc

.field private static final TAG:Ljava/lang/String; = "SpenSettingHandwritingLayout"

.field private static TITLE_LAYOUT_HEIGHT:I = 0x0

.field private static TOTAL_BG_MARGIN:I = 0x0

.field private static TOTAL_LAYOUT_HEIGHT_NORMAL:I = 0x0

.field private static TOTAL_LAYOUT_WIDTH:I = 0x0

.field private static TOTAL_LAYOUT_WIDTH_INTEGER:I = 0x0

.field public static final VIEW_MODE_COLOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_DRAWING_COLOR:I = 0xe

.field public static final VIEW_MODE_DRAWING_PEN:I = 0xd

.field public static final VIEW_MODE_EXTENSION:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_EXTENSION_WITHOUT_PRESET:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_EXTENSION_WITHOUT_PRESET_NO_RESIZE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_FAVORITE:I = 0xc

.field public static final VIEW_MODE_MINIMUM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_NORMAL:I = 0x0

.field public static final VIEW_MODE_PRESET:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_QUICK_TOOL_ADD_PRESET:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_QUICK_TOOL_CHANGE_PRESET:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_SIZE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_TITLE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEW_MODE_TYPE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final currenMagicPenHeight:I = 0x1869f

.field private static final indicatorPath:Ljava/lang/String;

.field private static mDefaultPath:Ljava/lang/String;

.field protected static mIsSwichTab:Z

.field private static final mPenFocusedImagePath:Ljava/lang/String;

.field private static mRatioHeight:F

.field private static mRatioWidth:F

.field private static mScale:F

.field private static final mSdkVersion:I

.field private static minHeightNormal:I

.field private static final showDialogActionPath:Ljava/lang/String;


# instance fields
.field handler:Landroid/os/Handler;

.field private final handlerRotate:Landroid/os/Handler;

.field private isColorPickerTool:Z

.field private isHighlightPenRemoved:Z

.field private isMagicPenEnable:Z

.field private isMagicPenRemoved:Z

.field private isPenImageChanged:Z

.field private isPresetClicked:Z

.field private localDisplayMetrics:Landroid/util/DisplayMetrics;

.field private localPenTypeViewGroup:Landroid/widget/RelativeLayout;

.field private mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

.field private mAddButton:Landroid/widget/TextView;

.field private final mAdvancedSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

.field private mAnimIndex:I

.field private final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBgTransparent:Z

.field private mBodyLayout:Landroid/widget/LinearLayout;

.field private mBodyLayoutHeight:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mCanvasLayout:Landroid/widget/RelativeLayout;

.field private mCanvasSize:I

.field private mCloseButton:Landroid/widget/TextView;

.field private mCloseButtonListener:Landroid/view/View$OnClickListener;

.field private mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

.field private mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

.field private mColorPickerColorImage:Landroid/view/View;

.field private mColorPickerCurrentColor:Landroid/view/View;

.field private final mColorPickerCurrentColorListener:Landroid/view/View$OnClickListener;

.field mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

.field private mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

.field private mColorPickerSettingExitButton:Landroid/view/View;

.field private mCurrentLeftMargin:I

.field private mCurrentTopMargin:I

.field private mDividerline:Landroid/widget/RelativeLayout;

.field private mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mEnablePresetSave:Z

.field private mEraserSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

.field private mEraserSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

.field private final mExitButtonListener:Landroid/view/View$OnClickListener;

.field private mFirstLongPress:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHhorizontalView:Landroid/widget/HorizontalScrollView;

.field private mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

.field private mIndicator:Landroid/widget/ImageView;

.field private mIsColorPickerEnabled:Z

.field private mIsFirstShown:Z

.field mIsMaxHeight:Z

.field private mIsRotated:Z

.field private mIsRotated2:Z

.field private mIsSetPenList:Z

.field private final mLastSetPosition:[I

.field mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutUtil:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private mLeftMargin:I

.field private mMaxPensize:F

.field private mMinPensize:F

.field private mMovableRect:Landroid/graphics/Rect;

.field private mMoveSettingLayout:Z

.field private mNeedCalculateMargin:Z

.field private mNeedRecalculateRotate:Z

.field private mNeedRotateWhenSetPosition:Z

.field mNumberOfPenExist:I

.field private mOldLocation:[I

.field private mOldMovableRect:Landroid/graphics/Rect;

.field mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

.field private final mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

.field private final mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnsizeChange:Z

.field private mParenTopMargin:I

.field private mParentLeftMargin:I

.field private mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mPenAlpha:I

.field private mPenButtonExisted:Z

.field private mPenContext:Landroid/content/Context;

.field private mPenDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPenFocusedCursor:Landroid/view/View;

.field private mPenFoundFlag:Z

.field mPenImageStoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPenImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mPenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPenNameIndex:I

.field private mPenPluginCount:I

.field private mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

.field private mPenPreview:Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

.field private mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

.field private mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

.field private final mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

.field private final mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

.field private mPenTypeView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

.field private mPreCanvasFingerAction:I

.field private mPreCanvasMouseAction:I

.field private mPreCanvasPenAction:I

.field private mPreSetAddButtonListner:Landroid/view/View$OnClickListener;

.field private mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

.field private mPrevAnimIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

.field private mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

.field private mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

.field private mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

.field private mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

.field private mSizeLayout:Landroid/widget/RelativeLayout;

.field private mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

.field private mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

.field private mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

.field private mStartUpPreferencePenName:Ljava/lang/String;

.field private mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mTempMovableRect:Landroid/graphics/Rect;

.field private mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mTotalBg:Landroid/widget/ImageView;

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mViewMode:I

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

.field private mWindowHeight:I

.field private mXDelta:I

.field private mYDelta:I

.field private minHeight:I

.field private penTypeLayout:Landroid/widget/RelativeLayout;

.field private requestLayoutDisable:Z

.field private final runnableRotate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScale:F

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDefaultPath:Ljava/lang/String;

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeightNormal:I

    sput-boolean v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSwichTab:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_bg_arrow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->indicatorPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_pensetting_focused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedImagePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dialog_action_button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->showDialogActionPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mWindowHeight:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPresetClicked:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isHighlightPenRemoved:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAdvancedSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEraserSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handler:Landroid/os/Handler;

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMaxPensize:F

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mExitButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColorListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreSetAddButtonListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimIndex:I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPrevAnimIndex:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsColorPickerEnabled:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;F)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mWindowHeight:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPresetClicked:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isHighlightPenRemoved:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAdvancedSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEraserSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handler:Landroid/os/Handler;

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMaxPensize:F

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mExitButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColorListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreSetAddButtonListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimIndex:I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPrevAnimIndex:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsColorPickerEnabled:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mWindowHeight:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPresetClicked:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isHighlightPenRemoved:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAdvancedSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEraserSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handler:Landroid/os/Handler;

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMaxPensize:F

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mExitButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColorListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreSetAddButtonListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->runnableRotate:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimIndex:I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPrevAnimIndex:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$17;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$22;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsColorPickerEnabled:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method private ColorPickerSettingInit()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSettingExitButton:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSettingExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mExitButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerColorImage:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerColorImage:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColor:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypePerformClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mXDelta:I

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mXDelta:I

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mYDelta:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mYDelta:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    return p1
.end method

.method static synthetic access$3102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    return-object v0
.end method

.method static synthetic access$3602(F)F
    .locals 0

    sput p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioWidth:F

    return p0
.end method

.method static synthetic access$3702(F)F
    .locals 0

    sput p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioHeight:F

    return p0
.end method

.method static synthetic access$3800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLeftMargin:I

    return p1
.end method

.method static synthetic access$4102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTopMargin:I

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimIndex:I

    return v0
.end method

.method static synthetic access$4600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPrevAnimIndex:I

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Landroid/widget/HorizontalScrollView;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isScrollable(Landroid/widget/HorizontalScrollView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->rotatePosition()V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->showDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    return v0
.end method

.method private bodyLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutUtil:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v1, "setting_handwriting_body_layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->note_handwriting_pen_size_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkPosition()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    aget v3, v3, v6

    aput v3, v0, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    aget v3, v3, v7

    aput v3, v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v3, v0, v6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    aget v3, v0, v7

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_1

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    aget v4, v0, v6

    sub-int/2addr v3, v4

    if-ge v3, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v3, :cond_2

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    aget v4, v0, v7

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v3, :cond_3

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    aput v4, v3, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SpenSettingHandwritingLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScale:F

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutUtil:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->initPenPlugin(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->initView(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    const-string v0, "SpenSettingHandwritingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    return-void
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SpenSettingHandwritingLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScale:F

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutUtil:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->initPenPlugin(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->initView(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    const-string v0, "SpenSettingHandwritingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    return-void
.end method

.method private drawExpendImage(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1869f

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setMagicPenMode(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    goto :goto_0
.end method

.method private drawSelectedImage(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_SELECTED_Y:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "SpenSettingHandwritingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "penSelection -selected pen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_SELECTED_Y:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_UNSELECTED_Y:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setHoverWindowPopupOffset()V

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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    aget v2, v0, v4

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLeftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v0, v5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v1
.end method

.method private getPenContentDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Brush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_brush:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "ChineseBrush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "ChineseBrushBig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ChineseBrushBig"

    goto :goto_0

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "BrushPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "InkPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_marker:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Pencil2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Pencil3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Pencil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Crayon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Crayon"

    goto/16 :goto_0

    :cond_9
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "PatternPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "PatternPen"

    goto/16 :goto_0

    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "MagicPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_correction_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "FountainPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_fountain_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "ObliquePen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_calligraphy_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "MontblancFountainPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_fountain_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "MontblancCalligraphyPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_calligraphy_pen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "OilBrush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_oil_brush"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "OilBrush2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_oil_brush"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Eraser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_oil_brush"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Marker2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_marker_pen"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "WaterColorPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_water_color_brush"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "AirBrushPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v2, "pen_string_air_brush"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_15
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, "Smudge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "Smudge"

    goto/16 :goto_0

    :cond_16
    const-string v1, ""

    goto/16 :goto_0
.end method

.method private getPenNameIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initPenPlugin(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;-><init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginCount:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private initView(Ljava/lang/String;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_total_layout_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->common_total_layout_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH_INTEGER:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_total_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeightNormal:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeightNormal:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScale:F

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;F)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->getPenDataList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->RIPPLE_EFFECT_OPACITY:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_total_bg_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_BG_MARGIN:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_title_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TITLE_LAYOUT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_pen_type_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_pen_type_scroll_view_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_SIDE_PADDING_INTEGER:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_pen_type_scroll_view_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_SIDE_PADDING:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_pen_preview_layout_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_PREVIEW_LAYOUT_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_pen_preview_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_PREVIEW_LAYOUT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_pen_preview_layout_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_PREVIEW_LAYOUT_MARGIN_BOTTOM:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_pen_alpha_preview_height_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_ALPHA_PREVIEW_HEIGHT_DEFAULT:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_pen_alpha_preview_progress_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_ALPHA_PREVIEW_PROGRESS_DIVIDER:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_body_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT_WITH_ALPHA:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT_MAGIC_PEN:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_gradation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->GRADATION_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->pen_color_palette_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->COLOR_PALTTE_LAYOUT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_exit_button_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->EXIT_BUTTON_RIGHT_MARGIN:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->handwriting_pen_type_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->pen_pen_button_unselected_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_layout_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_focus_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_FOCUS_BUTTON_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_focus_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_FOCUS_BUTTON_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_SELECTED_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_button_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_LEFT_MARGIN:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_button_selected_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_SELECTED_Y:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_button_unselected_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_UNSELECTED_Y:I

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-direct {v1, v2, p1, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->totalLayout()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->ColorPickerSettingInit()V

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setLayoutDirection(I)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    return-void
.end method

.method private isScrollable(Landroid/widget/HorizontalScrollView;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private penLayout()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setOverScrollMode(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout()V

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->note_handwriting_scroll_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private penSelectAnimation(I)V
    .locals 17

    const/4 v15, -0x1

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v15, v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_1

    move/from16 v0, p1

    if-eq v15, v0, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimIndex:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPrevAnimIndex:I

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3e75c28f    # 0.24f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, -0x418a3d71    # -0.24f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelection(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v13, v4}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v14, v4}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    invoke-virtual {v3, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1
.end method

.method private penSelectIndex(I)V
    .locals 3

    :try_start_0
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_3

    const v1, 0x1869f

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setMagicPenMode(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    :cond_2
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelectAnimation(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private penSelection(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x4

    const/high16 v12, -0x60000000

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v10, 0x1

    const v9, 0xffffff

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1c

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-boolean v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getColor()I

    move-result v6

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    :cond_5
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getSize()F

    move-result v6

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6, v13}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getAdvancedSetting()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    :cond_6
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->setLoaded(Z)V

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_17

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :goto_7
    const-string v6, "SpenSettingHandwritingLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canvas size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v7, 0x5f0

    if-eq v6, v7, :cond_8

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v7, 0x5fc

    if-ne v6, v7, :cond_9

    :cond_8
    const/16 v6, 0x5a0

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :cond_9
    :goto_8
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMinSettingValue()F

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMaxSettingValue()F

    move-result v2

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMaxPensize:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    :cond_a
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6, v13}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-ne v6, v10, :cond_c

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_19

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_d
    :goto_9
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-ne v6, v10, :cond_e

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v6, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setMontblancColorPalette(Z)V

    :goto_a
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setColorPickerColor(I)V

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v7, v12

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v7, v12

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    goto/16 :goto_5

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const-string v7, ""

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getColor()I

    move-result v6

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    :cond_14
    :goto_b
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getSize()F

    move-result v6

    iput v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6, v13}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getAdvancedSetting()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v7, v12

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    goto :goto_b

    :cond_16
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const-string v7, ""

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto/16 :goto_6

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto/16 :goto_7

    :cond_18
    const/16 v6, 0x5a0

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto/16 :goto_8

    :cond_19
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v6, :cond_1a

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-boolean v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto/16 :goto_9

    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setMontblancColorPalette(Z)V

    goto/16 :goto_a

    :cond_1c
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawSelectedImage(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawExpendImage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private penTypeLayout()V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_HEIGHT:I

    invoke-direct {v9, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I

    const/4 v3, 0x0

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v1, v2, v3, v6, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->note_handwriting_horizontal_pen_type_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->note_handwriting_pen_type_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    const-string v17, "iconImageUri"

    const-string v15, "selectedIconImageURI"

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-direct {v12, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v1

    iget-object v10, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v10, "snote_popup_pensetting_chinabrush_sdk4"

    :cond_2
    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v10, "note_handwriting_setting_pen_01_select"

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    invoke-virtual {v1, v12, v10, v3, v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;II)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    add-int/lit16 v1, v8, 0x3e8

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_SELECTED_HEIGHT:I

    invoke-direct {v14, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-lez v8, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_LEFT_MARGIN:I

    iput v1, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    new-instance v16, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x5

    goto/16 :goto_1

    :pswitch_1
    const-string v10, "note_handwriting_setting_pen_02_select"

    goto/16 :goto_2

    :pswitch_2
    const-string v10, "note_handwriting_setting_pen_03_select"

    goto/16 :goto_2

    :pswitch_3
    const-string v10, "note_handwriting_setting_pen_04_select"

    goto/16 :goto_2

    :pswitch_4
    const-string v10, "note_handwriting_setting_pen_05_select"

    goto/16 :goto_2

    :pswitch_5
    const-string v10, "note_handwriting_setting_pen_06_select"

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x9

    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_FOCUS_BUTTON_WIDTH:I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_FOCUS_BUTTON_HEIGHT:I

    invoke-direct {v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v3, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v7, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc15bfcb -> :sswitch_1
        0x3e0d7830 -> :sswitch_5
        0x3eb95502 -> :sswitch_2
        0x5cf7edc2 -> :sswitch_0
        0x61ec1376 -> :sswitch_3
        0x680bd85d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final penTypePerformClick(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v0

    const-string v3, "SpenSettingHandwritingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    if-lt v0, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelectIndex(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->playSoundEffect(I)V

    goto :goto_1
.end method

.method private rotatePosition()V
    .locals 15

    const-string v11, "SpenSettingHandwritingLayout"

    const-string v12, "==== SettingPen ===="

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    new-array v3, v11, [I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLocationInWindow([I)V

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v7, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    iput v11, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iput v11, v7, Landroid/graphics/Rect;->right:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "view = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v7, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    int-to-float v2, v11

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    int-to-float v8, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    int-to-float v9, v11

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v0, v11

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioWidth:F

    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioHeight:F

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "left :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", right :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "top :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bottom :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hRatio = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", vRatio = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x3f7d70a4    # 0.99f

    cmpl-float v11, v1, v11

    if-lez v11, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    const v11, 0x3f7d70a4    # 0.99f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ge v11, v12, :cond_4

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ge v11, v12, :cond_5

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_3
    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    const/4 v12, 0x0

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v14, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    aput v13, v11, v12

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    const/4 v12, 0x1

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v14, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    aput v13, v11, v12

    const-string v11, "SpenSettingHandwritingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lMargin = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tMargin = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v11, 0x0

    cmpg-float v11, v1, v11

    if-gez v11, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3
.end method

.method private setExpandBarPosition(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    if-nez v2, :cond_0

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->COLOR_PALTTE_LAYOUT_HEIGHT:I

    sub-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_HEIGHT:I

    sub-int v1, v2, v3

    :cond_1
    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT_MAGIC_PEN:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    if-lt p1, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT_MAGIC_PEN:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result p1

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    :cond_2
    :goto_0
    if-gez p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result p1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    if-lt p1, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->BODY_LAYOUT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result p1

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lt p1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    sub-int p1, v2, v3

    :cond_5
    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    return-void

    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    goto :goto_0

    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsMaxHeight:Z

    goto :goto_1
.end method

.method private setHoverWindowPopupOffset()V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->getHoverPopupWindow()Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->setOffset(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_SELECTED_Y:I

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_UNSELECTED_Y:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->setOffset(II)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreSetAddButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;)V

    :cond_4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setOnScrollChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;)V

    :cond_6
    return-void
.end method

.method private setMagicPenMode(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    const v0, 0x1869f

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method

.method private setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V
    .locals 7

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Brush"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_brush:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_tab_selected_tts:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "ChineseBrush"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "ChineseBrushBig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "ChineseBrushBig"

    goto :goto_0

    :cond_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "BrushPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "InkPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Marker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_marker:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Pencil2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Pencil3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Pencil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Crayon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "Crayon"

    goto/16 :goto_0

    :cond_b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "PatternPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, "PatternPen"

    goto/16 :goto_0

    :cond_c
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "MagicPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_correction_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "FountainPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_fountain_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "ObliquePen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_calligraphy_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "MontblancFountainPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_fountain_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "MontblancCalligraphyPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_calligraphy_pen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "OilBrush"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v3, "pen_string_oil_brush"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "OilBrush2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v3, "pen_string_oil_brush"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Eraser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "Eraser"

    goto/16 :goto_0

    :cond_14
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Marker2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v3, "pen_string_marker_pen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_15
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "WaterColorPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v3, "pen_string_water_color_brush"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_16
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "AirBrushPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v3, "pen_string_air_brush"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_17
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "Smudge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Smudge"

    goto/16 :goto_0
.end method

.method private showDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorPickerGradientChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method private titleLayout()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v6, Lcom/samsung/android/spen/R$id;->note_handwriting_title_layout:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_popup:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    const-string v6, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    sget-object v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->showDialogActionPath:Ljava/lang/String;

    const/high16 v8, -0x1000000

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v11, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

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

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutUtil:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v2, "setting_handwriting_layout"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->note_handwriting_bg_view:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->titleLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->bodyLayout()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->note_handwriting_indicator:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v4, "snote_popup_bg_arrow"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateCanvasSettingView(I)V
    .locals 3

    const/16 v2, 0x5a0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v1, 0x5f0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v1, 0x5fc

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "SpenSettingHandwritingLayout"

    const-string v5, "close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->savePreferences()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginCount:I

    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->unloadPlugin(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->close()V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPreview:Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPreview:Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->close()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPreview:Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPreview:Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->close()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->close()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    :cond_9
    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollViewListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerColorImage:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerColorImage:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColor:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerCurrentColor:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSettingExitButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSettingExitButton:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->close()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    :cond_e
    sput-object v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDefaultPath:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->close()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->close()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->dismiss()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->close()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    :cond_10
    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    goto/16 :goto_0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    return-object v0
.end method

.method public getPenImageDrawableByPenName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    move-object v3, v2

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectedFocusImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getPenInterface()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v0

    return-object v0
.end method

.method public getPenList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    return v0
.end method

.method public loadPreferences()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->getCurrentPenName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->removeCurrentPenData()V

    const/4 v2, 0x0

    :cond_2
    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v1

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    if-eqz v3, :cond_3

    if-ne v2, v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z

    if-nez v3, :cond_4

    if-ne v2, v1, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    :cond_4
    const-string v3, "SpenSettingHandwritingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadPreference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelection(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->clearSharedPenData()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SpenSettingHandwritingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfig pen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "SpenSettingHandwritingLayout"

    const-string v2, "resote old moveable rect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setRotation()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    if-nez v3, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempMovableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "SpenSettingHandwritingLayout"

    const-string v2, "resote old moveable rect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLocationOnScreen([I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onScreenStateChanged(I)V

    return-void
.end method

.method protected onScroll(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mWindowHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    if-le v2, p2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOnsizeChange:Z

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$20;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$20;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 12

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v5, "SpenSettingHandwritingLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "visibility change  view:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    invoke-interface {v5, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    if-nez v5, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/16 v6, 0x3ee

    if-ne v5, v6, :cond_2

    const v5, 0x1869f

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setMagicPenMode(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-ne p1, p0, :cond_a

    if-nez p2, :cond_a

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setNextFocusRightId(I)V

    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLocationOnScreen([I)V

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    const-string v5, "SpenSettingHandwritingLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parent margin left: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    :cond_5
    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->rotatePosition()V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z

    :cond_6
    :goto_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z

    const-string v5, "SpenSettingHandwritingLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVisi-Change: mCurrentTopMargin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    :cond_8
    :try_start_2
    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    new-array v3, v5, [I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v3, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLeftMargin:I

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTopMargin:I

    const/4 v5, 0x2

    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public removePen(I)V
    .locals 11

    const/4 v1, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, p1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenRemoved:Z

    :cond_2
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isHighlightPenRemoved:Z

    :cond_3
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    if-le v6, v9, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    if-ge p1, v6, :cond_0

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    if-le v6, v1, :cond_7

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH_INTEGER:I

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_SIDE_PADDING_INTEGER:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    const/4 v0, 0x1

    :goto_4
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    if-ge v0, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_WIDTH:I

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v6

    if-le v6, v9, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelection(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    return-void
.end method

.method public savePreferences()V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->setPenDataList(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenSharedPreferencesManager:Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSharedPreferencesManager;->setCurrentPenName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_6
    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getSize()F

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getColor()I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    :cond_0
    return-void
.end method

.method public setBeautifyOptionEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
    .locals 6

    const/high16 v5, 0x4c000000    # 3.3554432E7f

    const/16 v4, 0x5a0

    const/high16 v3, -0x60000000

    const v2, 0xffffff

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setBackgroundColorChangeListener(Ljava/lang/Object;Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEraserSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :goto_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v1, 0x5f0

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v1, 0x5fc

    if-ne v0, v1, :cond_3

    :cond_2
    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->loadPreferences()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v1, v2

    or-int/2addr v1, v5

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto :goto_1

    :cond_6
    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEraserSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v1, v2

    or-int/2addr v1, v5

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "Pencil2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "Pencil2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_3
.end method

.method public setColorPickerEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsColorPickerEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsColorPickerEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorPickerEnable(Z)V

    :cond_0
    return-void
.end method

.method public setColorPickerPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->movePosition(II)V

    :cond_0
    return-void
.end method

.method public setFavoritePenSettingClosedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$FavoritePenSettingClosedListener;)V
    .locals 0

    return-void
.end method

.method public setIndicatorPosition(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, -0x63

    if-ne p1, v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$dimen;->common_indicator_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 14

    const/high16 v13, -0x60000000

    const/4 v12, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v10, 0x1

    const v9, 0xffffff

    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "E_INVALID_ARG : parameter \'settingInfo\' is null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_5

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Marker"

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_4
    iget v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v10, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    iput v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_5
    :goto_1
    iget-object v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/high16 v6, 0x4c000000    # 3.3554432E7f

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    iput v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    :cond_7
    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    :cond_9
    if-ltz v4, :cond_22

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-boolean v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const-string v6, "SpenSettingHandwritingLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInfo: name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " color:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTempSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-boolean v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    :cond_a
    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMinSettingValue()F

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMaxSettingValue()F

    move-result v2

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMinPensize:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMaxPensize:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_18

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :goto_3
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v7, 0x5f0

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    const/16 v7, 0x5fc

    if-ne v6, v7, :cond_d

    :cond_c
    const/16 v6, 0x5a0

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    :cond_d
    :goto_4
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-ge v6, v7, :cond_e

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    :cond_e
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-le v6, v7, :cond_f

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-ne v6, v10, :cond_12

    iget v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v6, 0x4c

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    :cond_10
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_11
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    if-ne v6, v10, :cond_13

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    :cond_13
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->setLoaded(Z)V

    :cond_14
    const/4 v0, 0x0

    :goto_7
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginCount:I

    if-ge v0, v6, :cond_1c

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_15

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setSelected(Z)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    iput v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_1

    :cond_17
    iget-object v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v6, v9

    or-int/2addr v6, v13

    iput v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_2

    :cond_18
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto/16 :goto_3

    :cond_19
    const/16 v6, 0x5a0

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasSize:I

    goto/16 :goto_4

    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v6, 0xa0

    iput v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I

    goto/16 :goto_5

    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v7, v13

    iput v7, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_6

    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1f

    if-ltz v5, :cond_1f

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawSelectedImage(Landroid/view/View;)V

    :cond_1d
    :goto_8
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setColorPickerColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    if-eqz v6, :cond_1e

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    if-eqz v1, :cond_1e

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/high16 v6, 0x4c000000    # 3.3554432E7f

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    iput v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :goto_9
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-boolean v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const-string v6, "SpenSettingHandwritingLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setinfo canvas: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    invoke-interface {v6, v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_1e
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawExpendImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz v6, :cond_1d

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawSelectedImage(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_20
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v7, "Pencil2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v6, v9

    or-int/2addr v6, v13

    iput v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_9

    :cond_21
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_9

    :cond_22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "E_INVALID_ARG : parameter \'SettingPenInfo.name\' is incorrect."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setNextFocus(I)I
    .locals 3

    const-string v0, "SpenSettingHandwritingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextFocus id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setNextFocus(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setNextFocusUp(I)I
    .locals 3

    const-string v0, "SpenSettingHandwritingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextFocusUp id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setPenImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v8, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v12

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    move-object v4, v3

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectedFocusImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    move-object/from16 v0, p2

    invoke-virtual {v9, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v1, v4

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    const v5, 0x101009c

    aput v5, v1, v4

    move-object/from16 v0, p4

    invoke-virtual {v9, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    const v5, 0x10100a1

    aput v5, v1, v4

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    new-instance v11, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;

    invoke-direct {v11, v9, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method public setPenInfoList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v2, "SpenSettingHandwritingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pendata --- name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", color: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPenList(Ljava/util/ArrayList;)V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'penList\' is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_7

    const/16 v22, 0x7

    :goto_2
    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH_INTEGER:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_SIDE_PADDING_INTEGER:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    mul-int v3, v3, v22

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-int/lit8 v3, v22, -0x1

    int-to-float v3, v3

    div-float v25, v2, v3

    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_SELECTED_HEIGHT:I

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-lez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    int-to-float v3, v3

    add-float v3, v3, v25

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    mul-int/2addr v2, v5

    move-object/from16 v0, v26

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenButtonExisted:Z

    if-nez v2, :cond_4

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v2

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v2

    iget-object v8, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    sget v12, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    move-object v9, v8

    move-object v10, v7

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectedFocusImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v21

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_a

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_UNSELECTED_HEIGHT:I

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_BUTTON_WIDTH:I

    int-to-float v3, v3

    add-float v3, v3, v25

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    mul-int/2addr v2, v5

    move-object/from16 v0, v26

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    new-instance v27, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object v11, v4

    move v12, v5

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move v12, v5

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenContentDescription(Ljava/lang/String;Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_5
    const/16 v17, 0x0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_7
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x9

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :cond_a
    :try_start_2
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_b
    const/16 v2, 0x9

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    const/16 v17, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->localPenTypeViewGroup:Landroid/widget/RelativeLayout;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNumberOfPenExist:I

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_HEIGHT:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_SCROLL_VIEW_HEIGHT:I

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeHorizontalScrollView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    :cond_e
    const-string v2, "SpenSettingHandwritingLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPenList - preference name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelection(Landroid/view/View;)V

    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_c

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    if-nez v2, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsSetPenList:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penSelection(Landroid/view/View;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFoundFlag:Z

    :cond_11
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mStartUpPreferencePenName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9
.end method

.method public setPenSpuitVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    :cond_0
    return-void
.end method

.method public setPenTypeViewVisibility(I)V
    .locals 5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/16 p1, 0x8

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->handwriting_total_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->note_handwriting_pen_type_divider:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->handwriting_total_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->handwriting_pen_type_layout_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "SpenSettingHandwritingLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set Position x,y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    aput p1, v2, v6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I

    aput p2, v2, v7

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->runnableRotate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->runnableRotate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 p1, v2, -0x2

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    sub-int p2, v2, v3

    :cond_2
    if-ltz p2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    if-gt v2, v3, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    aput v3, v2, v6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    aput v3, v2, v7

    return-void
.end method

.method public setPresetListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    :cond_0
    return-void
.end method

.method public setPresetSaveEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mEnablePresetSave:Z

    return-void
.end method

.method public setSeekBarChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SeekBarChangeListener;)V
    .locals 0

    return-void
.end method

.method public setViewMode(I)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "SpenSettingHandwritingLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setViewMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->hide()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    const/4 v5, 0x2

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I

    invoke-interface {v4, v9, v5}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    const/4 v5, 0x3

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;->onVisibilityChanged(I)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mScrollView:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;

    invoke-virtual {v4, v9}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->setScrollingEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_pen_settings:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_WIDTH:I

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    packed-switch v4, :pswitch_data_0

    iput v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawExpendImage(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lez v4, :cond_8

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_8

    :cond_2
    :goto_0
    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeightNormal:I

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z

    const/4 v1, -0x1

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenTypeView:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isMagicPenEnable:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v4, :cond_4

    const v4, 0x1869f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setMagicPenMode(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V

    :cond_5
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->drawExpendImage(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBodyLayoutHeight:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_7

    :cond_6
    :goto_3
    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeightNormal:I

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->minHeight:I

    goto :goto_1

    :cond_7
    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-le v0, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    goto :goto_3

    :cond_8
    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->TOTAL_LAYOUT_HEIGHT_NORMAL:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-le v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v3, "SpenSettingHandwritingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVisibility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_b

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->loadImage()V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSdkVersion:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenImageStoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isPenImageChanged:Z

    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCloseButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mAddButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->hide()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    const/4 v4, 0x1

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    const/4 v4, 0x3

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;->onVisibilityChanged(I)V

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_b
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsFirstShown:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    if-eq v3, v4, :cond_5

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentLeftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParenTopMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mParentParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ViewListener;

    :cond_0
    return-void
.end method
