.class public Lcom/sec/android/app/camera/util/FaceAreaManager;
.super Ljava/lang/Object;
.source "FaceAreaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;,
        Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;
    }
.end annotation


# static fields
.field public static final FACE_XY_CHANGED_DP:F = 50.0f

.field public static final GUIDE_BIG_FACE:I = 0x9

.field public static final GUIDE_LEFT_BOTTOM:I = 0x2

.field public static final GUIDE_LEFT_CENTER:I = 0x1

.field public static final GUIDE_LEFT_TOP:I = 0x0

.field public static final GUIDE_MIDDLE_BOTTOM:I = 0x5

.field public static final GUIDE_MIDDLE_CENTER:I = 0x4

.field public static final GUIDE_MIDDLE_TOP:I = 0x3

.field public static final GUIDE_RIGHT_BOTTOM:I = 0x8

.field public static final GUIDE_RIGHT_CENTER:I = 0x7

.field public static final GUIDE_RIGHT_TOP:I = 0x6

.field public static final MEDIUM_SHOT_AREA_DISTANCE_MAX_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_16_9_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_1_1_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_4_3_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP_1_1:F = 120.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP_4_3:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP:F = 220.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP_1_1:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP_4_3:F = 168.0f

.field public static final MEDIUM_SHOT_VERTICAL_16_9_LEFT_MARGIN_DP:F = 223.0f

.field public static final MEDIUM_SHOT_VERTICAL_1_1_LEFT_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_VERTICAL_4_3_LEFT_MARGIN_DP:F = 143.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP_1_1:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP_4_3:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP:F = 128.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP_1_1:F = 128.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP_4_3:F = 128.0f

.field public static final ORIENTATION_COMPENSATAION_HORIZONTAL:I = 0xb4

.field public static final ORIENTATION_COMPENSATAION_L_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_COMPENSATAION_L_VERTICAL:I = 0x5a

.field public static final ORIENTATION_COMPENSATAION_VERTICAL:I = 0x10e

.field public static final PREVIEW_GALAXY_RATIO_16_9:I = 0x1

.field public static final PREVIEW_GALAXY_RATIO_1_1:I = 0x4

.field public static final PREVIEW_GALAXY_RATIO_4_3:I = 0x2

.field public static final PREVIEW_GALAXY_RATIO_NONE:I = 0x3

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP_1_1:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP_4_3:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP:F = 320.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP_1_1:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP_4_3:F = 240.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP:F = 360.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP_1_1:F = 360.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP_4_3:F = 360.0f

.field public static final PREVIEW_SIZE_WIDTH_DP:F = 640.0f

.field public static final PREVIEW_SIZE_WIDTH_DP_1_1:F = 360.0f

.field public static final PREVIEW_SIZE_WIDTH_DP_4_3:F = 480.0f

.field private static final TAG:Ljava/lang/String; = "FaceAreaManager"


# instance fields
.field mFaceAreaIndicatorView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deNormalize(II)I
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static dpToPx(FLandroid/content/Context;)F
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static getFaceOrientation(Lcom/sec/android/app/camera/interfaces/CameraContext;)I
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5a

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/Util;->calculateOrientation(IZ)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    mul-int/lit8 v0, v1, 0x5a

    goto :goto_1
.end method

