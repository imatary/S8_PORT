.class Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;
.super Ljava/lang/Object;
.source "SpenHapticSound.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenHapticSound"

.field private static final penNameBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Brush"

.field private static final penNameChineseBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

.field private static final penNameFountainPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field private static final penNameInkPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.InkPen"

.field private static final penNameMagicPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final penNameMarker:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field private static final penNameObliquePen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

.field private static final penNamePencil:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil"


# instance fields
.field private activePen:I

.field private bIsSupportPenSound:Z

.field private final mContext:Landroid/content/Context;

.field private mEraserSize:F

.field private mFrameStartX:I

.field private mFrameStartY:I

.field private mIndexBrush:I

.field private mIndexEraser:I

.field private mIndexMarker:I

.field private mIndexPencil:I

.field private mIsCancelStroke:Z

.field private mIsCancelTouch:Z

.field private mIsMultiTouch:Z

.field private mPenSize:F

.field private mRatioFrameHeight:I

.field private mRatioFrameWidth:I

.field private mRemoverSize:F

.field private mSmps:Lcom/samsung/audio/SmpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexPencil:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexMarker:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexBrush:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexEraser:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelStroke:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsMultiTouch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelTouch:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertPenNameToMaxThicknessValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/16 v0, 0x40

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v0, 0x20

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v0, 0x50

    goto :goto_0

    :cond_6
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x6c

    goto :goto_0

    :cond_7
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Eraser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_8
    const/16 v0, 0x64

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelStroke()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelStroke:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->unregisterPensoundSolution()V

    return-void
.end method

.method public onTouchHaptic(Landroid/view/MotionEvent;I)Z
    .locals 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsMultiTouch:Z

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsMultiTouch:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelTouch:Z

    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsMultiTouch:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/16 v3, 0x8

    if-eq p2, v3, :cond_5

    if-eq p2, v5, :cond_5

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-nez v0, :cond_6

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelStroke:Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelTouch:Z

    :cond_6
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIsCancelStroke:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartX:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartX:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartY:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartY:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_7

    packed-switch p2, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    invoke-virtual {v3, v4}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mPenSize:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    :cond_7
    :goto_1
    const-string v3, "SpenHapticSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSound() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {v3, p1}, Lcom/samsung/audio/SmpsManager;->generateSound(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexEraser:I

    invoke-virtual {v3, v4}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mEraserSize:F

    const-string v5, "Eraser"

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->convertPenNameToMaxThicknessValue(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexEraser:I

    invoke-virtual {v3, v4}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRemoverSize:F

    const-string v5, "Eraser"

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->convertPenNameToMaxThicknessValue(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerPensoundSolution()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v2, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    if-nez v2, :cond_1

    const-string v2, "SpenHapticSound"

    const-string v3, "registerPensoundSolution() - Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Lcom/samsung/audio/SmpsManager;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/audio/SmpsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexPencil:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexMarker:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexBrush:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexEraser:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    :cond_0
    :goto_0
    const-string v2, "SpenHapticSound"

    const-string v3, "registerPensoundSolution() - Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "SpenHapticSound"

    const-string v3, "Smps is disabled in this model - UnsatisfiedLinkError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SpenHapticSound"

    const-string v3, "Smps is disabled in this model - NoClassDefFoundError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "SpenHapticSound"

    const-string v3, "Smps is disabled in this model - ExceptionInInitializerError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "SpenHapticSound"

    const-string v3, "Smps is disabled in this model - NoSuchFieldError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    goto :goto_1

    :cond_2
    :try_start_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexPencil:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexPencil:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    invoke-virtual {v2, v3}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    const-string v2, "SpenHapticSound"

    const-string v3, "Smps is disabled in this model - SecurityException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SpenHapticSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized setEraserSize(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mEraserSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPenSize(Ljava/lang/String;F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexPencil:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I

    invoke-virtual {v0, v1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->convertPenNameToMaxThicknessValue(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mPenSize:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexBrush:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mIndexMarker:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->activePen:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setRemoverSize(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRemoverSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenInfo(IIII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mRatioFrameHeight:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartX:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mFrameStartY:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterPensoundSolution()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->bIsSupportPenSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_0

    const-string v0, "SpenHapticSound"

    const-string v1, "unregisterPensoundSolution() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {v0}, Lcom/samsung/audio/SmpsManager;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->mSmps:Lcom/samsung/audio/SmpsManager;

    const-string v0, "SpenHapticSound"

    const-string v1, "unregisterPensoundSolution() - End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
