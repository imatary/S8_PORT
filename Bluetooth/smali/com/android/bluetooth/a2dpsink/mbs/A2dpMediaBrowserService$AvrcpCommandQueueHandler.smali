.class final Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;
.super Landroid/os/Handler;
.source "A2dpMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvrcpCommandQueueHandler"
.end annotation


# instance fields
.field mInst:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;->mInst:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;->mInst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    if-nez v0, :cond_0

    const-string/jumbo v2, "A2dpMediaBrowserService"

    const-string/jumbo v3, "Parent class has died; aborting."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap3(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothProfile;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap1(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap4(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/session/PlaybackState;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaMetadata;

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap5(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-wrap2(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
