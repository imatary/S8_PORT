.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;
.super Landroid/view/animation/Animation;
.source "ImageEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V
    .locals 2

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->a:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->b:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->c:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->d:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->a:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->c:I

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->c:I

    int-to-float v3, v3

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->c:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->d:I

    if-ge v2, v1, :cond_3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->d:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->c(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->invalidate()V

    return-void
.end method
