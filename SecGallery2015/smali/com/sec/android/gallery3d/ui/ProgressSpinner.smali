.class Lcom/sec/android/gallery3d/ui/ProgressSpinner;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"


# static fields
.field private static final ROTATE_SPEED_INNER:F = -0.20571429f


# instance fields
.field private mAnimationTimestamp:J

.field private final mHeight:I

.field private final mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mInnerDegree:F

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0202d6

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mWidth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const v4, -0x41ad593c

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    :cond_1
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    int-to-float v3, p3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-interface {p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v6, v6, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInner:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mWidth:I

    return v0
.end method

.method public startAnimation()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    return-void
.end method
