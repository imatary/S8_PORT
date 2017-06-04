.class Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;
.super Landroid/os/Handler;
.source "ComposePhotoCoverObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->startHanderThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->checkCoverUpdate(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$600(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    const/4 v4, 0x3

    const/4 v5, 0x0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V
    invoke-static {v3, v0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$700(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/android/gallery3d/data/MediaItem;IZ)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
