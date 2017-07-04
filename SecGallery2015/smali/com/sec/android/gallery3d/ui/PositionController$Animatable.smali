.class abstract Lcom/sec/android/gallery3d/ui/PositionController$Animatable;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Animatable"
.end annotation


# instance fields
.field public mAnimationDuration:I

.field public mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field public mAnimationKind:I

.field public mAnimationStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;-><init>()V

    return-void
.end method

.method private static applyInterpolationCurve(IF)F
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, p1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return p1

    :pswitch_0
    sub-float p1, v3, v1

    goto :goto_0

    :pswitch_1
    mul-float v2, v1, v1

    sub-float p1, v3, v2

    goto :goto_0

    :pswitch_2
    mul-float v2, v1, v1

    mul-float/2addr v2, v1

    sub-float p1, v3, v2

    goto :goto_0

    :pswitch_3
    mul-float v2, v1, v1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    sub-float p1, v3, v2

    goto :goto_0

    :pswitch_4
    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PositionController;->access$600()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 12

    const-wide/16 v10, -0x1

    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-wide v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iput-wide v10, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->startSnapback()Z

    move-result v4

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    if-nez v5, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->interpolate(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    :cond_3
    iput-wide v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    invoke-static {v5, v1}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;->applyInterpolationCurve(IF)F

    move-result v1

    goto :goto_2
.end method

.method protected abstract interpolate(F)Z
.end method

.method public abstract startSnapback()Z
.end method

.method public abstract startSnapback(I)Z
.end method
