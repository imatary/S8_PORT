.class public Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "RecordingTimerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;
    }
.end annotation


# static fields
.field private static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecordingTimerIndicator"


# instance fields
.field private final COVER_INDICATOR_POS_X:I

.field private final COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

.field private final COVER_RECORDING_REC_TIME_TEXT_COLOR:I

.field private final COVER_REC_ICON_WIDTH:I

.field private final COVER_REC_SIZE_TEXT_SIZE:I

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_REC_ICON_WIDTH:I

.field private final RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBlinkCount:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIsRecordingTimeLimited:Z

.field private mMaxRecordingTimeInSecond:I

.field private mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    const v2, 0x7f0a0147

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    const v2, 0x7f0a0146

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    const v2, 0x7f0a0144

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    const v2, 0x7f0a0145

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    const v2, 0x7f0a0148

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    const v2, 0x7f0a01c0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    const v2, 0x7f0a01c2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    const v2, 0x7f0a01c1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    const v2, 0x7f0b0053

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    const v2, 0x7f0d0045

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    const v2, 0x7f0a02b4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    const v2, 0x7f0b0030

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    const v2, 0x7f0b002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW:Z

    const v0, 0x7f0a02ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    const v0, 0x7f0a027a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    const v0, 0x7f0a0104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    const v0, 0x7f0a02ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    const v0, 0x7f0d000b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->initIndicator()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecTimeIndicator(Z)V

    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string v0, "RecordingTimerIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkRecIconIndicator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkRecTimeIndicator(Z)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "RecordingTimerIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkRecTimeIndicator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initIndicator()V
    .locals 38

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;-><init>(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v6, v2, v11

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0201d9

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0201d8

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v37, v2, v3

    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move/from16 v16, v37

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v21

    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f02008a

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f020089

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v17 .. v26}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v31, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v26, v2, v31

    new-instance v22, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v27, v0

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v31

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    new-instance v27, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v32, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-direct/range {v27 .. v36}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_0
.end method

.method private setPosition()V
    .locals 13

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v3

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const-string v10, " / "

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    add-float v2, v9, v10

    if-eqz v1, :cond_0

    const/4 v9, 0x2

    if-ne v1, v9, :cond_1

    :cond_0
    int-to-float v9, v8

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v4, v9

    int-to-float v9, v0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    int-to-float v9, v8

    sub-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v6, v9

    move v7, v5

    :goto_0
    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v9, :cond_2

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    :goto_1
    return-void

    :cond_1
    int-to-float v9, v8

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v4, v9, v10

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int v5, v9, v10

    int-to-float v9, v8

    sub-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v6, v9, v10

    move v7, v5

    goto :goto_0

    :cond_2
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    goto :goto_1

    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const-string v10, " / "

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    add-float v2, v9, v10

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    :goto_2
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateLayout(Z)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    sub-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v3

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_2

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    :goto_3
    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    sub-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_2

    :cond_7
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_3
.end method

.method private showRecordingTextAnimation(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "RecordingTimerIndicator"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "RecordingTimerIndicator"

    const-string v1, "startRecIconIndicatorBlinking"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecIconIndicator(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    :cond_0
    return-void
.end method

.method public hideIcon()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLayoutChanged(III)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v1

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v6

    mul-float/2addr v6, v10

    const-string v7, " / "

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v7

    add-float v0, v6, v7

    if-eqz p1, :cond_0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    :cond_0
    int-to-float v6, p2

    sub-float/2addr v6, v1

    div-float/2addr v6, v10

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    int-to-float v6, p3

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    int-to-float v6, p2

    sub-float/2addr v6, v0

    div-float/2addr v6, v10

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v4, v6

    move v5, v3

    :goto_0
    iget-boolean v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v6, :cond_2

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    :goto_1
    return-void

    :cond_1
    int-to-float v6, p2

    sub-float/2addr v6, v1

    div-float/2addr v6, v10

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v2, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int v6, p3, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int v3, v6, v7

    int-to-float v6, p2

    sub-float/2addr v6, v0

    div-float/2addr v6, v10

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v4, v6, v7

    move v5, v3

    goto :goto_0

    :cond_2
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    goto :goto_1
.end method

.method public setRecordingIconImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    return-void
.end method

.method public showPauseIcon()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public showResumeIcon()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer(ZI)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v0, "RecordingTimerIndicator"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;-><init>(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startRecIconIndicatorBlinking()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateMaxRecordingTime(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    return-void
.end method

.method public updateRecordingTime(J)V
    .locals 7

    const/16 v5, 0xa

    const/4 v4, 0x2

    const-string v1, "RecordingTimerIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecordingTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    :cond_0
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecTimeIndicator(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startRecIconIndicatorBlinking()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    if-ne v1, v5, :cond_0

    iput v5, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method
