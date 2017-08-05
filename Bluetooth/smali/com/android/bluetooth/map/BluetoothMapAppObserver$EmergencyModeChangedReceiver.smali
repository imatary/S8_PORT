.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "EmergencyModeChangedReceiver UPSM(Emergency mode) is OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "MapObsv-EmergencyModeChangedReceiver UPSM(Emergency mode) is OFF"

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    const-string/jumbo v3, "com.samsung.android.email.notifier"

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public register()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "EmergencyModeChangedReceiver register()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    const-string/jumbo v2, "EmergencyModeChangedReceiver unregister()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
