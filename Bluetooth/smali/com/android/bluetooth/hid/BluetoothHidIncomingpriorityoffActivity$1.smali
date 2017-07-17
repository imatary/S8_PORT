.class Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHidIncomingpriorityoffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;->this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

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

    iget-object v1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;->this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->finish()V

    :cond_0
    return-void
.end method
