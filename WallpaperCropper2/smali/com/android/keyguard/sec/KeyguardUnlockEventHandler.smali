.class public Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field mTempRect:Landroid/graphics/Rect;

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private launch()V
    .locals 3

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsUnlockStarted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v6

    :cond_3
    if-ne v0, v6, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-nez v0, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0

    :cond_5
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v2, "mIsMultiTouch false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v2, "mIsMultiTouch true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    :goto_3
    iput-wide v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_0

    :cond_9
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-nez v0, :cond_c

    :goto_4
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-double v4, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v2, v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    if-nez p1, :cond_d

    :cond_a
    :goto_5
    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v0, :cond_0

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_f

    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v0, Landroid/view/View;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0, v6}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v2

    goto :goto_6

    :pswitch_4
    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-eqz v0, :cond_11

    :goto_7
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_12

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-nez v0, :cond_13

    :cond_10
    :goto_9
    iput-wide v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_0

    :cond_11
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    goto :goto_7

    :cond_12
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v3, "mIsMultiTouch false"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    const/4 v0, 0x3

    if-ne v2, v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    goto :goto_9

    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_15

    :goto_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-nez v0, :cond_16

    :goto_b
    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_UP mDistance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_14

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-eqz v0, :cond_17

    :cond_14
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_0

    :cond_15
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v2, "mIsMultiTouch false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    goto :goto_b

    :cond_17
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_19

    :cond_18
    :goto_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v0, Landroid/view/View;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v2

    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUnlockEventHandler"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    return-void
.end method
