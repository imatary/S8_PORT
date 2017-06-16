.class Lcom/samsung/ble/BleAutoConnectService$6;
.super Landroid/os/Handler;
.source "BleAutoConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ble/BleAutoConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ble/BleAutoConnectService;


# direct methods
.method constructor <init>(Lcom/samsung/ble/BleAutoConnectService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "BleAutoConnectService"

    const-string/jumbo v3, "LE is not connected"

    invoke-static {v2, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v2, v2, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get19(Lcom/samsung/ble/BleAutoConnectService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2, v0}, Lcom/samsung/ble/BleAutoConnectService;->-wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get13()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-set0(I)I

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$6;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/samsung/ble/BleAutoConnectService;->-wrap2(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
