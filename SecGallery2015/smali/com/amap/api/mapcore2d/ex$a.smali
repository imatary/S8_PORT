.class Lcom/amap/api/mapcore2d/ex$a;
.super Landroid/os/Handler;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/ex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ex$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore2d/fc;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/fc;->b:Lcom/amap/api/mapcore2d/ez;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ez;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore2d/fc;

    iget-object v1, v0, Lcom/amap/api/mapcore2d/fc;->b:Lcom/amap/api/mapcore2d/ez;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/fc;->a:Lcom/amap/api/mapcore2d/cz;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/ez;->a(Lcom/amap/api/mapcore2d/cz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
