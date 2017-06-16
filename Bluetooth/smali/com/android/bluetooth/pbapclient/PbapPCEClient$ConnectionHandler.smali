.class Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;
.super Landroid/os/Handler;
.source "PbapPCEClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapPCEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionHandler"
.end annotation


# static fields
.field public static final EVENT_CONNECT:I = 0x1

.field public static final EVENT_DISCONNECT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HANDLECONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PbapPCEClient:Connect with null device!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PbapPCEClient"

    const-string/jumbo v1, "Got a connected event for the same device. Ignoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ":Got a connected event when connected to a different device. existing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-set2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-wrap2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    new-instance v1, Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get4(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-set0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/accounts/Account;)Landroid/accounts/Account;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get3(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v4}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get6(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Lcom/android/bluetooth/pbapclient/PbapHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/accounts/Account;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-set1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-wrap1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-wrap0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->connect()V

    return-void
.end method

.method private handleDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pbap disconnecting from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-wrap3(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No existing device connected to service - ignoring device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing device different from disconnected device. existing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " disconnecting device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "PbapPCEClient"

    const-string/jumbo v4, "Unknown Request to Connection Handler"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->handleConnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PbapPCEClient"

    const-string/jumbo v4, "Invalid instance in Connection Handler:Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_6

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->handleDisconnect(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3, v0, v2, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-wrap2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "PbapPCEClient"

    const-string/jumbo v4, "Invalid instance in Connection Handler:Disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
