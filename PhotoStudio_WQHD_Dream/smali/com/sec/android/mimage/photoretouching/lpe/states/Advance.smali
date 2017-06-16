.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Advance.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    }
.end annotation


# static fields
.field public static final MAXIMUM_NUMBER_COLOR_PICKED:I = 0x3

.field public static final MAX_INTENSITY:I = 0x100

.field private static final MIN_RANGE_SEEKBAR_INTERNAL_DISTANCE:I = 0x28

.field public static final PARAMETRIC_FITTING_POINTS:I = 0x6


# instance fields
.field private final TAG:Ljava/lang/String;

.field private VIEW_PICK_COLOR_SIZE:I

.field private currentCurveColor:I

.field private currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field private curveFrameRect:Landroid/graphics/Rect;

.field private highHandler:Landroid/view/View;

.field private image:[I

.field private isAdvanceApplied:Z

.field private isPickZoom:Z

.field private lowHandler:Landroid/view/View;

.field private mBLC:I

.field private mBWValue:I

.field private mColorPickerArray:[I

.field private mColorPickerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPickerColor:I

.field private mCurrentTurningProgress:I

.field private mCurveBottomButtons:Landroid/view/View;

.field private mCurveSideButtons:Landroid/view/View;

.field private mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

.field private mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandlerTouchListener:Landroid/view/View$OnTouchListener;

.field private mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHueArray:[I

.field private mHuePickerArray:[I

.field private mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

.field private mIsApplyBW:Z

.field private mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

.field private mLumArray:[I

.field private mLumPickerArray:[I

.field private mParametricListener:Landroid/view/View$OnClickListener;

.field private mPickerColor:Landroid/widget/FrameLayout;

.field private mPreX:F

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mRangeSeekBar:Landroid/view/View;

.field private mSatArray:[I

.field private mSatPickerArray:[I

.field private mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field private mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field private mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field private midHandler:Landroid/view/View;

.field private prevStateId:I

.field private rangeSeekBarStartX:F

.field private tmpBuffer:[I

.field private tmpBufferColorPicker:[I

.field private tmpBufferHeight:I

.field private tmpBufferWidth:I

.field private tmpOutputBuffer:[I

.field private touchSeekBarListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 8

    const/high16 v1, 0x90000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const-string v0, "PEDIT_Advance"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isPickZoom:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBuffer:[I

    return-object p1
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->checkRangeSeekBarMovementValidity(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I[IIILjava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvanceOriginalWithHistory([I[IIILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyToneCurve([III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Z[I[III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyColorTuning(Z[I[III)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveColorDependOnImage([III)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreX:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreX:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->clearParametricButtonsSelectedState()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarTitle(I)V

    return-void
.end method

.method private accumulateOutput()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private addSALog()V
    .locals 9

    const/16 v8, 0x64

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    and-int/lit8 v1, v1, -0x10

    const v2, 0x90010

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_TONE_CURVE:Ljava/lang/String;

    const-string v3, "Tone curve"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_PARAMETRIC:Ljava/lang/String;

    const-string v3, "Parametric"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getShadows()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_SHADOW:Ljava/lang/String;

    const-string v3, "Shadow"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_ADJUST_VALUE_PARAMETRIC:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getShadows()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getDarks()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_DARK:Ljava/lang/String;

    const-string v3, "Dark"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_ADJUST_VALUE_PARAMETRIC:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getDarks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLights()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_LIGHTS:Ljava/lang/String;

    const-string v3, "Light"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_ADJUST_VALUE_PARAMETRIC:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLights()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighlights()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_HIGHLIGHTS:Ljava/lang/String;

    const-string v3, "Highlights"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_ADJUST_VALUE_PARAMETRIC:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighlights()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_R:Ljava/lang/String;

    const-string v3, "R"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_G:Ljava/lang/String;

    const-string v3, "G"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_B:Ljava/lang/String;

    const-string v3, "B"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    and-int/lit8 v1, v1, -0x10

    const v2, 0x90020

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_COLOR_TURNING:Ljava/lang/String;

    const-string v3, "Color Turning"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const v2, 0x90021

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_BLACK_WHITE:Ljava/lang/String;

    const-string v3, "Black and White"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x90022

    :goto_1
    const v1, 0x9002b

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    if-ne v1, v8, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    if-ne v1, v8, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    if-eq v1, v8, :cond_a

    :cond_6
    const v1, 0x90029

    if-lt v0, v1, :cond_9

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_COLOR_PICKER:Ljava/lang/String;

    const-string v3, "Color Picker"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    if-eq v1, v8, :cond_7

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_HUE:Ljava/lang/String;

    const-string v4, "Hue"

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    if-eq v1, v8, :cond_8

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_SATURATION:Ljava/lang/String;

    const-string v4, "Saturation"

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    if-eq v1, v8, :cond_0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_LUMINANCE:Ljava/lang/String;

    const-string v4, "Luminance"

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_COLOR:Ljava/lang/String;

    const-string v3, "Color"

    add-int/lit8 v4, v0, 0x1

    const v5, 0x90022

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const v2, 0x90030

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_BLC:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ADVANCED_BLC_EVENT_NAME:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_ADVANCED:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ADVANCED_BLC_ADJUST:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ADVANCED_BLC_ADJUST_EVENT_NAME:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x90011
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private applyAdvanceOriginalWithHistory([I[IIILjava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v20

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->release()V

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :sswitch_0
    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_1

    move-object/from16 v2, v20

    :goto_2
    rem-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_2

    move-object/from16 v5, p2

    :goto_3
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyToneCurve([III[I[I[I)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    goto :goto_2

    :cond_2
    move-object/from16 v5, v20

    goto :goto_3

    :sswitch_1
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->isWB:Z

    if-eqz v2, :cond_5

    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_3

    move-object/from16 v2, v20

    :goto_4
    rem-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_4

    move-object/from16 v3, p2

    :goto_5
    move-object/from16 v0, v16

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->wb:I

    add-int/lit8 v4, v4, -0x64

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlBlackAndWhite([I[IIII)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p2

    goto :goto_4

    :cond_4
    move-object/from16 v3, v20

    goto :goto_5

    :cond_5
    const/4 v2, 0x3

    new-array v9, v2, [I

    const/4 v2, 0x3

    new-array v10, v2, [I

    const/4 v2, 0x3

    new-array v11, v2, [I

    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->pickerSize:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    add-int/lit8 v3, v17, 0x7

    aget v2, v2, v3

    aput v2, v9, v17

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    add-int/lit8 v3, v17, 0x7

    aget v2, v2, v3

    aput v2, v10, v17

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    add-int/lit8 v3, v17, 0x7

    aget v2, v2, v3

    aput v2, v11, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_6
    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_7

    move-object/from16 v2, v20

    :goto_7
    rem-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    :goto_8
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->colorPickedArray:[I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->pickerSize:I

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v2 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlColorTuning([I[III[I[I[I[I[I[I[II)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v2, p2

    goto :goto_7

    :cond_8
    move-object/from16 v3, v20

    goto :goto_8

    :sswitch_2
    move-object/from16 v0, v16

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->blc:I

    if-eqz v14, :cond_0

    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_9

    move-object/from16 v2, v20

    :goto_9
    rem-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_a

    move-object/from16 v3, p2

    :goto_a
    int-to-float v4, v14

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/samsung/android/saiv/imageprocessing/PhotoEnhance;->Blc([I[IIIF)I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v2, p2

    goto :goto_9

    :cond_a
    move-object/from16 v3, v20

    goto :goto_a

    :cond_b
    rem-int/lit8 v2, v18, 0x2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x90010 -> :sswitch_0
        0x90020 -> :sswitch_1
        0x90021 -> :sswitch_1
        0x90030 -> :sswitch_2
    .end sparse-switch
.end method

.method private applyAdvancePreview()V
    .locals 5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getCopyObject()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private applyColorTuning(Z[I[III)V
    .locals 18

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    add-int/lit8 v4, v4, -0x64

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlBlackAndWhite([I[IIII)V

    :goto_0
    return-void

    :cond_0
    const/16 v17, 0x0

    const v16, 0x90022

    :goto_1
    const v4, 0x9002b

    move/from16 v0, v16

    if-gt v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    add-int/lit8 v4, v4, -0x64

    aput v4, v5, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    add-int/lit8 v4, v4, -0x64

    aput v4, v5, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    add-int/lit8 v4, v4, -0x64

    aput v4, v5, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHuePickerArray:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I

    add-int/lit8 v6, v16, 0x7

    aget v5, v5, v6

    aput v5, v4, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatPickerArray:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I

    add-int/lit8 v6, v16, 0x7

    aget v5, v5, v6

    aput v5, v4, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumPickerArray:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I

    add-int/lit8 v6, v16, 0x7

    aget v5, v5, v6

    aput v5, v4, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHuePickerArray:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatPickerArray:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumPickerArray:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v15}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlColorTuning([I[III[I[I[I[I[I[I[II)V

    goto/16 :goto_0
.end method

.method private applyToneCurve([III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x4

    new-array v4, v3, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v0, p5, v6

    if-eqz v0, :cond_0

    aget-object v0, p5, v6

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getModifiedState()Z

    move-result v0

    if-eqz v0, :cond_0

    aput v8, v4, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aput v7, v4, v6

    goto :goto_1

    :cond_1
    const/16 v0, 0x400

    new-array v5, v0, [I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_3

    aget v0, v4, v6

    if-ne v0, v8, :cond_2

    aget-object v0, p5, v6

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getMappingTable()[I

    move-result-object v0

    mul-int/lit16 v1, v6, 0x100

    const/16 v2, 0x100

    invoke-static {v0, v7, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyToneCurve([III[I[I[I)V

    return-void
.end method

.method private checkRangeSeekBarMovementValidity(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x28

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$9;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$states$Advance$PARAMETRIC_THRESHOLD:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-lt p2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v2

    sub-int/2addr v2, p2

    if-ge v2, v4, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLowThres()I

    move-result v2

    sub-int v2, p2, v2

    if-lt v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighThres()I

    move-result v2

    sub-int/2addr v2, p2

    if-ge v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v2

    sub-int v2, p2, v2

    if-lt v2, v4, :cond_3

    rsub-int v2, p2, 0xff

    if-ge v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearParametricButtonsSelectedState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setContentDescriptionForZoneButtons()V

    return-void
.end method

.method private doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void
.end method

.method private enableDone(I)Z
    .locals 7

    const v4, 0x90021

    const/16 v6, 0x64

    const/4 v1, 0x0

    and-int/lit8 v3, p1, -0x10

    const v5, 0x90010

    if-ne v3, v5, :cond_3

    const v0, 0x90011

    :goto_0
    const v3, 0x90014

    if-gt v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    const v5, 0x90011

    sub-int v5, v0, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getModifiedState()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    if-ne p1, v4, :cond_a

    move v3, v4

    :goto_2
    invoke-direct {v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->fillData()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 v3, p1, -0x10

    const v5, 0x90020

    if-ne v3, v5, :cond_8

    if-ne p1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const v0, 0x90022

    :goto_3
    const v3, 0x90029

    if-gt v0, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    if-eq v3, v6, :cond_7

    :cond_5
    const/4 v1, 0x1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const v3, 0x90030

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :goto_4
    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    and-int/lit8 v3, p1, -0x10

    goto :goto_2
.end method

.method private getColor(Landroid/view/MotionEvent;)I
    .locals 9

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v7, v1, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v8

    div-float v2, v7, v8

    int-to-float v7, v3

    iget v8, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    float-to-int v4, v7

    int-to-float v7, v5

    iget v8, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    float-to-int v6, v7

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v4

    aget v7, v7, v8

    return v7
.end method

.method private getImage(Landroid/view/MotionEvent;)[I
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v11, v4, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v4, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v12

    div-float v6, v11, v12

    int-to-float v11, v7

    iget v12, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v6

    float-to-int v8, v11

    int-to-float v11, v9

    iget v12, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v6

    float-to-int v10, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->image:[I

    const/high16 v11, 0x43480000    # 200.0f

    mul-float/2addr v11, v6

    float-to-int v5, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    invoke-virtual {v11, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->setPickSize(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    invoke-virtual {v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->setViewSize(I)V

    mul-int v11, v5, v5

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->image:[I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    add-int/2addr v11, v3

    if-ltz v11, :cond_1

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    add-int/2addr v11, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-gt v11, v12, :cond_1

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v10, v11

    add-int/2addr v11, v2

    if-ltz v11, :cond_1

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v10, v11

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->image:[I

    mul-int v12, v5, v2

    add-int/2addr v12, v3

    const/high16 v13, -0x1000000

    aput v13, v11, v12

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->image:[I

    mul-int v12, v5, v2

    add-int/2addr v12, v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v8, v14

    add-int/2addr v14, v3

    div-int/lit8 v15, v5, 0x2

    sub-int v15, v10, v15

    add-int/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v16

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    aget v13, v13, v14

    aput v13, v11, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->image:[I

    goto/16 :goto_0
.end method

.method private initViewParams()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getParametricBottomButtonsParent()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSideButtonsParent()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getRangeSeekBarParent()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateToneCurveViews()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080570

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v24, v0

    const v25, 0x90011

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0805c1

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080569

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_8

    sub-int v24, v19, v9

    div-int/lit8 v24, v24, 0x4

    div-int/lit8 v25, v22, 0x2

    sub-int v6, v24, v25

    :goto_1
    div-int/lit8 v24, v19, 0x2

    div-int/lit8 v25, v9, 0x2

    add-int v24, v24, v25

    add-int v21, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0800c8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0805ad

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sub-int v24, v18, v13

    sub-int v24, v24, v20

    move/from16 v0, v24

    if-le v4, v0, :cond_3

    sub-int v24, v18, v13

    sub-int v4, v24, v20

    :cond_3
    iput v4, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    new-instance v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0386

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0387

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0388

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0389

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0800c5

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v5, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0800c6

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e038b

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->lowHandler:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e038d

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->midHandler:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e038e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->highHandler:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    new-instance v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->lowHandler:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->midHandler:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->highHandler:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    sget-object v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->LOW:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    sget-object v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->MIDDLE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    sget-object v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->HIGH:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Landroid/app/Activity;

    const v25, 0x7f0e01c8

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v10}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0801af

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v12}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v24, v0

    const v25, 0x90011

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0805c0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_2
    sub-int v24, v19, v9

    div-int/lit8 v11, v24, 0x2

    add-int v24, v19, v9

    div-int/lit8 v17, v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0800d9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    sub-int v3, v18, v24

    sub-int v23, v3, v8

    if-gez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0805ae

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    :cond_6
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080592

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f08056a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080591

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_2
.end method

.method private resetToneCurve()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    const/16 v6, 0x40

    const/16 v7, 0x80

    const/16 v8, 0xc0

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;IIIIIII)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->release()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    const/4 v1, 0x0

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v11, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-direct {v2, p0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-direct {v2, p0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-direct {v1, p0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->free()V

    :cond_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    return-void
.end method

.method private setContentDescriptionForZoneButtons()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f07029e

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0700c6

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f070152

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    const v1, 0x7f0e0389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f07012c

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setParametricBottomButtonsVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setRangeSeekBarVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setSeekBarProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    return-void
.end method

.method private setSeekBarTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    return-void
.end method

.method private setSeekBarVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    return-void
.end method

.method private setSideButtonsVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateColorTuningButton(Landroid/view/View;I)V
    .locals 11

    const v10, 0x7f08054c

    const v9, 0x7f08054b

    const v8, 0x7f080548

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080547

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x7f0e01cb

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const v6, 0x7f0e01d3

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method private updateColorTuningSeekBar(Landroid/view/View;II)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080541

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0e01c2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080543

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextSize(IF)V

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080544

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080574

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080573

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080575

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080398

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setSeekbarHeight(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02020c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getDefaultPadding()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getDefaultPadding()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0, v7, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateColorTuningViews()V
    .locals 12

    const v11, 0x7f08054a

    const v10, 0x7f080548

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    const v8, 0x7f0e030a

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0e01c0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080542

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0e01c1

    const v8, 0x7f0e01c3

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningSeekBar(Landroid/view/View;II)V

    const v7, 0x7f0e01c4

    const v8, 0x7f0e01c5

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningSeekBar(Landroid/view/View;II)V

    const v7, 0x7f0e01c6

    const v8, 0x7f0e01c7

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningSeekBar(Landroid/view/View;II)V

    const v7, 0x7f0e01c8

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080220

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080549

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v9, v9, v9, v7}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0e01c9

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v7, 0x7f0e01ca

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0e01da

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0e01cb

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01cc

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01cd

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01ce

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01cf

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d0

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d1

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d2

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d3

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d4

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d6

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    const v7, 0x7f0e01d8

    invoke-direct {p0, v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateColorTuningButton(Landroid/view/View;I)V

    return-void
.end method

.method private updateCurveColorDependOnImage([III)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v10, 0x0

    :cond_1
    :goto_1
    if-nez v10, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    :goto_2
    move v8, v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->curveFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-le v5, p2, :cond_4

    move v5, p2

    :cond_4
    if-eqz p1, :cond_1

    if-lez v4, :cond_1

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getAverageLuminance([IIIIIII)I

    move-result v7

    const/16 v0, 0xaf

    if-ge v7, v0, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    goto :goto_2
.end method

.method private updateCurveSideButtonView(IZ)V
    .locals 5

    const v4, 0x7f0e01eb

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08056b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08056d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08056c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08056f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08056e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateCurveView(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setParametricBottomButtonsVisibility(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setRangeSeekBarVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->clearParametricButtonsSelectedState()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setParametricBottomButtonsVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setRangeSeekBarVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x90011
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateParametricCurveBottomButtonView(I)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08055d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e01eb

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08055b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08055a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$9;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$states$Advance$PARAMETRIC_THRESHOLD:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->lowHandler:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLowThres()I

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->midHandler:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v2

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->highHandler:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighThres()I

    move-result v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRangeSeekbarHandlerView(II)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080562

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0e038c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateToneCurveViews()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08055c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080559

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e0386

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateParametricCurveBottomButtonView(I)V

    const v4, 0x7f0e0387

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateParametricCurveBottomButtonView(I)V

    const v4, 0x7f0e0388

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateParametricCurveBottomButtonView(I)V

    const v4, 0x7f0e0389

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateParametricCurveBottomButtonView(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080571

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080570

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e01ea

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveSideButtonView(IZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    const v5, 0x7f0e01ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080566

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e01ec

    invoke-direct {p0, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveSideButtonView(IZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    const v5, 0x7f0e01ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080567

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e01ee

    invoke-direct {p0, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveSideButtonView(IZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    const v5, 0x7f0e01ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080568

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e01f0

    invoke-direct {p0, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveSideButtonView(IZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080565

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080564

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    const v5, 0x7f0e038a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080563

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e038b

    const v5, 0x7f0205b2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekbarHandlerView(II)V

    const v4, 0x7f0e038d

    const v5, 0x7f0205b3

    invoke-direct {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekbarHandlerView(II)V

    const v4, 0x7f0e038e

    const v5, 0x7f0205b1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekbarHandlerView(II)V

    return-void
.end method


# virtual methods
.method public applyDraggingValue()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    and-int/lit8 v0, v0, -0x10

    const v1, 0x90010

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->clearParametricButtonsSelectedState()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V

    return-void
.end method

.method public doCancel()V
    .locals 8

    const/high16 v7, 0x90000

    const/16 v6, 0x100

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBuffer:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBuffer:[I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    if-eq v1, v7, :cond_1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->enableDone(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070182

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->doCancel()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->addSALog()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setEdited()V

    const/high16 v0, 0x90000

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->reloadThumbnail()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public draw()V
    .locals 5

    const v2, 0x90010

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const v1, 0x9002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isPickZoom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->draw()V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    and-int/lit8 v0, v0, -0x10

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const v4, 0x90011

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getNumberOfFittingPoints()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->draw(III)V

    :cond_1
    return-void
.end method

.method public freeResources()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->clearParametricButtonsSelectedState()V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setParametricBottomButtonsVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setRangeSeekBarVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSideButtonsVisibility(Z)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mParametricListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->free()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cleanUp()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    :cond_1
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBuffer:[I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->release()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->release()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public init()V
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x64

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistory:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "advance"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x90000

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getParametricBottomButtonsParent()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveBottomButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSideButtonsParent()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveSideButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getRangeSeekBarParent()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    const v1, 0x90022

    :goto_0
    const v3, 0x9002b

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v9, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I

    new-array v3, v9, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I

    new-array v3, v9, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHuePickerArray:[I

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatPickerArray:[I

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumPickerArray:[I

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f070130

    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f07027d

    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f070159

    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01d3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPickerColor:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->resetToneCurve()V

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v4, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    div-float v2, v3, v4

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$2;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;F)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->touchSeekBarListener:Landroid/view/View$OnTouchListener;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->touchSeekBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->touchSeekBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e01c6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->touchSeekBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentCurveColor:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setContentDescriptionForZoneButtons()V

    return-void
.end method

.method public isReachMaxNumberColorPicked()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChange()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->onOrientationChange(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    return-void
.end method

.method public onProgressChange(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->updateValue(ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)V

    goto :goto_0

    :sswitch_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x90011 -> :sswitch_0
        0x90030 -> :sswitch_1
    .end sparse-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    instance-of v1, p1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getSmoothProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const v2, 0x90021

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01c3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onSubState(I)V
    .locals 8

    const v5, 0x90030

    const v7, 0x90020

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const v2, 0x90021

    if-eq p1, v2, :cond_2

    if-eq p1, v7, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    and-int/lit8 v2, v2, -0x10

    const v5, 0x90010

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->enableDone(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    if-eqz v2, :cond_5

    :cond_3
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->accumulateOutput()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->resetToneCurve()V

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSideButtonsVisibility(Z)V

    const v2, 0x90010

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const v4, 0x90011

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveView(I)V

    goto :goto_1

    :pswitch_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    and-int/lit8 v2, v2, -0x10

    if-eq v2, v7, :cond_a

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->enableDone(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    if-eqz v2, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->accumulateOutput()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    const v0, 0x90022

    :goto_4
    const v2, 0x9002b

    if-gt v0, v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentTurningProgress:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    :cond_9
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setParametricBottomButtonsVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setRangeSeekBarVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSideButtonsVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPickerColor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v4, 0x7f0e01d4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v4, 0x7f0e01d6

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v4, 0x7f0e01d8

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    goto/16 :goto_1

    :pswitch_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    and-int/lit8 v2, v2, -0x10

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->enableDone(I)Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    if-eqz v2, :cond_c

    :cond_b
    move v2, v4

    :goto_5
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isAdvanceApplied:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->accumulateOutput()V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setParametricBottomButtonsVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setRangeSeekBarVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSideButtonsVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    goto/16 :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    :pswitch_5
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    if-nez v2, :cond_e

    move v2, v4

    :goto_6
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    if-ne v2, v7, :cond_d

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    :cond_d
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->prevStateId:I

    goto/16 :goto_1

    :cond_e
    move v2, v3

    goto :goto_6

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x90010
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v25, v0

    const v26, 0x90020

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v25, v0

    const v26, 0x9002c

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x10

    const v26, 0x90020

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v25, v0

    const v26, 0x90020

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v25, v0

    const v26, 0x9002c

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    const/16 v25, 0x0

    :goto_0
    return v25

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v13

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v19

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0801b4

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v20, v19, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v22, v25

    if-lez v25, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move/from16 v25, v0

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0xc8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v23, v22, v25

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->VIEW_PICK_COLOR_SIZE:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x10

    const v26, 0x90010

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->onTouchEvent(Landroid/view/MotionEvent;ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_5
    const/high16 v25, 0x43480000    # 200.0f

    add-float v23, v22, v25

    goto :goto_1

    :pswitch_1
    new-instance v25, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw(Z)V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isPickZoom:Z

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isPickZoom:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->getImage(Landroid/view/MotionEvent;)[I

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->imageData:[I

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->getColor(Landroid/view/MotionEvent;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    div-float v6, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    div-float v8, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x10

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    div-float v15, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    div-float v5, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v15, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    add-float v26, v20, v21

    add-float v27, v23, v24

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->setBoundry(FFFF)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v25, 0x7f020121

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    const v25, 0x7f0e0472

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v25, 0x7f020122

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/LayerDrawable;

    const v25, 0x7f0e0472

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrentPickerColor:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x10100a1

    aput v27, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d4

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d5

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d6

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d7

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d8

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    const v26, 0x7f0e01d9

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    :cond_8
    if-eqz v17, :cond_9

    if-eqz v18, :cond_9

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v25, v0

    const v26, 0x90029

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v25, v0

    const v26, 0x9002a

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v25, v0

    const v26, 0x9002b

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->isPickZoom:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cleanUp()V

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mGLZoomAndPickColor:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferColorPicker:[I

    move-object/from16 v25, v0

    if-nez v25, :cond_e

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferColorPicker:[I

    :cond_e
    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferColorPicker:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    invoke-static/range {v25 .. v29}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
