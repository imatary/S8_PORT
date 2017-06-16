.class Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;
.super Landroid/os/Handler;
.source "GLMotionWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$100(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$000()I

    move-result v1

    sget v2, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
