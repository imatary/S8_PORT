.class public Lcom/sec/android/app/camera/menu/ProSlider;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;,
        Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;,
        Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final HIDE_SLIDER_TIMER_INTERVAL:J = 0xbb8L

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field private static final MANUAL_FOCUS_ASSIST_LONG_PRESS_DURATION:I = 0xc8

.field private static final MANUAL_FOCUS_ASSIST_LONG_PRESS_MSG:I = 0x1

.field public static final SLIDER_ID_EXPOSURE_VALUE:I = 0x0

.field public static final SLIDER_ID_ISO:I = 0x2

.field public static final SLIDER_ID_MANUAL_FOCUS:I = 0x4

.field public static final SLIDER_ID_RECORD_SHUTTER_SPEED:I = 0x5

.field public static final SLIDER_ID_SHUTTER_SPEED:I = 0x1

.field public static final SLIDER_ID_WB:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ProSlider"


# instance fields
.field private final AUTO_LABEL_MARGIN:F

.field private final AUTO_LABEL_TOP_MARGIN:F

.field private final AUTO_LABEL_WIDTH:F

.field private final EXPOSURE_VALUE_OFFSET:I

.field private final INDICATOR_RIGHT_MARGIN:F

.field private final INDICATOR_TEXT_COLOR:I

.field private final ISO_VALUE_OFFSET:I

.field private final KELVIN_LEVEL_NUM_OF_STEP:I

.field private final KELVIN_LEVEL_START_STEP:I

.field private final KELVIN_SLIDER_HEIGHT:F

.field private final KELVIN_SLIDER_RIGHT_MARGIN:F

.field private final KELVIN_SLIDER_TOP_MARGIN:F

.field private final KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

.field private final KELVIN_SLIDER_WIDTH:F

.field private final LABEL_IMAGE_WIDTH:F

.field private final LABEL_MARGIN:F

.field private final LABEL_NORMAL_COLOR:I

.field private final LABEL_PRESSED_COLOR:I

.field private final LABEL_SELECTED_COLOR:I

.field private final LABEL_TEXT_COLOR:I

.field private final LABEL_TEXT_HEIGHT:F

.field private final LABEL_TEXT_SIZE:I

.field private final LABEL_TEXT_STROKE_COLOR:I

.field private final LABEL_TEXT_STROKE_WIDTH:I

.field private final LABEL_TOP_MARGIN:F

