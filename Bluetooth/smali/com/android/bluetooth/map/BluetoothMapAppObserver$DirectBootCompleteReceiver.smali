.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectBootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DirectBootCompleteReceiver onReceive: action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    const-string/jumbo v2, "com.samsung.android.email.notifier"

    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->unregister()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: Unknown action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapAppObserver"

    const-string/jumbo v4, "DirectBootCompleteReceiver register()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapAppObserver"

    const-string/jumbo v4, "isUserUnlocked true return here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    const-string/jumbo v2, "DirectBootCompleteReceiver unregister()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

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
