.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-set0(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-get1(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverneedconfirm:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-get2(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;

    move-result-object v1

    const-string/jumbo v2, "confirm"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "BluetoothOppIncomingFileConfirmActivity"

    const-string/jumbo v2, "Confirm when BT Off : USER_CONFIRMATION_DENIED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-get2(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->-get2(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;

    move-result-object v1

    const-string/jumbo v2, "confirm"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method
