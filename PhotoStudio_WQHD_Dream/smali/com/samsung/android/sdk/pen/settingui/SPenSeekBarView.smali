.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;
.super Landroid/widget/RelativeLayout;
.source "SPenSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;,
        Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;
    }
.end annotation


# static fields
.field private static final BEAUTIFY_ADVANCE_CURSIVE_MAX_VALUE:I = 0xc

.field private static final BEAUTIFY_ADVANCE_DUMMY_MAX_VALUE:I = 0x14

.field private static final BEAUTIFY_ADVANCE_MODULATION_MAX_VALUE:I = 0x64

.field private static final BEAUTIFY_ADVANCE_SUSTENANCE_MAX_VALUE:I = 0x10

.field private static final BUTTON_COLOR_DIM:I = 0x66888888

.field private static final BUTTON_COLOR_NORMAL:I = -0x777778

.field private static final ERASER_PROGRESS_MAX:I = 0x63

.field private static final HIGHLIGHT_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field private static final MAGIC_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final PEN_ALPHA_MAX:I = 0x63

.field private static final REMOVER_PROGRESS_MAX:I = 0x9

.field private static final REP_DELAY:I = 0x14

.field private static final SCREEN_UNIT:F = 360.0f

.field private static final SEEKBAR_COLOR:I = -0xb95b2

.field private static final SEEKBAR_COLOR_DIM:I = -0x29292a

.field protected static final SPEN_SEEKBAR_TYPE_ALPHA:I = 0x0

.field protected static final SPEN_SEEKBAR_TYPE_CURSIVE:I = 0x2

.field protected static final SPEN_SEEKBAR_TYPE_DUMMY:I = 0x4

.field protected static final SPEN_SEEKBAR_TYPE_ERASER:I = -0x4

.field protected static final SPEN_SEEKBAR_TYPE_MODULATION:I = 0x6

.field protected static final SPEN_SEEKBAR_TYPE_REMOVER:I = -0x3

.field protected static final SPEN_SEEKBAR_TYPE_SIZE:I = -0x1

.field protected static final SPEN_SEEKBAR_TYPE_SUSTENANCE:I = 0x3

.field protected static mDefaultPath:Ljava/lang/String;

.field private static final minusBgPath:Ljava/lang/String;

.field private static final plusBgPath:Ljava/lang/String;


# instance fields
.field private BUTTON_SIZE:I

.field private PROGRESS_BAR_TEXT_CHECK_WIDTH:I

.field private PROGRESS_BAR_TEXT_DELTA_POSITION_X:I

.field private PROGRESS_TEXT_HEIGHT:I

.field private PROGRESS_TEXT_MARGIN_TOP:I

.field private PROGRESS_TEXT_SIZE:I

.field private PROGRESS_TEXT_WIDTH_BEAUTIFY:I

.field private PROGRESS_TEXT_WIDTH_NORMAL:I

.field private RIPPLE_EFFECT_OPACITY:I

.field private SEEKBAR_HEIGHT:I

.field private SEEKBAR_LAYOUT_HEIGHT:I

.field private SEEKBAR_PADDING_BOTTOM:I

.field private SEEKBAR_PADDING_SIDE:I

.field private SEEKBAR_PADDING_TOP:I

.field private SEEKBAR_PROGRESS_HEIGHT_ALPHA:I

.field private SEEKBAR_PROGRESS_HEIGHT_SIZE:I

.field private SEEKBAR_PROGRESS_WIDTH:I

.field private SEEKBAR_THUMB_INSET:I

.field private SEEKBAR_THUMB_OFFSET:I

.field private bgDrawable:Landroid/graphics/drawable/Drawable;

.field private isSeekbarEnable:Z

.field private mAutoDecrement:Z

.field private mAutoIncrement:Z

.field private mCanvasSize:I

.field protected mContext:Landroid/content/Context;

.field private mDividerLineLayout1:Landroid/widget/RelativeLayout;

.field private mMaxPensize:F

.field private mMinPensize:F

.field private mMinusButton:Landroid/widget/Button;

.field private final mMinusButtonClickListener:Landroid/view/View$OnClickListener;

.field private mMinusButtonImage:Landroid/widget/ImageView;

.field private final mMinusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mMinusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mMinusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPenAlpha:I

.field private mPenName:Ljava/lang/String;

.field private mPenSeekbarTextView:Landroid/widget/TextView;

.field private mPlusButton:Landroid/widget/Button;

.field private final mPlusButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPlusButtonImage:Landroid/widget/ImageView;

.field private final mPlusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mPlusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mPlusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

.field private final mSdkVersion:I

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

.field private mSeekbarHeight:I

.field private final mSeekbarKeyListner:Landroid/view/View$OnKeyListener;

.field private mSeekbarType:I

.field private mSpenUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field protected mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private final minusCtrlPath:Ljava/lang/String;

.field private final plusCtrlPath:Ljava/lang/String;

.field private progressBgPath:Ljava/lang/String;

.field private seekbarLayout:Landroid/widget/RelativeLayout;

.field private final thumbBgLinePath:Ljava/lang/String;

.field private final thumbBgPath:Ljava/lang/String;

