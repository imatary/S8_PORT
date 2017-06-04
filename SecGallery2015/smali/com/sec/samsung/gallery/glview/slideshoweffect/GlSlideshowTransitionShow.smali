.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;
.super Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
.source "GlSlideshowTransitionShow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;
    }
.end annotation


# static fields
.field private static final MAX_DISPLAY_OBJ_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlSlideshowTransitionShow"


# instance fields
.field private mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field private mIsRandom:Z

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsRandom:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mRandom:Ljava/util/Random;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mMaxDisplayObjCount:I

    return-void
.end method


# virtual methods
.method public getWaitDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mWaitDuration:J

    return-wide v0
.end method

.method protected onCreate()V
    .locals 3

    const-string/jumbo v0, "GlSlideshowTransitionShow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate mLoadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mLoadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCurrentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout()V
    .locals 3

    const-string/jumbo v0, "GlSlideshowTransitionShow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout, mLastUpdateRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mLastUpdateRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mFirstLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->onUpdate(F)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onStop()V

    const-string/jumbo v1, "GlSlideshowTransitionShow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsPausedWithoutAnimationEnd:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "GlSlideshowTransitionShow"

    const-string/jumbo v2, "onStop, swap GL[0]<>[1]"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v0, v1, v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v2, v2, v5

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aput-object v0, v1, v5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsRandom:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mRandom:Ljava/util/Random;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    :cond_0
    return-void
.end method

.method protected onUpdate(F)V
    .locals 10

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    sget-object v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowTransitionShow$TransitionType:[I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_0
    cmpl-float v6, p1, v9

    if-nez v6, :cond_0

    move p1, v5

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mLastUpdateRatio:F

    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    mul-float v2, p1, v6

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsRandom:Z

    if-eqz v6, :cond_1

    neg-float v0, v2

    :goto_1
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsRandom:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    sub-float v1, v6, v2

    :goto_2
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v4, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    neg-float v6, v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->getDelta_sinusoidalOut(FFF)F

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    invoke-virtual {p0, p1, v6, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->getDelta_sinusoidalOut(FFF)F

    move-result v1

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    mul-float v2, p1, v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    neg-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v4, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    mul-float v2, p1, v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getX()F

    move-result v6

    neg-float v7, v2

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    sub-float/2addr v7, v2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v4, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    mul-float v2, p1, v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v7

    invoke-virtual {v3, v6, v2, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    neg-float v7, v7

    add-float/2addr v7, v2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v4, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto/16 :goto_0

    :pswitch_4
    sub-float v6, v9, p1

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mRandom:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mIsRandom:Z

    invoke-static {}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mRandom:Ljava/util/Random;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowTransitionShow$TransitionType:[I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->useFixedTimePassed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimation(ZZ)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->mEffectDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;->setDuration(J)V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    return-void
.end method
