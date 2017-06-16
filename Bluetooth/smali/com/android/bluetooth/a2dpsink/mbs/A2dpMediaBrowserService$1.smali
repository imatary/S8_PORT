.class Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;
.super Ljava/lang/Object;
.source "A2dpMediaBrowserService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "A2dpMediaBrowserService"

    const-string/jumbo v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v2, "A2dpMediaBrowserService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got AVRCP device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string/jumbo v0, "A2dpMediaBrowserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-set0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
