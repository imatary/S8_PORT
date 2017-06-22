.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2$1;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setNewSPenView()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
