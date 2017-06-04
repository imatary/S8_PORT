.class Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;
.super Ljava/lang/Object;
.source "HandlerThreadTask.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadComplete()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    const/4 v2, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->sendMessage(Z)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v1

    const v3, -0x21524111

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDataLoadProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->sendMessage(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;Z)V

    return-void
.end method
