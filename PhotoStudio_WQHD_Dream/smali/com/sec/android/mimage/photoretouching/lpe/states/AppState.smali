.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# static fields
.field public static final STATE_ADD_IMAGE:I = 0x50000

.field public static final STATE_ADJUSTMENT:I = 0x20000

.field public static final STATE_ADVANCE:I = 0x90000

.field public static final STATE_DECORATION:I = 0x80000

.field public static final STATE_DRAWING:I = 0x40000

.field public static final STATE_EFFECTS:I = 0x1000

.field public static final STATE_IDLE:I = 0x100

.field public static final STATE_PORTRAIT:I = 0x2000

.field public static final STATE_SELECTION:I = 0x10000

.field public static final STATE_SUPERIMPOSE:I = 0x80000

.field public static final STATE_SUPERIMPOSE_360:I = 0x80009

.field public static final STATE_TONE:I = 0x800

.field public static final SUB_STATE_ADJUSTMENT_CLOCKWISE:I = 0x20001

.field public static final SUB_STATE_ADJUSTMENT_CROP_16_9:I = 0x20009

.field public static final SUB_STATE_ADJUSTMENT_CROP_16_9_BTN:I = 0x2000d

.field public static final SUB_STATE_ADJUSTMENT_CROP_1_1:I = 0x20006

.field public static final SUB_STATE_ADJUSTMENT_CROP_3_4:I = 0x20008

.field public static final SUB_STATE_ADJUSTMENT_CROP_4_3:I = 0x20007

.field public static final SUB_STATE_ADJUSTMENT_CROP_4_3_BTN:I = 0x2000c

.field public static final SUB_STATE_ADJUSTMENT_CROP_9_16:I = 0x2000a

.field public static final SUB_STATE_ADJUSTMENT_CROP_BTN:I = 0x2000b

.field public static final SUB_STATE_ADJUSTMENT_CROP_FREE:I = 0x20004

.field public static final SUB_STATE_ADJUSTMENT_CROP_ORI_ASPECT:I = 0x20005

.field public static final SUB_STATE_ADJUSTMENT_FLIP_HORIZONTAL:I = 0x20002

.field public static final SUB_STATE_ADJUSTMENT_FLIP_VERTICAL:I = 0x20003

.field public static final SUB_STATE_ADJUSTMENT_LASSO:I = 0x2000e

.field public static final SUB_STATE_ADJUSTMENT_PERSPECTIVE:I = 0x20014

.field public static final SUB_STATE_ADJUSTMENT_PERSPECTIVE_HORIZONTAL:I = 0x20016

.field public static final SUB_STATE_ADJUSTMENT_PERSPECTIVE_VERTICAL:I = 0x20015

.field public static final SUB_STATE_ADJUSTMENT_RESET:I = 0x20013

.field public static final SUB_STATE_ADJUSTMENT_SMART:I = 0x2000f

.field public static final SUB_STATE_ADJUSTMENT_SMART_ADD:I = 0x20011

.field public static final SUB_STATE_ADJUSTMENT_SMART_AUTO:I = 0x20010

.field public static final SUB_STATE_ADJUSTMENT_SMART_SUB:I = 0x20012

.field public static final SUB_STATE_ADVANCE_BLC:I = 0x90030

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING:I = 0x90020

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_B_W:I = 0x90021

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_1:I = 0x90022

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_10:I = 0x9002b

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_2:I = 0x90023

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_3:I = 0x90024

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_4:I = 0x90025

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_5:I = 0x90026

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_6:I = 0x90027

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_7:I = 0x90028

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_8:I = 0x90029

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_COLOR_9:I = 0x9002a

.field public static final SUB_STATE_ADVANCE_COLOR_TUNING_PICK_COLOR:I = 0x9002c

.field public static final SUB_STATE_ADVANCE_NOISE_REDUCTION:I = 0x90040

.field public static final SUB_STATE_ADVANCE_TONE_CURVE:I = 0x90010

.field public static final SUB_STATE_ADVANCE_TONE_CURVE_PARAMETRIC:I = 0x90011

.field public static final SUB_STATE_ADVANCE_TONE_CURVE_POINT_BLUE:I = 0x90014

.field public static final SUB_STATE_ADVANCE_TONE_CURVE_POINT_GREEN:I = 0x90013

.field public static final SUB_STATE_ADVANCE_TONE_CURVE_POINT_RED:I = 0x90012

.field public static final SUB_STATE_DECORATION_ADD_IMAGE:I = 0x80001

.field public static final SUB_STATE_DECORATION_APPLY:I = 0x80008

.field public static final SUB_STATE_DECORATION_COVER:I = 0x8000a

