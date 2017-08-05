.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.samsung.btopp.intent.action.OPP_FINISH_TRANSFER_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    const-string/jumbo v1, "BluetoothOppTransferActivity"

    const-string/jumbo v2, "FileShare of advanced opp is started So finish opp transfer activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.samsung.btopp.intent.action.BT_ADVOPP_RECOVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothOppTransferActivity"

    const-string/jumbo v2, "FileShare of advanced opp is fail and recovery started. So finish opp transfer activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    goto :goto_0
.end method
