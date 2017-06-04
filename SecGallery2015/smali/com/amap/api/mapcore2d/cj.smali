.class Lcom/amap/api/mapcore2d/cj;
.super Landroid/os/Handler;
.source "UiSettingsDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ci;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ci;->b(Lcom/amap/api/mapcore2d/ci;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UiSettingsDelegateImp"

    const-string/jumbo v2, "handle_handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ci;->c(Lcom/amap/api/mapcore2d/ci;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->g(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ci;->d(Lcom/amap/api/mapcore2d/ci;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->f(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cj;->a:Lcom/amap/api/mapcore2d/ci;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ci;->e(Lcom/amap/api/mapcore2d/ci;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->e(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