.field public static final SUB_STATE_DECORATION_DRAWING:I = 0x80004

.field public static final SUB_STATE_DECORATION_LABEL:I = 0x80003

.field public static final SUB_STATE_DECORATION_NEXT:I = 0x80007

.field public static final SUB_STATE_DECORATION_PLAY:I = 0x80006

.field public static final SUB_STATE_DECORATION_PREVIOUS:I = 0x80005

.field public static final SUB_STATE_DECORATION_STICKER:I = 0x80002

.field public static final SUB_STATE_DRAWING_ERASER:I = 0x40002

.field public static final SUB_STATE_DRAWING_PEN:I = 0x40001

.field public static final SUB_STATE_DRAWING_REDO:I = 0x40004

.field public static final SUB_STATE_DRAWING_UNDO:I = 0x40003

.field public static final SUB_STATE_EFFECT_AUTO_ENHANCE:I = 0x104a

.field public static final SUB_STATE_EFFECT_BLUE_WASH:I = 0x101b

.field public static final SUB_STATE_EFFECT_CARTOON:I = 0x1016

.field public static final SUB_STATE_EFFECT_DAWN_CAST:I = 0x101d

.field public static final SUB_STATE_EFFECT_DOWNLIGHT:I = 0x101a

.field public static final SUB_STATE_EFFECT_DOWNLOAD:I = 0x1401

.field public static final SUB_STATE_EFFECT_FADE:I = 0x1027

.field public static final SUB_STATE_EFFECT_GOTHIC_NOIR:I = 0x1024

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_1:I = 0x1002

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_10:I = 0x100b

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_11:I = 0x100c

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_12:I = 0x100d

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_13:I = 0x100e

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_14:I = 0x100f

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_15:I = 0x1010

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_16:I

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_2:I = 0x1003

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_3:I = 0x1004

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_4:I = 0x1005

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_5:I = 0x1006

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_6:I = 0x1007

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_7:I = 0x1008

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_8:I = 0x1009

.field public static final SUB_STATE_EFFECT_GPU_EFFECT_9:I = 0x100a

.field public static final SUB_STATE_EFFECT_GRAYSCALE:I = 0x1029

.field public static final SUB_STATE_EFFECT_IMPRESSIONIST:I = 0x101f

.field public static final SUB_STATE_EFFECT_LIGHT_FLARE:I = 0x1015

.field public static final SUB_STATE_EFFECT_LIGHT_STREAK:I = 0x1019

.field public static final SUB_STATE_EFFECT_MAGIC_PEN:I = 0x1025

.field public static final SUB_STATE_EFFECT_MANAGER:I = 0x1402

.field public static final SUB_STATE_EFFECT_NEGATIVE:I = 0x1020

.field public static final SUB_STATE_EFFECT_NOSTALGIA:I = 0x1028

.field public static final SUB_STATE_EFFECT_NO_EFFECT:I = 0x1001

.field public static final SUB_STATE_EFFECT_POP_ART:I = 0x1022

.field public static final SUB_STATE_EFFECT_POSTERIZE:I = 0x1023

.field public static final SUB_STATE_EFFECT_SEPIA:I = 0x102a

.field public static final SUB_STATE_EFFECT_SHARPEN:I = 0x1012

.field public static final SUB_STATE_EFFECT_SKETCH_ART:I = 0x1021

.field public static final SUB_STATE_EFFECT_SOFT_GLOW:I = 0x1013

.field public static final SUB_STATE_EFFECT_STARDUST:I = 0x1014

.field public static final SUB_STATE_EFFECT_TINT:I = 0x1018

.field public static final SUB_STATE_EFFECT_TURQUOISE:I = 0x101e

.field public static final SUB_STATE_EFFECT_VIGNETTE:I = 0x1026

.field public static final SUB_STATE_EFFECT_VINTAGE:I = 0x1017

.field public static final SUB_STATE_EFFECT_YELLOW_GLOW:I = 0x101c

.field public static final SUB_STATE_NONE:I = 0x101

.field public static final SUB_STATE_PORTRAIT_AIRBRUSH:I = 0x2003

.field public static final SUB_STATE_PORTRAIT_BRIGHTEN:I = 0x2002

.field public static final SUB_STATE_PORTRAIT_LARGE_EYE:I = 0x2005

.field public static final SUB_STATE_PORTRAIT_OUT_OF_FOCUS:I = 0x2004

.field public static final SUB_STATE_PORTRAIT_RED_EYE_FIX:I = 0x2001

.field public static final SUB_STATE_PORTRAIT_SLIM_FACE:I = 0x2006

.field public static final SUB_STATE_PORTRAIT_SLIM_FIGURE:I = 0x2007

