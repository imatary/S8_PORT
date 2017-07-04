.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;
.super Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
.source "GlSlideshowPerspective.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;,
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;
    }
.end annotation


# static fields
.field private static final DISTANCE_VALUE:F = 450.0f

.field private static final IMAGE_DEPTH:I = 0xfa

.field private static final MAX_DISPLAY_OBJ_COUNT:I = 0x6

.field private static final ROTATION_VALUE:F = -40.0f

.field private static final TAG:Ljava/lang/String; = "GlSlideshowPerspective"


# instance fields
.field private mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

.field private mIsFirstFrame:Z

.field private mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

.field private final mPerspectiveOrder:[I

.field private mResetIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsFirstFrame:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    return-void
.end method

.method private resetOutOfScreenObj()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const-string/jumbo v2, "GlSlideshowPerspective"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetOutOfScreenObj, mResetIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v1, v2, -0x1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setDimEx(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    const-string/jumbo v2, "GlSlideshowPerspective"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "roll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getRoll()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",dim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getDim()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setInitialArrayPosition()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x4

    const-string/jumbo v0, "GlSlideshowPerspective"

    const-string/jumbo v1, "setInitialArrayPosition"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v5

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v5

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    neg-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    neg-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    return-void
.end method

.method private setObjInitialPosition(Lcom/sec/samsung/gallery/glview/GlBaseObject;I)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v0, "GlSlideshowPerspective"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObjInitialPosition, obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v2, v2, p2

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {p1, v3, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setDimEx(F)V

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    return-void
.end method


# virtual methods
.method protected firstLoading(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 8

    const-string/jumbo v4, "GlSlideshowPerspective"

    const-string/jumbo v5, "firstLoading start"

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v4, "GlSlideshowPerspective"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adapter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v4, "GlSlideshowPerspective"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAdapter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mInitialLoaded:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mInitialLoaded:I

    const-string/jumbo v4, "GlSlideshowPerspective"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " an initial item. mInitialLoadedCount++"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mInitialLoaded:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mInitialLoaded:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mInitialTotal:I

    if-ne v4, v6, :cond_4

    const-string/jumbo v4, "GlSlideshowPerspective"

    const-string/jumbo v6, "finish loading initial items. update GlObjects"

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    if-ge v2, v4, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mCurrentIndex:I

    add-int v0, v4, v2

    rem-int/2addr v0, v1

    const-string/jumbo v4, "GlSlideshowPerspective"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update obj["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] <- Bitmap["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->setObjInitialPosition(Lcom/sec/samsung/gallery/glview/GlBaseObject;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsFirstFrame:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->prepareNextBitmapResource()V

    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "GlSlideshowPerspective"

    const-string/jumbo v5, "firstLoading end"

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getDistance()F
    .locals 1

    const/high16 v0, 0x43e10000    # 450.0f

    return v0
.end method

.method public getWaitDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsFirstFrame:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mWaitDuration:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xc8

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 5

    const-string/jumbo v1, "GlSlideshowPerspective"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_TRANSITION:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    new-array v1, v1, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    aput v0, v1, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    new-instance v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDistance()F

    move-result v2

    neg-float v2, v2

    mul-int/lit16 v3, v0, 0xfa

    add-int/lit8 v3, v3, 0x32

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$102(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v1, v1, v0

    const/high16 v2, -0x3de00000    # -40.0f

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$202(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$202(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$102(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;F)F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->setInitialArrayPosition()V

    return-void
.end method

.method protected onLayout()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GlSlideshowPerspective"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout, mFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mFirstLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->setInitialArrayPosition()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mFirstLoad:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mLastUpdateRatio:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->onUpdate(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_ZOOM:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->onUpdate(F)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 5

    const-string/jumbo v3, "GlSlideshowPerspective"

    const-string/jumbo v4, "onPause"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "GlSlideshowPerspective"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsPausedWithoutAnimationEnd:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    const/4 v2, 0x5

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    aput v0, v1, v5

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "GlSlideshowPerspective"

    const-string/jumbo v1, "onStop, change state to state_transition"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_TRANSITION:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mCurrentState:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    return-void
.end method

.method protected onUpdate(F)V
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mLastUpdateRatio:F

    const-string/jumbo v13, "GlSlideshowPerspective"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mLastUpdateRatio="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mLastUpdateRatio:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", ratio="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mEffectDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mWaitDuration:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    long-to-float v13, v14

    mul-float v2, p1, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mEffectDuration:J

    long-to-float v13, v14

    cmpg-float v13, v2, v13

    if-gtz v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mEffectDuration:J

    long-to-float v13, v14

    div-float v3, v2, v13

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    if-ge v11, v13, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v9

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    aget v12, v13, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    rem-int/2addr v14, v15

    aget v10, v13, v14

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v5

    const v13, -0x40cccccd    # -0.7f

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    const v13, 0x3f333333    # 0.7f

    cmpg-float v13, v5, v13

    if-gez v13, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v8

    invoke-virtual {v9, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v4

    invoke-virtual {v9, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setDimEx(F)V

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v9, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v10

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    const/high16 v15, -0x3de00000    # -40.0f

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v5

    const v13, -0x40cccccd    # -0.7f

    cmpl-float v13, v5, v13

    if-lez v13, :cond_2

    const v13, 0x3f333333    # 0.7f

    cmpg-float v13, v5, v13

    if-gez v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    const v15, 0x3f99999a    # 1.2f

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    neg-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v10

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    invoke-virtual {v9, v6, v7, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setRoll(F)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mEffectDuration:J

    long-to-float v13, v14

    sub-float v13, v2, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mWaitDuration:J

    long-to-float v14, v14

    div-float v3, v13, v14

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mMaxDisplayObjCount:I

    if-ge v11, v13, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveOrder:[I

    aget v12, v13, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v12

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    const/high16 v15, 0x42200000    # 40.0f

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getDelta_linear(FFF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v13, v13, v12

    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mPerspectiveObjInfoArray:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;->access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$PerspectiveObjPositionInfo;)F

    move-result v14

    invoke-virtual {v9, v13, v14, v8}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    if-ne v13, v11, :cond_4

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mEffectDuration:J

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mWaitDuration:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->setDuration(J)V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mIsFirstFrame:Z

    return-void
.end method

.method updateNextGlObject()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getNextIndex()I

    move-result v2

    const-string/jumbo v4, "GlSlideshowPerspective"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNextGlObject nextIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mResetIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "GlSlideshowPerspective"

    const-string/jumbo v5, "fail to get bitmap."

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBrokenThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mResetIndex:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->resetOutOfScreenObj()V

    return-void
.end method

.method updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V
    .locals 8

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    int-to-float v5, v0

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v1, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;->setObjectAttribute(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "GlSlideshowPerspective"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->requestFullUpload()V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
