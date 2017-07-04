.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;
.super Landroid/os/Handler;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v2, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$500(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$600(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$600(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->checkMediaResourceUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VideoScreenNail"

    const-string/jumbo v2, " return AutoPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->getSurface()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VideoScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doAction err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$500(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$800(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$900(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$500(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$800(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$102(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$900(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->quitSafely()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method
