.class Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;->this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "HidIncomingpriorityoffActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;->this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    invoke-static {v0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->-get0(Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HidIncomingpriorityoffActivity"

    const-string/jumbo v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;->this$0:Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
