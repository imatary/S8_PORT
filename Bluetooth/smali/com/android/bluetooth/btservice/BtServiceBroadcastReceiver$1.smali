.class Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BtServiceBroadcastReceiver.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;->this$0:Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string/jumbo v0, "BtServiceBroadcastReceiver"

    const-string/jumbo v1, "A2dpServiceListener :: onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;->this$0:Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->-set0(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;->this$0:Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->-wrap0(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string/jumbo v0, "BtServiceBroadcastReceiver"

    const-string/jumbo v1, "A2dpServiceListener :: onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;->this$0:Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->-set0(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
