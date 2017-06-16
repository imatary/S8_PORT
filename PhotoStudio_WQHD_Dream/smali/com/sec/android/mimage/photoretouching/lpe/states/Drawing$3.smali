.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;
.super Landroid/os/Handler;
.source "Drawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpenView()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
