.class Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;
.super Ljava/lang/Object;
.source "HighlightWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->prepareNewEvent(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

.field final synthetic val$eventId:I

.field final synthetic val$isTitleRequired:Z


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    iput p2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->val$eventId:I

    iput-boolean p3, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->val$isTitleRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$400(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$300(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->val$eventId:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->initializatEvent(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$400(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->val$isTitleRequired:Z

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v3}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$300(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->applySuitableTheme(ZLandroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$300(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;->this$0:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
