.class Lcom/amap/api/mapcore2d/ay$2;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ay;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bd;Lcom/amap/api/mapcore2d/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const-string/jumbo v1, "onTouch"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->c(Lcom/amap/api/mapcore2d/ay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->b(Lcom/amap/api/mapcore2d/ay;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->c(Lcom/amap/api/mapcore2d/ay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ay;->d(Lcom/amap/api/mapcore2d/ay;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ag;->c(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->p()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amap/api/mapcore2d/ag;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$2;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/ag;->f()F

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/mapcore2d/u;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
