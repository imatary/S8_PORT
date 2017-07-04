.class Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;
.super Landroid/os/Handler;
.source "HighlightWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "HighlightWorker"

    const-string/jumbo v1, "bg start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$000(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "HighlightWorker"

    const-string/jumbo v1, "bg start send activity to show loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$100(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;->bgWorkStarted()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "HighlightWorker"

    const-string/jumbo v1, "bg finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$000(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HighlightWorker"

    const-string/jumbo v1, "bg start send activity to stop loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$100(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;->bgWorkFinished()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
