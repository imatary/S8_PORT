.class public Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.super Ljava/lang/Object;
.source "GlAnimationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;
    }
.end annotation


# static fields
.field public static final GL_ANIM_IDLE:I = 0x0

.field private static final GL_ANIM_READY:I = 0x1

.field protected static final GL_ANIM_RUNNING:I = 0x2

.field private static final TIME_PASSED_UNIT:F = 16.6f


# instance fields
.field private mAccuTimePassed:F

.field public mAnimDuration:J

.field private final mAnimRatioReset:Z

.field private mAnimStartTime:J

.field public mAnimState:I

.field private mAnimTimeOffset:J

.field private mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

.field private mLastIntRatio:F

.field private mLastRatio:F

.field protected mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mMaxIntRatio:F

.field public mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field public mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mStartRatio:F

.field private mUseFixedTimePassed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mUseFixedTimePassed:Z

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mStartRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastIntRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mMaxIntRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimRatioReset:Z

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    return-void
.end method

.method private getTimePassed(F)F
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mUseFixedTimePassed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    const v2, 0x4184cccd    # 16.6f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimTimeOffset:J

    long-to-float v1, v2

    add-float/2addr v1, p1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimStartTime:J

    long-to-float v2, v2

    sub-float v0, v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 0

    return-void
.end method

.method public getLastRatio()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastRatio:F

    return v0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public process(J)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimStartTime:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-ne v4, v6, :cond_3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mStartRatio:F

    iget-wide v6, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimDuration:J

    long-to-float v5, v6

    mul-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimTimeOffset:J

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimRatioReset:Z

    if-eqz v4, :cond_2

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mStartRatio:F

    :cond_2
    iget-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimTimeOffset:J

    long-to-float v4, v4

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->onStart()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_3
    long-to-float v4, p1

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->getTimePassed(F)F

    move-result v3

    iget-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimDuration:J

    long-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastIntRatio:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mMaxIntRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimDuration:J

    long-to-float v4, v4

    div-float v2, v3, v4

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/glcore/GlInterpolator;->getInterpolation(F)F

    move-result v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->applyTransform(F)V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastIntRatio:F

    if-eqz v0, :cond_6

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method public setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimDuration:J

    return-void
.end method

.method public setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    return-void
.end method

.method protected setMaxIntRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mMaxIntRatio:F

    return-void
.end method

.method protected setStartRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mStartRatio:F

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimStartTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastRatio:F

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastIntRatio:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_0
    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    return-void
.end method

.method public startAfter(J)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimStartTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastRatio:F

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mLastIntRatio:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_0
    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAccuTimePassed:F

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->onCancel()V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->onStop()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method protected useFixedTimePassed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mUseFixedTimePassed:Z

    return-void
.end method
