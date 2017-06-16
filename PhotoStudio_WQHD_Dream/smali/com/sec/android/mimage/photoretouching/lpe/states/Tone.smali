.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Tone.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;


# instance fields
.field private final AUTO_ENHANCE_MAX_HEIGHT:I

.field private final AUTO_ENHANCE_MAX_WIDTH:I

.field private final AUTO_ENHANCE_MIN_HEIGHT:I

.field private final AUTO_ENHANCE_MIN_WIDTH:I

.field private final DEFAULT_TONE_SUB_MODE_VALUE:I

.field private final DEFAULT_WB_MODE:I

.field private final TEMPERATURE_CHANGE_LEVEL:I

.field private isAutoEnhanceApplied:Z

.field private mBrightness:I

.field private mContrast:I

.field private mExposure:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

.field private mHue:I

.field private mNextTemperatureBtn:Landroid/widget/LinearLayout;

.field private mPrevTemperatureBtn:Landroid/widget/LinearLayout;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mProgress:I

.field private mSaturation:I

.field private mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

.field private mWBMode:I

.field private mWBTemperature:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 8

    const/16 v1, 0x800

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->DEFAULT_TONE_SUB_MODE_VALUE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->DEFAULT_WB_MODE:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->TEMPERATURE_CHANGE_LEVEL:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->AUTO_ENHANCE_MIN_WIDTH:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->AUTO_ENHANCE_MIN_HEIGHT:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->AUTO_ENHANCE_MAX_WIDTH:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->AUTO_ENHANCE_MAX_HEIGHT:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v4, 0x809

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->setWindowListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;)V

    invoke-direct {p0, p6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->initWhiteBalance(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->onSeekUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;Z[I[III[BIIIIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->applyTone(Z[I[III[BIIIIIIIZ)V

    return-void
.end method

.method private applyTone(Z[I[III[BIIIIIIIZ)V
    .locals 19

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const/16 v18, 0x0

    new-instance v10, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v7, p4, -0x1

    add-int/lit8 v8, p5, -0x1

    invoke-direct {v10, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p14, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportAutoEnhance()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v4

    const/16 v5, 0x806

    if-ne v4, v5, :cond_2

    :cond_0
    const/16 v4, 0x20

    move/from16 v0, p4

    if-le v0, v4, :cond_1

    const/16 v4, 0x20

    move/from16 v0, p5

    if-le v0, v4, :cond_1

    const/16 v4, 0x1770

    move/from16 v0, p4

    if-ge v0, v4, :cond_1

    const/16 v4, 0x1770

    move/from16 v0, p5

    if-ge v0, v4, :cond_1

    if-eqz p1, :cond_b

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->autoBLCInit([I[IIII)I

    :cond_1
    if-eqz p1, :cond_c

    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->DeInitBLC(I)I

    :cond_2
    const/16 v4, 0x32

    move/from16 v0, p7

    if-eq v0, v4, :cond_3

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    invoke-static/range {v4 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlBrightnessRange100([I[B[IIIILandroid/graphics/Rect;)V

    if-nez v18, :cond_d

    const/16 v18, 0x1

    :cond_3
    :goto_2
    const/16 v4, 0x32

    move/from16 v0, p8

    if-eq v0, v4, :cond_4

    if-eqz v18, :cond_e

    move-object v5, v6

    :goto_3
    if-eqz v18, :cond_f

    move-object/from16 v4, p3

    :goto_4
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p8

    invoke-static {v5, v4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlExposure([I[IIII)V

    if-nez v18, :cond_10

    const/16 v18, 0x1

    :cond_4
    :goto_5
    const/16 v4, 0x32

    move/from16 v0, p9

    if-eq v0, v4, :cond_5

    if-eqz v18, :cond_11

    move-object v11, v6

    :goto_6
    if-eqz v18, :cond_12

    move-object/from16 v13, p3

    :goto_7
    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlContrastRange100([I[B[IIIILandroid/graphics/Rect;)V

    if-nez v18, :cond_13

    const/16 v18, 0x1

    :cond_5
    :goto_8
    const/16 v4, 0x32

    move/from16 v0, p10

    if-eq v0, v4, :cond_6

    if-eqz v18, :cond_14

    move-object v11, v6

    :goto_9
    if-eqz v18, :cond_15

    move-object/from16 v13, p3

    :goto_a
    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlSaturationRange100([I[B[IIIILandroid/graphics/Rect;)V

    if-nez v18, :cond_16

    const/16 v18, 0x1

    :cond_6
    :goto_b
    const/16 v4, 0x32

    move/from16 v0, p11

    if-eq v0, v4, :cond_7

    if-eqz v18, :cond_17

    move-object v11, v6

    :goto_c
    if-eqz v18, :cond_18

    move-object/from16 v13, p3

    :goto_d
    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p11

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlHueRange100([I[B[IIIILandroid/graphics/Rect;)V

    if-nez v18, :cond_19

    const/16 v18, 0x1

    :cond_7
    :goto_e
    const/4 v4, -0x1

    move/from16 v0, p12

    if-eq v0, v4, :cond_8

    packed-switch p12, :pswitch_data_0

    :goto_f
    if-nez v18, :cond_26

    const/16 v18, 0x1

    :cond_8
    :goto_10
    if-eqz v18, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v7, v6

    move-object/from16 v0, p3

    invoke-static {v6, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekbarColor([III)V

    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isApplyAvailable:Z

    return-void

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v5, p3

    goto/16 :goto_3

    :cond_f
    move-object v4, v6

    goto/16 :goto_4

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_11
    move-object/from16 v11, p3

    goto/16 :goto_6

    :cond_12
    move-object v13, v6

    goto/16 :goto_7

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_14
    move-object/from16 v11, p3

    goto :goto_9

    :cond_15
    move-object v13, v6

    goto :goto_a

    :cond_16
    const/16 v18, 0x0

    goto :goto_b

    :cond_17
    move-object/from16 v11, p3

    goto :goto_c

    :cond_18
    move-object v13, v6

    goto :goto_d

    :cond_19
    const/16 v18, 0x0

    goto :goto_e

    :pswitch_0
    if-eqz v18, :cond_1a

    move-object v11, v6

    :goto_11
    if-eqz v18, :cond_1b

    move-object/from16 v13, p3

    :goto_12
    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyAutoWhiteBalance([I[B[IIILandroid/graphics/Rect;)V

    goto :goto_f

    :cond_1a
    move-object/from16 v11, p3

    goto :goto_11

    :cond_1b
    move-object v13, v6

    goto :goto_12

    :pswitch_1
    if-eqz v18, :cond_1c

    move-object v11, v6

    :goto_13
    if-eqz v18, :cond_1d

    move-object/from16 v13, p3

    :goto_14
    const/16 v4, 0x822

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTemperature(I)I

    move-result v16

    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    :cond_1c
    move-object/from16 v11, p3

    goto :goto_13

    :cond_1d
    move-object v13, v6

    goto :goto_14

    :pswitch_2
    if-eqz v18, :cond_1e

    move-object v11, v6

    :goto_15
    if-eqz v18, :cond_1f

    move-object/from16 v13, p3

    :goto_16
    const/16 v4, 0x823

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTemperature(I)I

    move-result v16

    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    :cond_1e
    move-object/from16 v11, p3

    goto :goto_15

    :cond_1f
    move-object v13, v6

    goto :goto_16

    :pswitch_3
    if-eqz v18, :cond_20

    move-object v11, v6

    :goto_17
    if-eqz v18, :cond_21

    move-object/from16 v13, p3

    :goto_18
    const/16 v4, 0x824

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTemperature(I)I

    move-result v16

    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    :cond_20
    move-object/from16 v11, p3

    goto :goto_17

    :cond_21
    move-object v13, v6

    goto :goto_18

    :pswitch_4
    if-eqz v18, :cond_22

    move-object v11, v6

    :goto_19
    if-eqz v18, :cond_23

    move-object/from16 v13, p3

    :goto_1a
    const/16 v4, 0x825

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTemperature(I)I

    move-result v16

    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    :cond_22
    move-object/from16 v11, p3

    goto :goto_19

    :cond_23
    move-object v13, v6

    goto :goto_1a

    :pswitch_5
    if-eqz v18, :cond_24

    move-object v11, v6

    :goto_1b
    if-eqz v18, :cond_25

    move-object/from16 v13, p3

    :goto_1c
    move-object/from16 v12, p6

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p13

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    :cond_24
    move-object/from16 v11, p3

    goto :goto_1b

    :cond_25
    move-object v13, v6

    goto :goto_1c

    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_10

    nop

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

.method private doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 13

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;

    move-object v1, p0

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;IIIIIIIZLcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void
.end method

.method private initWhiteBalance(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getTemperatureSeekbar()Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setListener(Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e0459

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPrevTemperatureBtn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPrevTemperatureBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPrevTemperatureBtn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e045e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mNextTemperatureBtn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mNextTemperatureBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mNextTemperatureBtn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private isWhiteBalanceState(I)Z
    .locals 2

    and-int/lit8 v0, p1, -0x10

    const/16 v1, 0x820

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onSeekUpdate()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    array-length v1, v1

    new-array v4, v1, [I

    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->applyTone(Z[I[III[BIIIIIIIZ)V

    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    const/4 v3, 0x0

    array-length v5, v4

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public doCancel()V
    .locals 8

    const/16 v2, 0x809

    const/16 v7, 0x800

    const/16 v6, 0x100

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->selectToolButton(IZ)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->cleanUp()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    if-eq v1, v7, :cond_1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x32

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    if-ne v0, v11, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    if-ne v0, v7, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070182

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->doCancel()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    if-eq v0, v7, :cond_2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_BRIGHTNESS:Ljava/lang/String;

    const-string v3, "Brightness"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    add-int/lit8 v4, v4, -0x32

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "Brightness"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    if-eq v0, v7, :cond_3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_EXPOSURE:Ljava/lang/String;

    const-string v3, "Exposure"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    add-int/lit8 v4, v4, -0x32

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "Exposure"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    if-eq v0, v7, :cond_4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_HUE:Ljava/lang/String;

    const-string v3, "Hue"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    add-int/lit8 v4, v4, -0x32

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "Hue"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    if-eq v0, v11, :cond_5

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE:Ljava/lang/String;

    const-string v3, "White balance"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE_WHITE_BALANCE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "White Balance"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    if-eq v0, v7, :cond_6

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_SATURATION:Ljava/lang/String;

    const-string v3, "Saturation"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    add-int/lit8 v4, v4, -0x32

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "Saturation"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    if-eq v0, v7, :cond_7

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_CONTRAST:Ljava/lang/String;

    const-string v3, "Contrast"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    add-int/lit8 v4, v4, -0x32

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E200"

    const-string v3, "Contrast"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v0

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    if-eqz v0, :cond_8

    sput-boolean v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isImageEnhanced:Z

    invoke-virtual {v1, v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setAutoEnhanced(Z)V

    :goto_2
    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setEdited()V

    const/16 v0, 0x800

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->reloadThumbnail()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_AUTO:Ljava/lang/String;

    const-string v3, "Auto"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_DAYLIGHT:Ljava/lang/String;

    const-string v3, "Daylight"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_CLOUDY:Ljava/lang/String;

    const-string v3, "Cloudy"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_INCANDESCENT:Ljava/lang/String;

    const-string v3, "Incandescent"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_FLUORESCENT:Ljava/lang/String;

    const-string v3, "Fluorescent"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_WHITE_BALANCE_K:Ljava/lang/String;

    const-string v3, "K"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_TONE:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_TONE_ADJUST_VALUE_WHITE_BALANCE_VALUE_K:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    int-to-long v8, v4

    invoke-static {v0, v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_8
    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isImageEnhanced:Z

    goto :goto_2

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

.method public draw()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    const/16 v1, 0x809

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->draw()V

    :cond_0
    return-void
.end method

.method public declared-synchronized freeResources()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBMenuVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "tone"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    const/16 v1, 0x157c

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isWhiteBalanceState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBMenuVisibility(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isApplyAvailable:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBMenuVisibility(Z)V

    goto :goto_0
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onExitClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->doCancel()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChange()V
    .locals 6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    const/16 v3, 0x809

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->init(IIII)V

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onProgressChange(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isWhiteBalanceState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x821

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x822

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x823

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x824

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x825

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x826

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x32

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    sparse-switch v0, :sswitch_data_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mProgress:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$7;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    goto :goto_1

    :sswitch_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    goto :goto_1

    :sswitch_2
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    goto :goto_1

    :sswitch_3
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    goto :goto_1

    :sswitch_4
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x801 -> :sswitch_0
        0x802 -> :sswitch_3
        0x803 -> :sswitch_2
        0x808 -> :sswitch_4
        0x811 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStopTrackingTouch()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->onStopTrackingTouch()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isWhiteBalanceState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    :cond_0
    return-void
.end method

.method public onSubState(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isWhiteBalanceState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWhiteBalanceModeNameVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBSeekBarVisibility(Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mIsSeeking:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBMenuVisibility(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x821

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x822

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x823

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x824

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x825

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x826

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0

    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    goto/16 :goto_0

    :pswitch_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    goto/16 :goto_0

    :pswitch_9
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    goto/16 :goto_0

    :pswitch_a
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    goto/16 :goto_0

    :pswitch_b
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    goto/16 :goto_0

    :pswitch_c
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBMenuVisibility(Z)V

    packed-switch p1, :pswitch_data_2

    :pswitch_d
    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mProgress:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mProgress:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    array-length v2, v2

    new-array v5, v2, [I

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mBrightness:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBMode:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isAutoEnhanceApplied:Z

    move/from16 v16, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->applyTone(Z[I[III[BIIIIIIIZ)V

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v3

    const/4 v4, 0x0

    array-length v6, v5

    invoke-static {v5, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070134

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->enableAutoEnhanceButton(Z)V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mSaturation:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mExposure:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContrast:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHue:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mProgress:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto/16 :goto_1

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v6

    double-to-int v0, v2

    move/from16 v19, v0

    div-int/lit8 v18, v19, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    sub-int v3, v3, v19

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    sub-int v4, v4, v18

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->init(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x809

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->selectToolButton(IZ)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x820
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x801
        :pswitch_e
        :pswitch_14
        :pswitch_12
        :pswitch_16
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_15
        :pswitch_17
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->onSurfaceChanged()V

    :cond_0
    return-void
.end method

.method public onTemperatureChanged(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->isWhiteBalanceState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$8;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    const/16 v1, 0x809

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistogram:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
