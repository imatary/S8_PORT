.class Lcom/android/bluetooth/pan/PanService$TetheringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pan/PanService;Lcom/android/bluetooth/pan/PanService$TetheringReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v2

    const-string/jumbo v4, "PanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDataSaverEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4, v8}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    :cond_0
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/bluetooth/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4}, Lcom/android/bluetooth/pan/PanService;->isPanNapOn()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PanService"

    const-string/jumbo v5, "WIFI connected :: disable PAN NAP (VZW Requirement)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4, v8}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    :cond_1
    const-string/jumbo v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v4, "PanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Intent IT Policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Tethering IT Policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    :cond_2
    const-string/jumbo v4, "PanService"

    const-string/jumbo v5, "Disable Bluetooth Tethering"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4, v8}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    :cond_3
    return-void
.end method
