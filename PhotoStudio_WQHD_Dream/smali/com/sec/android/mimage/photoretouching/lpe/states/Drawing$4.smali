.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpen()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v7, v8}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v3, "PEDIT_Drawing"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spen() initialization time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
