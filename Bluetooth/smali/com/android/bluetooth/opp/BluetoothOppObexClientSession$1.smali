.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;
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

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] bind service success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;->getService()Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->setSessionContext(Lcom/android/bluetooth/opp/BluetoothOppObexSession;Z)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->setUpdateListener(Lcom/android/bluetooth/opp/IFileShareActionListener;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->updateShareListInfo(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "[ADVANCED OPP]"

    const-string/jumbo v1, "unbind service success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
