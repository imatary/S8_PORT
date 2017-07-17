.class Lcom/android/bluetooth/hid/HidService$1;
.super Landroid/os/Handler;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap1(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap13(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap13(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/bluetooth/hid/HidService;->-set1(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap2(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap13(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap13(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->-get1(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_3

    const/4 v11, 0x0

    :goto_1
    const-string/jumbo v20, "HidService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_CONNECT_STATE_CHANGED newState:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v8}, Lcom/android/bluetooth/hid/HidService;->-wrap12(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", prevState:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_2

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/bluetooth/hid/HidService;->-wrap7(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_2
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v8, v0, :cond_7

    if-nez v11, :cond_7

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Device is alredy disconnected"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_1

    :cond_4
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Incoming HID connection rejected"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    new-instance v9, Landroid/content/Intent;

    const-class v20, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;

    move-object/from16 v0, v20

    invoke-direct {v9, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v20, "address"

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v20, 0x30000000

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap11(Lcom/android/bluetooth/hid/HidService;[B)Z

    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-set1(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap2(Lcom/android/bluetooth/hid/HidService;[B)Z

    goto :goto_2

    :cond_7
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v8, v0, :cond_8

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "HH disabled in stack"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0a0059

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_9

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->-wrap6(Lcom/android/bluetooth/hid/HidService;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Hid Dev is registered. The connection of BT input devices is terminated!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0a0058

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v8}, Lcom/android/bluetooth/hid/HidService;->-wrap12(I)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap13(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/bluetooth/hid/HidService;->-set1(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap3(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get protocol mode native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7, v14}, Lcom/android/bluetooth/hid/HidService;->-wrap15(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap11(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: virtual unplug native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "sending set protocol mode("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap18(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/android/bluetooth/hid/HidService;->-wrap9(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: set protocol mode native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v18

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v17

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/bluetooth/hid/HidService;->-wrap4(Lcom/android/bluetooth/hid/HidService;[BBBI)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get report native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v7, v1, v5}, Lcom/android/bluetooth/hid/HidService;->-wrap16(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;[BI)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v18

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/android/bluetooth/hid/HidService;->-wrap10(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: set report native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Lcom/android/bluetooth/hid/HidService;->-wrap8(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: send data native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap17(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v20, v4, 0x2

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-set0(Lcom/android/bluetooth/hid/HidService;Z)Z

    :goto_3
    const-string/jumbo v20, "HidService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_ON_GET_ATTR : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " isNormallyType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/hid/HidService;->-get0(Lcom/android/bluetooth/hid/HidService;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-set0(Lcom/android/bluetooth/hid/HidService;Z)Z

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method
