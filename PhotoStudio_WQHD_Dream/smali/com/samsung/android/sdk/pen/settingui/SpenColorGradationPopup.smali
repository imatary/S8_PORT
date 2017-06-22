.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
.super Landroid/app/Dialog;
.source "SpenColorGradationPopup.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;,
        Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;
    }
.end annotation


# static fields
.field private static COLOR_FOCUS_WHEEL_THICKNESS:I = 0x0

.field private static final COLOR_PICKER_LAYOUT_VERSION:Ljava/lang/String; = "setting_color_picker_layout_v42"

.field private static final COLOR_PICKER_LAYOUT_VERSION_LAND:Ljava/lang/String; = "setting_color_picker_layout_v41_land"

.field protected static CONTENT_POINT_SIZE:I = 0x0

.field private static final DEFAULT_COLOR:I = -0x19191a

.field private static PORTRAIT_POINT_SIZE:I = 0x0

.field private static PORTRAIT_POINT_SIZE_DP:I = 0x0

.field private static PORTRAIT_WHEEL_SIZE:I = 0x0

.field private static final RECENT_COLORS:Ljava/lang/String; = "RECENT_COLORS"

.field private static RECENT_COLOR_BUTTON_MAX:I = 0x0

.field private static RIPPLE_EFFECT_OPACITY:I = 0x0

.field private static SCROLL_VIEW_MARGIN_TOP:I = 0x0

.field private static SEEKBAR_OFFSET:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static THUMB_SEEK_SIZE:I = 0x0

.field private static TRACK_SEEK_HEIHT:I = 0x0

.field private static final colorFocusStringPath:Ljava/lang/String; = "snote_popup_color_picker_focused"

.field private static final colorPickerBg:Ljava/lang/String; = "color_picker_dialog_bg_shape"

.field private static final mColorSpoidStringPath:Ljava/lang/String; = "snote_color_spoid_sdk4"

.field private static final pointCircle:Ljava/lang/String; = "color_picker_point_circle"

.field private static final showDialogActionPath:Ljava/lang/String; = "dialog_action_button"

.field private static final thumbColorSeekbar:Ljava/lang/String; = "color_picker_point_circle_2"


# instance fields
.field private ORBITAL_RADIUS:I

.field private final SDK_VERSION:I

.field private TOTAL_LAYOUT_WITHD:I

.field private doneTextView:Landroid/widget/TextView;

