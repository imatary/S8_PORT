.class public Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

.field private mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/animation/AnimatorSet;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public addAnimation(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    return-void
.end method

.method public addSprite(Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->screenTurnedOff()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;->screenTurnedOff()V

    goto :goto_1
.end method

.method public playAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->screenTurnedOn()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;->screenTurnedOn()V

    goto :goto_1
.end method

.method public resumeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->screenTurnedOn()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;->screenTurnedOn()V

    goto :goto_1
.end method

.method public stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->screenTurnedOff()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;->screenTurnedOff()V

    goto :goto_1
.end method
