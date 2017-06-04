.class Lcom/amap/api/mapcore2d/cn$2;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/cn;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/cn;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->e(Lcom/amap/api/mapcore2d/cn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->f(Lcom/amap/api/mapcore2d/cn;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ag;->f()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->f()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ag;->i()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->b(Lcom/amap/api/mapcore2d/cn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->h(Lcom/amap/api/mapcore2d/cn;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->g(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->d()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->b(Lcom/amap/api/mapcore2d/cn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$2;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/amap/api/mapcore2d/cn;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
