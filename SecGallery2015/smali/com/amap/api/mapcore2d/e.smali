.class Lcom/amap/api/mapcore2d/e;
.super Landroid/os/Handler;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "handleMessage"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "handle_handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->c(Lcom/amap/api/mapcore2d/b;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;->onMapLoaded()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_4
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore2d/ba;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/mapcore2d/ba;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/ba;-><init>(ZZ)V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ba;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/y;->a(Z)Lcom/amap/api/mapcore2d/dh;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/ed;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;)Lcom/amap/api/mapcore2d/ed;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :pswitch_5
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    :try_start_5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/cm;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/cm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/cm;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    iget-object v3, p0, Lcom/amap/api/mapcore2d/e;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->k(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onFinish()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;Z)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->n(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/amap/api/mapcore2d/an;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/s;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/s;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/an;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/s;->d()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/s;->e()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/s;->f()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/mapcore2d/an;FFF)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/u;->i:Z

    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bd;->a(Lcom/amap/api/mapcore2d/u;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$b;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method
