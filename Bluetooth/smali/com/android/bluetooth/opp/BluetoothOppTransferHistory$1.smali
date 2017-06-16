.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "BluetoothOppTransferHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "android.btopp.intent.action.HIDE_COMPLETE_CLEAR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "direction"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get0(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string/jumbo v5, "android.btopp.intent.extra.CLEAR_OPTION"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "BluetoothOppTransferHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "intent data & internal variable are equal, enabled of clear_menu will be changed ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->finishActivity(I)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->finishActivity(I)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "com.samsung.btopp.intent.action.MSG_SESSION_ERROR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)I

    move-result v5

    if-lez v5, :cond_6

    const/4 v2, 0x1

    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2
.end method
