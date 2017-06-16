.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;
.super Ljava/lang/Thread;
.source "GLSuperImpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifPlayThread"
.end annotation


# instance fields
.field maxFrames:I

.field private volatile stopGifThread:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

.field timeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->stopGifThread:Z

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->timeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->maxFrames:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->stopGifThread:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->timeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->maxFrames:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->playGif:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTouchMode:I

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->timeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->timeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->maxFrames:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # operator++ for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$108(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I

    :goto_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string v1, "PEDIT_GLSuperImpose"

    const-string v2, "GifPlayThread running playing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;I)I

    goto :goto_2

    :cond_3
    const-string v1, "PEDIT_GLSuperImpose"

    const-string v2, "GifPlayThread Exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMe()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->stopGifThread:Z

    return-void
.end method
