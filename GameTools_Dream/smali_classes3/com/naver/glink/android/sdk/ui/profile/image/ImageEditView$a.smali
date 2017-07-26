.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;
.super Landroid/view/animation/Animation;
.source "ImageEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->a:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->b:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->c:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->d:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->a:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->b:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->c(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;->e:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->invalidate()V

    return-void
.end method
