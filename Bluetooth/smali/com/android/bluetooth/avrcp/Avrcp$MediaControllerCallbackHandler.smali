.class Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;
.super Landroid/media/session/MediaController$Callback;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallbackHandler"
.end annotation


# instance fields
.field private final mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->mLocalHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 6

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap45(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0xce

    const/16 v4, 0xcc

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setNPLData(Ljava/util/List;)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "disallow Queue Changed Noti"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "remove MSG_OBSERVE_QUEUE_NOT_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "remove MSG_CHECK_QUEUE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "BdAddress"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "send MSG_CHECK_QUEUE_CHANGED after 500ms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "onSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "com.samsung.android.bt.AVRCP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const-string/jumbo v4, "repeat"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "shuffle"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "repeat"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "shuffle"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClientSessionEvent!!! event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " repeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " shuffle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v7, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
