.class Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string/jumbo v2, "Entering PendingCommandState State"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap0(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get3(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "devProp is null. return false. msg is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "defer Message : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap6(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V

    const/16 v18, 0x1

    return v18

    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    const-string/jumbo v18, "BluetoothBondStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Received unhandled event:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    return v18

    :pswitch_0
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "oobdata"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/OobData;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v7, v1, v11, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    move-result v15

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    :cond_5
    :goto_0
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    const-string/jumbo v19, "result : true."

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v18, 0x1

    return v18

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v15

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap1(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap4(Lcom/android/bluetooth/btservice/BondStateMachine;I)I

    move-result v14

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v14, v0, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_8

    :cond_6
    :goto_2
    const-string/jumbo v18, "content://com.sec.knox.provider/AuditLog"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v18, "severity"

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v18, "group"

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v18, "outcome"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v18, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v18, "component"

    const-string/jumbo v19, "BondStateMachine"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "message"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Pairing bluetooth device "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " failed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Reason: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "userid"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v10, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    const/16 v18, 0xb

    move/from16 v0, v18

    if-eq v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mDevices is empty"

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get4(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap11(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    :goto_3
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap5(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v14, v0, :cond_6

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v14, v0, :cond_7

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mDevices is NOT empty."

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const/4 v15, 0x1

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v12, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    :cond_b
    const/16 v18, 0x540

    move/from16 v0, v18

    if-eq v5, v0, :cond_c

    const/16 v18, 0x5c0

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    :cond_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide v20, 0x412b773e00000000L    # 899999.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const v19, 0x186a0

    add-int v13, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v19

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x7

    invoke-static/range {v18 .. v21}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v18, v0

    const-string/jumbo v19, "result : false."

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