.field public static final SUB_STATE_SELECTION_BRUSH:I = 0x10001

.field public static final SUB_STATE_SELECTION_CIRCLE:I = 0x10003

.field public static final SUB_STATE_SELECTION_COLORPICK:I = 0x10006

.field public static final SUB_STATE_SELECTION_FROM_OTHER:I = 0x10007

.field public static final SUB_STATE_SELECTION_LASSO:I = 0x10005

.field public static final SUB_STATE_SELECTION_MAGNETIC:I = 0x10002

.field public static final SUB_STATE_SELECTION_RECT:I = 0x10004

.field public static final SUB_STATE_SELECTION_SMART:I = 0x10008

.field public static final SUB_STATE_TONE_AUTO_ENHANCE:I = 0x806

.field public static final SUB_STATE_TONE_BLUE:I = 0x810

.field public static final SUB_STATE_TONE_BRIGHTNESS:I = 0x801

.field public static final SUB_STATE_TONE_CONTRAST:I = 0x802

.field public static final SUB_STATE_TONE_EXPOSURE:I = 0x811

.field public static final SUB_STATE_TONE_GREEN:I = 0x805

.field public static final SUB_STATE_TONE_HISTOGRAM:I = 0x809

.field public static final SUB_STATE_TONE_HUE:I = 0x808

.field public static final SUB_STATE_TONE_RED:I = 0x804

.field public static final SUB_STATE_TONE_SATURATION:I = 0x803

.field public static final SUB_STATE_TONE_TEMPERATURE:I = 0x807

.field public static final SUB_STATE_TONE_WHITE_BALANCE:I = 0x820

.field public static final SUB_STATE_TONE_WHITE_BALANCE_AUTO:I = 0x821

.field public static final SUB_STATE_TONE_WHITE_BALANCE_CLOUDY:I = 0x823

.field public static final SUB_STATE_TONE_WHITE_BALANCE_DAYLIGHT:I = 0x822

.field public static final SUB_STATE_TONE_WHITE_BALANCE_FLUORESCENT:I = 0x825

.field public static final SUB_STATE_TONE_WHITE_BALANCE_INCANDESCENT:I = 0x824

.field public static final SUB_STATE_TONE_WHITE_BALANCE_KELVIN:I = 0x826


# instance fields
.field protected isApplyAvailable:Z

.field protected mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

.field protected mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field protected mCurrState:I

.field protected mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

.field protected mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field protected mIsSeeking:Z

.field protected mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field protected mMainState:I

.field protected mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1010

    :goto_0
    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->SUB_STATE_EFFECT_GPU_EFFECT_16:I

    return-void

    :cond_0
    const/16 v0, 0x1011

    goto :goto_0
.end method

.method public constructor <init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mIsSeeking:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->isApplyAvailable:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mCurrState:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->isApplyAvailable:Z

    return-void
.end method


# virtual methods
.method protected final addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V
    .locals 1

    invoke-virtual {p1, p4, p5}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setOriginalDimensions(II)V

    invoke-virtual {p2, p4, p5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalDimensions(II)V

    invoke-static {p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->write([I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setOriginalId(I)V

    invoke-virtual {p2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalId(I)V

    return-void
.end method

.method protected final addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V
    .locals 7

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyCounterValue:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyCounterValue:I

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isPng()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setIsPng(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addEventForFaceDetection(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->addHistoryEvent(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateCardViewData([III)V

    :cond_0
    return-void
.end method

.method public abstract doCancel()V
.end method

.method public abstract doDone(Z)V
.end method

.method public abstract draw()V
.end method

.method public abstract freeResources()V
.end method

.method public getApplyAvailableStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->isApplyAvailable:Z

    return v0
.end method

.method public getCurrState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mCurrState:I

    return v0
.end method

.method public abstract init()V
.end method

.method public abstract loadResources()V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract onOrientationChange()V
.end method

.method public onProgressChange(I)V
    .locals 0

    return-void
.end method

.method public onSmoothProgressChange(F)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mIsSeeking:Z

    return-void
.end method

.method public onStateChange(II)V
    .locals 2

    and-int/lit16 v0, p2, -0x100

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-ne v0, v1, :cond_0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mCurrState:I

    :cond_0
    and-int/lit16 v0, p2, -0x100

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->onSubState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-ne p2, v0, :cond_3

    and-int/lit16 v0, p1, -0x100

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->init()V

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p1, -0x100

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, -0x100

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mMainState:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->freeResources()V

    goto :goto_0
.end method

.method public onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->mIsSeeking:Z

    return-void
.end method

.method public abstract onSubState(I)V
.end method

.method public abstract onSurfaceChanged()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
