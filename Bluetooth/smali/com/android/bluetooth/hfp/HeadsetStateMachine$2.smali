.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p2}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;)Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get30(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get32(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->setVoIPProxy(Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;)Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    return-void
.end method
