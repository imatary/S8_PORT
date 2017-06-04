.class Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;
.super Landroid/os/Handler;
.source "HandlerThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHandler"


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->sendMessage(Z)V

    return-void
.end method

.method private sendMessage(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mResultHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v1, "RequestHandler"

    const-string/jumbo v2, "HandlerThreadTask : START_TOKEN +"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->setDataLoaderListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string/jumbo v1, "RequestHandler"

    const-string/jumbo v2, "HandlerThreadTask : START_TOKEN -"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RequestHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not process handler."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    const/4 v3, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$502(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    const/4 v3, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->access$402(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f2f0ff3 -> :sswitch_0
        -0x21524111 -> :sswitch_1
    .end sparse-switch
.end method
