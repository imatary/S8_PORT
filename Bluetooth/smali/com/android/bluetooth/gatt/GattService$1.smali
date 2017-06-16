.class Lcom/android/bluetooth/gatt/GattService$1;
.super Landroid/content/BroadcastReceiver;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.sec.android.action.RESOURCE_BLE_USAGE_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "RECEIVER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ALL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "Settings requests the log"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-get5(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-get5(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "LCD turned on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-get6(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager;->setLcdOnScanParameters()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "LCD turned off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-get6(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager;->setLcdOffScanParameters()V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_BLE_UPDATE_INTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "Downloadable DB update intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-wrap17(Lcom/android/bluetooth/gatt/GattService;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$1;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->-wrap18(Lcom/android/bluetooth/gatt/GattService;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "no such message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