.field private mColorButtons:[Landroid/view/View;

.field private mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mColorFocusedCursor:Landroid/view/View;

.field private mColorGradationContext:Landroid/content/Context;

.field private mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

.field private mColorSeekBar:Landroid/widget/SeekBar;

.field private mColorSeekBarOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mColorTableSet:[I

.field private mColors:[I

.field private mCurrenLayoutDirection:I

.field private mCurrentColor:I

.field private mCurrentColorTextView:Landroid/widget/TextView;

.field private mCurrentOrientation:I

.field private mDisableOnLayoutChanged:Z

.field private mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

.field private mHsv:[F

.field private mIsColorPickerSpuitEnabled:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mNewColorTextView:Landroid/widget/TextView;

.field private final mOldColor:I

.field private mOnColorSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mParentlayout:Landroid/widget/RelativeLayout;

.field private mRadius:I

.field private mRecentColorClickListener:Landroid/view/View$OnClickListener;

.field private mRecentColorLayout:Landroid/widget/RelativeLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateDegree:I

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

.field private mSpoidClick:Landroid/view/View$OnClickListener;

.field private mSpuitButtonView:Landroid/widget/ImageView;

.field private mStateSoftInput:Z

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private pickedColorView:Landroid/view/View;

.field private pickerRound:Landroid/widget/RelativeLayout;

.field private progressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private totalLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenColorGradationPopup"

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    sget v0, Lcom/samsung/android/spen/R$style;->GradationPopupTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrenLayoutDirection:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mStateSoftInput:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDisableOnLayoutChanged:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRotateDegree:I

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBarOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOnColorSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpoidClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mIsColorPickerSpuitEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RECENT_COLORS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    const/high16 v0, -0x1000000

    or-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOldColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->color_picker_popup_point_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE_DP:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->color_picker_popup_seekbar_thumb_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->THUMB_SEEK_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RIPPLE_EFFECT_OPACITY:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_seekbar_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SEEKBAR_OFFSET:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_seekbar_track_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TRACK_SEEK_HEIHT:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_point_size_v41:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_color_focus_wheel_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_scroll_view_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SCROLL_VIEW_MARGIN_TOP:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_content_point_size_v41_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->CONTENT_POINT_SIZE:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initView()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorForGradient(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setListener()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;Landroid/graphics/drawable/GradientDrawable;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrenLayoutDirection:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrenLayoutDirection:I

    return p1
.end method

.method static synthetic access$1800()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE_DP:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorForGradient(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->saveRecentColors()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDisableOnLayoutChanged:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getFocusedRecentColorIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    return-object v0
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

.method private getFocusedRecentColorIndex()I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initColorPalette()V
    .locals 14

    const/4 v13, 0x0

    const/16 v12, 0x3d

    const/16 v9, 0x13

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->loadRecentColors()[I

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v8, "snote_popup_color_picker_focused"

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_recent_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    if-le v5, v9, :cond_0

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-static {v12, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v8, "color_circle_shape"

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    aget v5, v5, v2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v7, "color_circle_shape"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_1
    const v5, -0x19191a

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusable(Z)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_2
    const-string v5, "\u00a0"

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    sget v6, Lcom/samsung/android/spen/R$id;->color_picker_spuitBtn_view:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    if-le v5, v9, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-static {v12, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "note_spuit_color_picker_circle_shape"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v7, v8, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    const-string v7, "snote_color_spoid_sdk4"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    aput-object v7, v5, v6

    return-void

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v8, "note_spuit_color_picker_circle_shape"

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_3
.end method

.method private initColorSeekBar()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v10, 0x15

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_select_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    if-lt v3, v10, :cond_0

    :try_start_0
    const-class v3, Landroid/widget/AbsSeekBar;

    const-string v4, "setSplitTrack"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v5, "color_picker_point_circle_2"

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->THUMB_SEEK_SIZE:I

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->THUMB_SEEK_SIZE:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SEEKBAR_OFFSET:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBarOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    if-lt v3, v10, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RIPPLE_EFFECT_OPACITY:I

    invoke-static {v6, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v4, v5, v9, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data
.end method

.method private initProgressDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TRACK_SEEK_HEIHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x0

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TRACK_SEEK_HEIHT:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const/4 v1, 0x1

    const v2, -0x727273

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private initView()V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    sget v17, Lcom/samsung/android/spen/R$layout;->setting_color_picker_layout_v42:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_lanscape_wheel_size:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sput v17, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_WHEEL_SIZE:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$dimen;->color_picker_layout_land_width_v42:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TOTAL_LAYOUT_WITHD:I

    :goto_0
    sget v17, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_WHEEL_SIZE:I

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I

    move/from16 v17, v0

    sget v18, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->CONTENT_POINT_SIZE:I

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v19, v0

    const-string v20, "color_picker_dialog_bg_shape"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_1
    new-instance v5, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/HorizontalScrollView;->setScrollBarSize(I)V

    new-instance v10, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->setScrollBarSize(I)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$string;->pen_string_color_picker_tts:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/spen/R$string;->pen_string_done:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_done:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    if-lez v17, :cond_0

    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v12, v13, v17

    :cond_0
    const-string v17, "monotype"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "default"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v17, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->getTyface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TOTAL_LAYOUT_WITHD:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->findMinValue(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    move/from16 v17, v0

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "dialog_action_button"

    const/high16 v20, -0x1000000

    sget v21, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RIPPLE_EFFECT_OPACITY:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColorTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColorTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/spen/R$string;->pen_string_color_current:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mNewColorTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mNewColorTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/spen/R$string;->pen_string_color_new:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOldColor:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_select_color:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v17, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    move/from16 v17, v0

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initColorSeekBar()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initColorPalette()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mIsColorPickerSpuitEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_last:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_portrait_wheel_size:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sput v17, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_WHEEL_SIZE:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$dimen;->color_picker_width_v42:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TOTAL_LAYOUT_WITHD:I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const-string v18, "\u00a0"

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_last:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private loadRecentColors()[I
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "RECENT_COLORS"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "RECENT_COLORS"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    new-array v0, v5, [I

    const/4 v2, 0x0

    :goto_0
    sget v5, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    if-ge v2, v5, :cond_1

    :try_start_0
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private saveRecentColors()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    if-nez v4, :cond_1

    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    aput v5, v4, v7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget v4, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_3

    :cond_2
    move v3, v1

    :goto_2
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "RECENT_COLORS"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setColorForGradient(I)V
    .locals 9

    const/4 v3, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    aget v4, v4, v8

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    aget v4, v4, v1

    aput v4, v2, v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    aget v4, v4, v7

    aput v4, v2, v7

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v8

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    aput v6, v2, v7

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    aput-object v4, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v2, v1

    move v4, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->updateCursorPosition()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOnColorSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;

    const-string v2, "Color gradient picker close!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->close()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpenSettingObserver:Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_2

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    if-eqz v1, :cond_4

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBarOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_6

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBarOnTouchListener:Landroid/view/View$OnTouchListener;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOnColorSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_7

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mOnColorSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->totalLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->close()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mGradientView:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    :cond_a
    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;

    goto/16 :goto_0
.end method

.method public dismiss()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;

    const-string v3, "dismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mStateSoftInput:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->close()V

    return-void
.end method

.method protected saveRecentColors(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->loadRecentColors()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->saveRecentColors()V

    return-void
.end method

.method public setColorPickerGradientChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    return-void
.end method

.method public setColorPickerSpuitEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mIsColorPickerSpuitEnabled:Z

    return-void
.end method

.method public setOrientationMode(I)V
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOrientationMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDisableOnLayoutChanged:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getFocusedRecentColorIndex()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initView()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setListener()V

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorForGradient(I)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/high16 v6, 0x20000

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mIsColorPickerSpuitEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_last:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mStateSoftInput:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRecentColorLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_last:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mSpuitButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
