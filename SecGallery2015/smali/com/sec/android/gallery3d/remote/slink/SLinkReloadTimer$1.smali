.class Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;
.super Landroid/os/Handler;
.source "SLinkReloadTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "undefined message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "wait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->access$002(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;Z)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->access$002(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    # getter for: Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mSLinkStorage:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;)Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->notifyContentChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
