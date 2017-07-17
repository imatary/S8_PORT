.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "PanService"

    const-string/jumbo v3, "MSG_ON_FOUND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "bt_addr"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v4}, Lcom/android/bluetooth/pan/PanService;->-set0(Z)Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->-get4(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2, v4}, Lcom/android/bluetooth/pan/PanService;->-set1(Lcom/android/bluetooth/pan/PanService;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
