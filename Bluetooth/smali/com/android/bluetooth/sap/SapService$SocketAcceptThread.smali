.class Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get5(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-wrap0(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-set5(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->-get8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const v5, 0x7f0a00d1

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/sap/SapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-set5(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v2

    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimAccessPermission() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ne v2, v7, :cond_b

    :try_start_1
    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "incoming connection accepted from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->-get8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " automatically as trusted device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-wrap9(Lcom/android/bluetooth/sap/SapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->stopped:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    iget-boolean v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->stopped:Z

    if-nez v4, :cond_7

    :try_start_3
    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "Accepting socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get5(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    if-nez v3, :cond_8

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "mServerSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get5(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/sap/SapService;->-set0(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "Accepted socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get1(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "SapService"

    const-string/jumbo v6, "mConnSocket is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iput-boolean v7, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->stopped:Z

    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "Accept exception: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_a
    :try_start_6
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v6}, Lcom/android/bluetooth/sap/SapService;->-get1(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/sap/SapService;->-set2(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v5

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "getRemoteDevice() = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "catch exception starting obex server session"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-virtual {v5}, Lcom/android/bluetooth/sap/SapService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/sap/SapService;->-set1(Lcom/android/bluetooth/sap/SapService;Z)Z

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapService;->-wrap7(Lcom/android/bluetooth/sap/SapService;)V

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "SapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->-get8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->stopped:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->interrupt()V

    return-void
.end method
