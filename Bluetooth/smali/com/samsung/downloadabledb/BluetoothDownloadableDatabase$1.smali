.class Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDownloadableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;


# direct methods
.method constructor <init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/high16 v6, -0x80000000

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onReceive of BR"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterService;->getDownloadableDbObject()Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Failed to get db object, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get2(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Init is not yet successful, waiting for SCPM client to enable, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v4, "sec.app.policy.UPDATE.BT_HFP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SCPM update braodcast received sec.app.policy.UPDATE.BT_HFP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkHFPpolicies()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendHfpPolicyUpdateIntent()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string/jumbo v4, "sec.app.policy.UPDATE.BT_BLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SCPM update braodcast received sec.app.policy.UPDATE.BT_BLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkBLEpolicies()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendBlePolicyUpdateIntent()V

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "sec.app.policy.UPDATE.BT_A2DP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SCPM update braodcast received sec.app.policy.UPDATE.BT_A2DP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkA2DPpolicies()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendA2dpPolicyUpdateIntent()V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_9
    const-string/jumbo v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_5

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "BLE on, verify file write operation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->verifyFilePolicyVersion()V

    goto :goto_0
.end method
