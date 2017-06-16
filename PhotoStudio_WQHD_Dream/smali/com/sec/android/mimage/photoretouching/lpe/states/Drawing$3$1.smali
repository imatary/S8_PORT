.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setNewSPenView()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->forceRecreateSpenView:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
