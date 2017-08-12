.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {p2}, Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareCallback:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;->registerCallback(Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] onServiceDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareCallback:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;->unregisterCallback(Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