.field private thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_plus_normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->plusBgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_minus_normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->minusBgPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMaxPensize:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mCanvasSize:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenName:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarKeyListner:Landroid/view/View$OnKeyListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pen_seekbar_bg_shape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->progressBgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_handler_line"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgLinePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_plus_mtrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->plusCtrlPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_minus_mtrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->minusCtrlPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSpenUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput p4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMaxPensize:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mCanvasSize:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenName:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$7;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$8;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$11;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarKeyListner:Landroid/view/View$OnKeyListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pen_seekbar_bg_shape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->progressBgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_handler_line"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgLinePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_plus_mtrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->plusCtrlPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snote_popup_progress_btn_minus_mtrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->minusCtrlPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSpenUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput p4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->progressBgPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_MARGIN_TOP:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_CHECK_WIDTH:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_DELTA_POSITION_X:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->getThumbCentralX()I

    move-result v0

    return v0
.end method

.method private getThumbCentralX()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private penSeekbar(Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/SeekBar;
    .locals 20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_HEIGHT:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_SIDE:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_TOP:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_SIDE:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_BOTTOM:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgLinePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v8, 0x16

    if-ge v7, v8, :cond_1

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_HEIGHT:I

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_HEIGHT:I

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_OFFSET:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v7, 0x1

    const-string v8, "#d6d6d6"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v13, Landroid/graphics/drawable/ClipDrawable;

    const/4 v7, 0x3

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->progressBgPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_WIDTH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_ALPHA:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_ALPHA:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarHeight:I

    :goto_1
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :try_start_0
    const-class v7, Landroid/widget/ProgressBar;

    const-string v8, "mMinHeight"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v7, Landroid/widget/ProgressBar;

    const-string v8, "mMaxHeight"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarHeight:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v7

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarHeight:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v14, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-direct {v14, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    :try_start_2
    const-class v7, Landroid/widget/AbsSeekBar;

    const-string v8, "setSplitTrack"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v16

    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->RIPPLE_EFFECT_OPACITY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v9, v10, v11, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v7, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/SeekBar;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v18

    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbBgPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto/16 :goto_0

    :cond_2
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_SIZE:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->progressBgPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :try_start_4
    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v12

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_3
    move-exception v12

    :try_start_6
    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_3

    :catch_5
    move-exception v12

    :try_start_7
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3

    :catch_6
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3
.end method

.method private seekbarLayout()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSpenUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v7, "setting_seekbar_layout_v40"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_LAYOUT_HEIGHT:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->plusCtrlPath:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->RIPPLE_EFFECT_OPACITY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    const v7, -0x777778

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_thick:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_thin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->minusCtrlPath:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->RIPPLE_EFFECT_OPACITY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    const v7, -0x777778

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    :goto_2
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->penSeekbar(Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/SeekBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/16 v7, 0x56

    const/16 v8, 0x57

    const/16 v9, 0x5b

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_SIZE:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/16 v7, 0x31

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_WIDTH_BEAUTIFY:I

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDividerLineLayout1:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget-object v8, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->plusBgPath:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "snote_popup_progress_btn_selector"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_opaque:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_transparent:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v7, -0x3

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v7, -0x4

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_large:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_small:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_plus:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_minus:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget-object v8, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->minusBgPath:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "snote_popup_progress_btn_selector"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/16 v7, 0x31

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_WIDTH_NORMAL:I

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_HEIGHT:I

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private setButtonColorState(Landroid/widget/ImageView;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x66888888

    if-ne p2, v0, :cond_1

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setSeekbarListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarKeyListner:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mStringUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSpenUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected initView()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/16 v5, 0x63

    const/16 v4, 0x8

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_LAYOUT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->common_ripple_effect_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->RIPPLE_EFFECT_OPACITY:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_width_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_WIDTH_NORMAL:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_width_beautify:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_WIDTH_BEAUTIFY:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_MARGIN_TOP:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_SIZE:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->seekbar_button_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->BUTTON_SIZE:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_HEIGHT:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_padding_side:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_SIDE:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_TOP:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PADDING_BOTTOM:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_thumb_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_INSET:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_thumb_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_THUMB_OFFSET:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->seekbar_progress_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->seekbar_progress_height_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_SIZE:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$integer;->seekbar_progress_height_alpha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_ALPHA:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->SEEKBAR_PROGRESS_HEIGHT_SIZE:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarHeight:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_check_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_CHECK_WIDTH:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_progress_text_delta_position_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_DELTA_POSITION_X:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->seekbarLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setSeekbarListener()V

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setLayoutDirection(I)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDividerLineLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    const v1, -0xb95b2

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDividerLineLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->thumbColorDrawable:Landroid/graphics/drawable/InsetDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method protected setEnableSeekbar(Z)V
    .locals 10

    const v9, -0x777778

    const/4 v8, 0x1

    const v7, 0x66888888

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    const v3, -0xb95b2

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_CHECK_WIDTH:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_DELTA_POSITION_X:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->getThumbCentralX()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setX(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_MARGIN_TOP:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setY(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    if-eqz v3, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v9}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v9}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_5
    const v3, -0x29292a

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;FFI)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMaxPensize:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    iput p4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mCanvasSize:I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenName:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMaxPensize:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mCanvasSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setColor(I)V

    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v2, :cond_0

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42c60000    # 99.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setColor(I)V

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDividerLineLayout1:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mDividerLineLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected setSPenSeekBarChangeListener(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
