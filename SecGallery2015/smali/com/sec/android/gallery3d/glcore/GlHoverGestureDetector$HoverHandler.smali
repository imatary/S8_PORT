.class Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;
.super Landroid/os/Handler;
.source "GlHoverGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$000(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)I

    move-result v4

    sub-int v1, v0, v4

    int-to-long v4, v1

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$300(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$400(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :goto_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v4, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;II)V

    goto :goto_1

    :pswitch_1
    const/16 v3, -0x14

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x14

    goto :goto_2

    :pswitch_3
    const/16 v2, -0x14

    goto :goto_2

    :pswitch_4
    const/16 v2, 0x14

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
