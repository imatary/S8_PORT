.class Lcom/amap/api/mapcore2d/cn$3;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "ontouch"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->f()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ag;->h()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->e(Lcom/amap/api/mapcore2d/cn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cn;->i(Lcom/amap/api/mapcore2d/cn;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->e(Lcom/amap/api/mapcore2d/cn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cn;->f(Lcom/amap/api/mapcore2d/cn;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn$3;->a:Lcom/amap/api/mapcore2d/cn;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->c(Lcom/amap/api/mapcore2d/cn;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->b()Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ag;->b(Lcom/amap/api/mapcore2d/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ZoomControllerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
