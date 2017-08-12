.class Lcom/android/bluetooth/btservice/AdapterService$2;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "Bluetooth sink service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->-set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v1, "bluetooth_a2dp_sink_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setA2dpPreference(Ljava/lang/String;I)Z

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "A2DP_SINK_MODE : MODE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "Bluetooth sink service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->-set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    return-void
.end method