.method public static getFacePosition(Lcom/sec/android/app/camera/interfaces/CameraContext;IIII)I
    .locals 8

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFaceOrientation(Lcom/sec/android/app/camera/interfaces/CameraContext;)I

    move-result v1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, p1, p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->updateAdviceFaceAreaIndicatorFromOrientation(Landroid/content/Context;III)Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;

    move-result-object v0

    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->left:I

    if-ge p3, v7, :cond_2

    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->top:I

    if-ge p4, v7, :cond_0

    sparse-switch v1, :sswitch_data_0

    move v2, v4

    :goto_0
    :sswitch_0
    return v2

    :sswitch_1
    const/16 v2, 0x8

    goto :goto_0

    :sswitch_2
    move v2, v3

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->bottom:I

    if-le p4, v7, :cond_1

    sparse-switch v1, :sswitch_data_1

    move v2, v4

    goto :goto_0

    :sswitch_4
    move v2, v3

    goto :goto_0

    :sswitch_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    sparse-switch v1, :sswitch_data_2

    move v2, v4

    goto :goto_0

    :sswitch_7
    move v2, v5

    goto :goto_0

    :sswitch_8
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_a
    move v2, v6

    goto :goto_0

    :cond_2
    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->right:I

    if-le p3, v7, :cond_5

    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->top:I

    if-ge p4, v7, :cond_3

    sparse-switch v1, :sswitch_data_3

    move v2, v4

    goto :goto_0

    :sswitch_b
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_c
    move v2, v3

    goto :goto_0

    :sswitch_d
    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    iget v7, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->bottom:I

    if-le p4, v7, :cond_4

    sparse-switch v1, :sswitch_data_4

    move v2, v4

    goto :goto_0

    :sswitch_e
    const/16 v2, 0x8

    goto :goto_0

    :sswitch_f
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_10
    move v2, v3

    goto :goto_0

    :cond_4
    sparse-switch v1, :sswitch_data_5

    move v2, v4

    goto :goto_0

    :sswitch_11
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_12
    move v2, v5

    goto :goto_0

    :sswitch_13
    move v2, v6

    goto :goto_0

    :sswitch_14
    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    iget v2, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->top:I

    if-ge p4, v2, :cond_6

    sparse-switch v1, :sswitch_data_6

    move v2, v4

    goto :goto_0

    :sswitch_15
    move v2, v6

    goto :goto_0

    :sswitch_16
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_17
    move v2, v5

    goto :goto_0

    :sswitch_18
    const/4 v2, 0x7

    goto :goto_0

    :cond_6
    iget v2, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->bottom:I

    if-le p4, v2, :cond_7

    sparse-switch v1, :sswitch_data_7

    move v2, v4

    goto :goto_0

    :sswitch_19
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1a
    move v2, v6

    goto :goto_0

    :sswitch_1b
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1c
    move v2, v5

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x5a -> :sswitch_9
        0xb4 -> :sswitch_8
        0x10e -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_c
        0x10e -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_e
        0x5a -> :sswitch_f
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_11
        0x5a -> :sswitch_13
        0xb4 -> :sswitch_12
        0x10e -> :sswitch_14
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x0 -> :sswitch_15
        0x5a -> :sswitch_17
        0xb4 -> :sswitch_16
        0x10e -> :sswitch_18
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x0 -> :sswitch_19
        0x5a -> :sswitch_1b
        0xb4 -> :sswitch_1a
        0x10e -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getFaceSize(Landroid/content/Context;IIII)Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;
    .locals 7

    sget-object v1, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->NOT_FACE:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    sub-int v3, p2, p1

    sub-int v0, p4, p3

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v4, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v2

    const-string v4, "FaceDetectionCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v3

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_0

    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->BIG:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    :cond_1
    return-object v1
.end method

.method public static onGuidePositionChanged(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 5

    const v4, 0x7f090290

    const v3, 0x7f09028f

    const-string v1, "FaceAreaManager"

    const-string v2, "onGuidePositionChanged"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static updateAdviceFaceAreaIndicatorFromOrientation(Landroid/content/Context;III)Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;
    .locals 12

    const/high16 v11, 0x42e80000    # 116.0f

    const/high16 v10, 0x43100000    # 144.0f

    const/high16 v9, 0x42b00000    # 88.0f

    const/high16 v8, 0x43000000    # 128.0f

    const/high16 v7, 0x42f00000    # 120.0f

    div-int/lit8 v6, p2, 0x10

    mul-int/lit8 v6, v6, 0x9

    if-ne p3, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    new-instance v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;-><init>()V

    iput v4, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->left:I

    iput v5, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->top:I

    add-int v6, v4, v3

    iput v6, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->right:I

    add-int v6, v5, v1

    iput v6, v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->bottom:I

    return-object v0

    :cond_1
    div-int/lit8 v6, p2, 0x4

    mul-int/lit8 v6, v6, 0x3

    if-ne p3, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    if-ne p3, p2, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_0
    const/high16 v6, 0x43520000    # 210.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v9, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    const/high16 v6, 0x435c0000    # 220.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto :goto_1

    :sswitch_1
    const/high16 v6, 0x43520000    # 210.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v10, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    const/high16 v6, 0x435c0000    # 220.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto :goto_1

    :sswitch_2
    const v6, 0x43908000    # 289.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto :goto_1

    :sswitch_3
    const/high16 v6, 0x435f0000    # 223.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_4
    const/high16 v6, 0x431c0000    # 156.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v9, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    const/high16 v6, 0x43280000    # 168.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_5
    const/high16 v6, 0x431c0000    # 156.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v10, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    const/high16 v6, 0x43280000    # 168.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_6
    const/high16 v6, 0x43510000    # 209.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_7
    const/high16 v6, 0x430f0000    # 143.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    sparse-switch p1, :sswitch_data_2

    goto/16 :goto_1

    :sswitch_8
    invoke-static {v11, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v9, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_9
    invoke-static {v11, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    const/high16 v6, 0x43180000    # 152.0f

    invoke-static {v6, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_a
    invoke-static {v10, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_b
    invoke-static {v9, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v5, v6

    invoke-static {v8, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v3, v6

    invoke-static {v7, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->dpToPx(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x5a -> :sswitch_a
        0xb4 -> :sswitch_9
        0x10e -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public setFaceAreaIndicatorView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHideFaceAreaIndicatorVisible(Z)V
    .locals 3

    const-string v0, "FaceAreaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceAreaIndicatorVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
