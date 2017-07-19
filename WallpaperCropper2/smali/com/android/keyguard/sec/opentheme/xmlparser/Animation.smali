.class public Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluator;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluatorReverse;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluator;,
        Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluatorReverse;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public key:F

.field public length:I

.field public minInterval:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->r:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->a:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->b:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->ra:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->rb:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewId:I

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->length:I

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->backgroundId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->top:I

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->minInterval:I

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    iput-wide v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    iput-wide v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "round"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ellipse"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "parabola"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "sinX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sinY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "ImageResource"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    aput v2, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    aput v2, v1, v0

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    iget-wide v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->length:I

    new-array v1, v1, [I

    :goto_1
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->length:I

    if-lt v0, v2, :cond_6

    const-string/jumbo v0, "ImageResource"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewId:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 6

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v4, 0x40000000    # 2.0f

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$2;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluator;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluator;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFF)V

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$3;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFF)V

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$4;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 6

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v4, 0x40000000    # 2.0f

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$1;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$5;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$6;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluator;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluator;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$7;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinYEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$8;-><init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method