.field private final NUM_OF_EXPOSURE_VALUE_STEP:[I

.field private final NUM_OF_FOCUS_STEP:[I

.field private final NUM_OF_ISO_STEP:[I

.field private final NUM_OF_RECORDING_SHUTTER_SPEED_STEP:[I

.field private final NUM_OF_SHUTTER_SPEEd_STEP:[I

.field private final PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:F

.field private final PRO_RECORDING_RIGHT_MARGIN:F

.field private final PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

.field private final PRO_SLIDE_RIGHT_MARGIN:F

.field private final RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

.field private final SCREEN_HEIGHT:I

.field private final SHUTTER_SPEED_VALUE_OFFSET:I

.field private final SLIDER_HEIGHT:F

.field private final SLIDER_TOP_MARGIN:F

.field private final SLIDER_WIDTH:F

.field private final TICK_BAR_HEIGHT:F

.field private final VALUE_TEXT_FONT_SIZE:I

.field private final VALUE_TEXT_HEIGHT:F

.field private final VALUE_TEXT_MARGIN:F

.field private final VALUE_TEXT_WIDTH:F

.field private final WB_LABEL_GROUP_HEIGHT:F

.field private mAutoButton:Lcom/samsung/android/glview/GLButton;

.field private mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHideSliderAnimation:Landroid/view/animation/Animation;

.field private mHideValueTextAnimation:Landroid/view/animation/Animation;

.field private mIsManualFocusAssistPressed:Z

.field private mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

.field private mKelvinValueText:Lcom/samsung/android/glview/GLText;

.field private mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

.field private mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

.field private mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

.field protected mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

.field protected mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

.field protected mProSliderManualFocusAssistListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;

.field protected mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

.field private mSelectedLabel:Lcom/samsung/android/glview/GLView;

.field private mShowSliderAnimation:Landroid/view/animation/Animation;

.field private mShowValueTextAnimation:Landroid/view/animation/Animation;

.field private mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

.field private mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

.field private mSliderId:I

.field private mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

.field private mValueText:Lcom/samsung/android/glview/GLText;

.field private mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

.field private mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

.field private mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RIGHT_MARGIN:F

    const v0, 0x7f0a0382

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:F

    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_RIGHT_MARGIN:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_RIGHT_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

    const v0, 0x7f0a0299

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    const v0, 0x7f0a0387

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_HEIGHT:F

    const v0, 0x7f0a01a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_MARGIN:F

    const v0, 0x7f0a019d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_WIDTH:F

    const v0, 0x7f0a019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_TOP_MARGIN:F

    const v0, 0x7f0a019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

    const v0, 0x7f0a0385

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_RIGHT_MARGIN:F

    const v0, 0x7f0a0298

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_FONT_SIZE:I

    const v0, 0x7f0b004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->EXPOSURE_VALUE_OFFSET:I

    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_VALUE_OFFSET:I

    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_VALUE_OFFSET:I

    const v0, 0x7f0b0051

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    const v0, 0x7f0b004f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const v0, 0x7f0a0380

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    const v0, 0x7f0a0384

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_TOP_MARGIN:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_TOP_MARGIN:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->WB_LABEL_GROUP_HEIGHT:F

    const v0, 0x7f0a0381

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    const v0, 0x7f0a03ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->TICK_BAR_HEIGHT:F

    const v0, 0x7f0a03cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    const v0, 0x7f0a03cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_IMAGE_WIDTH:F

    const v0, 0x7f0a03cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->TICK_BAR_HEIGHT:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TOP_MARGIN:F

    const v0, 0x7f0a03ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    const v0, 0x7f0a037e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_MARGIN:F

    const v0, 0x7f0a037f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_RIGHT_MARGIN:F

    const v0, 0x7f0a0297

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_SIZE:I

    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_COLOR:I

    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_COLOR:I

    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    const v0, 0x7f0d0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    const v0, 0x7f0d0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_PRESSED_COLOR:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_SHUTTER_SPEEd_STEP:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_RECORDING_SHUTTER_SPEED_STEP:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_ISO_STEP:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_FOCUS_STEP:[I

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p6, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->initProSlider()V

    return-void

    :array_0
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x4
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x5c
    .end array-data
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ProSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusAssist()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusAssistPressTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_SIZE:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->TICK_BAR_HEIGHT:F

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_COLOR:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_WIDTH:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_COLOR:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TOP_MARGIN:F

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/menu/ProSlider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->setChangedStep(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusAssist()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusAssistPressTimer()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/menu/ProSlider;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->WB_LABEL_GROUP_HEIGHT:F

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_PRESSED_COLOR:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/menu/ProSlider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->setValueText(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProSlider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ProSlider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method private getOffset()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->EXPOSURE_VALUE_OFFSET:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_VALUE_OFFSET:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_VALUE_OFFSET:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getWBKelvinString(I)Ljava/lang/String;
    .locals 4

    const-string v0, " "

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090360

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09035f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090362

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090361

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAutoButton()V
    .locals 12

    const/4 v11, 0x1

    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getLayoutX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_TOP_MARGIN:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    iget v6, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    return-void
.end method

.method private initProSlider()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_HEIGHT:F

    const-string v16, ""

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_FONT_SIZE:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setClipping(Z)V

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setClipping(Z)V

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_SHUTTER_SPEEd_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_SHUTTER_SPEEd_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->initAutoButton()V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setClipping(Z)V

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_RECORDING_SHUTTER_SPEED_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_RECORDING_SHUTTER_SPEED_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setClipping(Z)V

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_ISO_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_ISO_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->initAutoButton()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    new-instance v10, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    sub-float v13, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->WB_LABEL_GROUP_HEIGHT:F

    move/from16 v16, v0

    const/16 v18, 0x9

    move-object/from16 v11, p0

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v10, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->getLayoutX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_HEIGHT:F

    const v16, 0x7f020199

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090109

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090082

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f020086

    const v3, 0x7f020087

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider$1;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider$2;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getLayoutX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

    const-string v16, "6400K"

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_FONT_SIZE:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getLayoutX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getLayoutX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getLayoutX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_SLIDER_VALUE_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getLayoutX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProSlider;->VALUE_TEXT_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    new-instance v10, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_IMAGE_WIDTH:F

    sub-float v13, v1, v2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_IMAGE_WIDTH:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v1

    move/from16 v16, v0

    const/16 v18, 0x18

    move-object/from16 v11, p0

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setClipping(Z)V

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_FOCUS_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->NUM_OF_FOCUS_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProSlider;->initAutoButton()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private isTtsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChangedStep(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetTint()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v1

    add-int v0, p1, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setValueText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->showValueText()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getMarkerVisible()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->isTtsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->speakTtsString(Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_1
    const-string v1, "2021"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "2027"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    const-string v2, "0"

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onManualFocusAutoLoggingEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onExposureValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onShutterSpeedValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onManualFocusValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onShutterSpeedValueMenuSelect(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setValueText(I)V
    .locals 8

    const v3, 0x7f0c000e

    const/4 v5, 0x1

    const v4, 0x7f090001

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-lez p1, :cond_0

    const-string v2, "+%.1f"

    :goto_1
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-float v6, p1

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "%.1f"

    goto :goto_1

    :pswitch_1
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v3

    sub-int v3, p1, v3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-ltz p1, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v3

    sub-int v3, p1, v3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v3

    sub-int v3, p1, v3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090106

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090105

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090108

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne p1, v5, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090109

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    if-gez p1, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method

.method private startManualFocusAssist()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusAssistListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;->onManualFocusAssistStarted()V

    return-void
.end method

.method private startManualFocusAssistPressTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopManualFocusAssist()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusAssistListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;->onManualFocusAssistStopped()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusAssistPressTimer()V

    return-void
.end method

.method private stopManualFocusAssistPressTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideKelvinSlider()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    return-void
.end method

.method public hideSlider()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->setAnimation(Landroid/view/animation/Animation;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startAnimation()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusAssist()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopSliderExpand()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;->onHideProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V

    return-void
.end method

.method public hideValueText()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    goto :goto_0
.end method

.method public setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

    return-void
.end method

.method public setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    return-void
.end method

.method public setProSliderManualFocusAssistListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusAssistListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;

    return-void
.end method

.method public setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    return-void
.end method

.method public showKelvinSlider()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090109

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    return-void
.end method

.method public showValueText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    :cond_0
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    return-void
.end method

.method public updateKelvinSliderValue(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    mul-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public updateProRecordingSliderPosition()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->moveBaseLayoutAbsolute(FF)V

    return-void
.end method

.method public updateProSliderPosition()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->moveBaseLayoutAbsolute(FF)V

    return-void
.end method

.method public updateSliderValue(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startAnimation()V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->setValueText(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    if-ne v1, v4, :cond_5

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    if-ne v1, v5, :cond_a

    if-nez p1, :cond_a

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_e
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->setValueText(I)V

    goto/16 :goto_1
.end method
