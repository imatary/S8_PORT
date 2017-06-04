.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;
.super Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
.source "GlSlideShowTransitionFadeCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;
    }
.end annotation


# static fields
.field private static final CIRCLEUP_DURATION:I = 0x258

.field private static final CIRCLEUP_THRESHOLD:I = 0x2

.field private static final CIRCLE_WAIT_DURATION:I = 0x960

.field private static final FADE_DURATION:I = 0x3e8

.field private static final FADE_WAIT_DURATION:I = 0x7d0

.field public static final IMAGE_GAP:F

.field private static final MAX_DISPLAY_OBJ_COUNT:I

.field private static final TAG:Ljava/lang/String; = "GlSlideShowFadeCircle"


# instance fields
.field private mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

.field private mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

.field private mMoveTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->MAX_DISPLAY_OBJ_COUNT:I

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->IMAGE_GAP:F

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    sget v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->MAX_DISPLAY_OBJ_COUNT:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mMaxDisplayObjCount:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method

.method private calculateFaceCoordinate(Lcom/sec/samsung/gallery/glview/GlBaseObject;FF)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioX:F

    mul-float v0, p2, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioY:F

    mul-float v1, p3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v6

    iget v4, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    const/high16 v6, 0x40200000    # 2.5f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    div-float v5, p2, v7

    sub-float v5, v0, v5

    mul-float v2, v5, v4

    div-float v5, p3, v7

    sub-float/2addr v5, v1

    mul-float v3, v5, v4

    invoke-virtual {p1, v2, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setXY(FF)V

    return-void
.end method

.method private getTransitionType(I)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;
    .locals 1

    const/16 v0, -0x1a

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    goto :goto_0
.end method

.method private isObjectSame(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;)Z
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getHeight(Z)F

    move-result v1

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getHeight(Z)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getWidth(Z)F

    move-result v1

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getWidth(Z)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setEffectDuration(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;)V
    .locals 6

    const-wide/16 v2, 0x3e8

    const-wide/16 v0, 0x258

    sget-object v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_CIRCLE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    if-ne p1, v4, :cond_0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mEffectDuration:J

    const/16 v4, 0x960

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setWaitDuration(I)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    sget-object v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_CIRCLE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    if-ne v4, v5, :cond_1

    :goto_1
    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mEffectDuration:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mEffectDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setDuration(J)V

    return-void

    :cond_0
    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mEffectDuration:J

    const/16 v4, 0x7d0

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setWaitDuration(I)V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private setWaitDuration(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mWaitDuration:J

    return-void
.end method

.method private startCircleUpEffect(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;F)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->requestNewCircleVertex(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setStopDrawing(Z)V

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->requestNewCircleVertex(Z)V

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getWidth(Z)F

    move-result v1

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getHeight(Z)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setWidthBigger(Z)V

    invoke-virtual {p2, p3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleRadius(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFadeEffect(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {p2, p3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    return-void
.end method


# virtual methods
.method public getWaitDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mWaitDuration:J

    return-wide v0
.end method

.method protected onCreate()V
    .locals 3

    const-string/jumbo v0, "GlSlideShowFadeCircle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate mLoadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mLoadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCurrentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout()V
    .locals 3

    const-string/jumbo v0, "GlSlideShowFadeCircle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout, mLastUpdateRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mLastUpdateRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFirstLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->onUpdate(F)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 5

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onStop()V

    const-string/jumbo v1, "GlSlideShowFadeCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mIsPausedWithoutAnimationEnd:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_NEW_SLIDESHOW_CIRCLEUP:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setObjectTodefualt()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->moveToFirst()V

    :cond_0
    const-string/jumbo v1, "GlSlideShowFadeCircle"

    const-string/jumbo v2, "onStop, swap GL[0]<>[1]"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aput-object v0, v1, v2

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mPrevIndex:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mPrevIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method protected onUpdate(F)V
    .locals 10

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mPrevIndex:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mMoveStarted:Z

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mMoveTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    :cond_1
    sget-object v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideShowTransitionFadeCircle$TransitionType:[I

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_0
    cmpl-float v6, p1, v9

    if-nez v6, :cond_3

    move p1, v5

    :cond_3
    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mLastUpdateRatio:F

    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    mul-float v1, p1, v6

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    neg-float v6, v6

    add-float/2addr v6, v1

    sget v7, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->IMAGE_GAP:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v7

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    mul-float v1, p1, v6

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v2, v9}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    sget v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->IMAGE_GAP:F

    sub-float v6, v1, v6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    add-float/2addr v6, v1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v7

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v2, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->startFadeEffect(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;F)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v6, "GlSlideShowFadeCircle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->startCircleUpEffect(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getMoveDirection(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    const/16 v1, -0x19

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setObjectTodefualt()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setObjectTodefualt()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mLastUpdateRatio:F

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mIsPausedWithoutAnimationEnd:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setObjectTodefualt()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mPrevIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mPrevIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    goto :goto_0
.end method

.method public slideImage(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->slideImage(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getMoveDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getTransitionType(I)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mMoveTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    int-to-float v2, p1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->onUpdate(F)V

    :cond_0
    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mNextIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    sget-object v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    invoke-direct {p0, v0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->isObjectSame(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;)Z

    move-result v1

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->USE_NEW_SLIDESHOW_CIRCLEUP:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSlideItem(I)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v4, v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;->KEN_BURN_WITH_CIRCLE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    new-instance v4, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolaterSineInOut33;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolaterSineInOut33;-><init>()V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v5, v3, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->calculateFaceCoordinate(Lcom/sec/samsung/gallery/glview/GlBaseObject;FF)V

    :cond_0
    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCircleUpAnimation(Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->mCurrentTransitionType:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->setEffectDuration(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle$TransitionType;)V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getFaceInfo()[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    move-result-object v4

    goto :goto_0
.end method
