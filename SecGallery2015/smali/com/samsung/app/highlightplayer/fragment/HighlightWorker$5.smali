.class Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;
.super Ljava/lang/Object;
.source "HighlightWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->appInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    # getter for: Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->appInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    # getter for: Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    # getter for: Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
