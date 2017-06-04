.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;
.super Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
.source "GlSlideshowZoomOnFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;,
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;,
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    }
.end annotation


# static fields
.field private static final FACE_TRANSITION_DURATION:J = 0x7d0L

.field private static final MAX_DISPLAY_OBJ_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlSlideshowZoomOnFace"

.field private static final TRANSITION_DURATION:J = 0x3e8L

.field private static final ZOOMING_DURATION:J = 0x3e8L


# instance fields
.field private mAnimDuration:J

.field private mCurrentPositionX:F

.field private mCurrentPositionY:F

.field private mCurrentScaleValue:F

.field private mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

.field private mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

.field private mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

.field private mPreHeight:F

.field private mPreWidth:F

.field private mSingleFaceAnimTime:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreWidth:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreHeight:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mMaxDisplayObjCount:I

    return-void
.end method

.method private calculateFaceCoordinate(FF)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3fa00000    # 1.25f

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v3, v3

    new-array v3, v3, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioX:F

    mul-float v0, p1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioY:F

    mul-float v1, p2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    new-instance v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    div-float v4, p1, v7

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    div-float v4, p2, v7

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$202(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    sget-object v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->MOVING_TO_FACE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$102(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateSingleFaceAnimTime()F
    .locals 4

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private resetFaceCoordinate(FF)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3fa00000    # 1.25f

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioX:F

    mul-float v0, p1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioY:F

    mul-float v1, p2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    div-float v4, p1, v7

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    div-float v4, p2, v7

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$202(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getWaitDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mWaitDuration:J

    return-wide v0
.end method

.method protected onCreate()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreHeight:F

    return-void
.end method

.method protected onLayout()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->resetFaceCoordinate(FF)V

    const-string/jumbo v0, "GlSlideshowZoomOnFace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout, mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v2, v2, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v2, v2, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreWidth:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreHeight:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->onUpdate(F)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onStop()V

    const-string/jumbo v1, "GlSlideshowZoomOnFace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop(), mIsPausedWithoutAnimationEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mIsPausedWithoutAnimationEnd:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    iput v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    const-string/jumbo v1, "GlSlideshowZoomOnFace"

    const-string/jumbo v2, "onStop, swap GL[0]<>[1]"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v0, v1, v5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v2, v2, v6

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aput-object v0, v1, v6

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    :cond_0
    return-void
.end method

.method protected onUpdate(F)V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3f733333    # 0.95f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLastUpdateRatio:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreWidth:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mPreHeight:F

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLastUpdateRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLastUpdateRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, p1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    sget-object v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    if-ne v5, v6, :cond_9

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "[STATE_SHOWING_IMAGE]"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    if-eqz v5, :cond_7

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFacesInfo.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mSingleFaceAnimTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "face["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", animDone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v7, v7, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v7, v7, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowZoomOnFace$FaceAnimState:[I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "[[MOVING_TO_FACE]]"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    div-float/2addr v5, v12

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "Big ratio"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    mul-float/2addr v5, v9

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    mul-float/2addr v5, v9

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    mul-float/2addr v5, v9

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    sget-object v6, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->ZOOMING_ON_FACE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$102(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentPositionX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mCurrentPositionY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    sub-float v5, p1, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    div-float/2addr v6, v12

    mul-float/2addr v6, v10

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float p1, v5, v6

    if-nez v3, :cond_4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_sinusoidalOut(FFF)F

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_sinusoidalIN(FFF)F

    move-result v2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_sinusoidalOut(FFF)F

    move-result v0

    :goto_3
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deltaX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", deltaY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", deltaScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v0, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDistance()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    mul-float/2addr v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v0

    goto :goto_3

    :pswitch_1
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "[[ZOOMING_ON_FACE]]"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "Big ratio"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;Z)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v5, v5, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_TRANSITIONING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentPositionX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mCurrentPositionY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    div-float/2addr v5, v12

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float v5, p1, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    div-float/2addr v7, v12

    mul-float/2addr v7, v10

    iget v8, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    int-to-float v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float p1, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentScaleValue:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionX:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentPositionY:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mLocalFaceInfo:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;

    aget-object v6, v6, v3

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v2

    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deltaX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", deltaY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", deltaScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v0, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDistance()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "no face"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const/high16 v5, 0x3f400000    # 0.75f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ff33333    # 1.9f

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDelta_linear(FFF)F

    move-result v0

    invoke-virtual {v4, v0, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    goto/16 :goto_1

    :cond_8
    const/high16 v5, 0x3f400000    # 0.75f

    sub-float v5, p1, v5

    const/high16 v6, 0x3e800000    # 0.25f

    div-float p1, v5, v6

    invoke-virtual {p0, v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    div-float v6, p1, v10

    sub-float v6, v11, v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    div-float v6, p1, v10

    add-float/2addr v6, v11

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "GlSlideshowZoomOnFace"

    const-string/jumbo v6, "[STATE_TRANSITIONING_IMAGE]"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v5, :cond_a

    iget-wide v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    const-wide/16 v8, 0x3e8

    sub-long/2addr v6, v8

    long-to-float v5, v6

    iget-wide v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, p1, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    iget-wide v8, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    long-to-float v7, v8

    div-float/2addr v6, v7

    div-float p1, v5, v6

    :goto_4
    invoke-virtual {p0, v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    div-float v6, p1, v10

    sub-float v6, v11, v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    div-float v6, p1, v10

    add-float/2addr v6, v11

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto/16 :goto_1

    :cond_a
    sub-float v5, p1, v11

    div-float p1, v5, v11

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setObjectAttribute(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V
    .locals 14

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v9, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v0, v10

    div-float v6, v9, v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidth:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v4, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    cmpl-float v10, v6, v5

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    const v11, 0x3f99999a    # 1.2f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    float-to-double v10, v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    const/high16 v10, 0x40000000    # 2.0f

    cmpg-float v10, v6, v10

    if-gez v10, :cond_1

    const/high16 v10, 0x3fc00000    # 1.5f

    div-float v10, v4, v10

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_1
    div-float v3, v4, v6

    :goto_1
    move v2, v4

    move v1, v3

    neg-float v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    add-float v7, v10, v11

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v1, v11

    sub-float v8, v10, v11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getDistance()F

    move-result v10

    neg-float v10, v10

    invoke-virtual {p1, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {p1, v2, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setSize(FF)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v11}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    const v11, 0x3f99999a    # 1.2f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_3

    float-to-double v10, v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    const/high16 v10, 0x40000000    # 2.0f

    cmpg-float v10, v6, v10

    if-gez v10, :cond_3

    const/high16 v10, 0x3fc00000    # 1.5f

    div-float v10, v3, v10

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_3
    mul-float v4, v3, v6

    goto :goto_1
.end method

.method public startAnimation(ZZ)V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSlideItem(I)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v2, v2, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->calculateFaceCoordinate(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    array-length v1, v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->setDuration(J)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->calculateSingleFaceAnimTime()F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getFaceInfo()[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    iput-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mAnimDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->setDuration(J)V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;->mSingleFaceAnimTime:F

    goto :goto_1
.end method
