.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$1;
.super Ljava/lang/Thread;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartEngineLoaded:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartEngineLoaded:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$002(Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    monitor-enter v2

    :try_start_1
    const-string v1, "saiv_vision"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
