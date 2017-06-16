.class Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$StableState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string/jumbo v1, "StableState(): Entering Off State"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v3, "BluetoothBondStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received unhandled state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "oobdata"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/OobData;

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0, v4, v2, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    sput-boolean v7, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    :goto_0
    return v7

    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3, v0, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3, v0, v1, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get2(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap11(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    sput-boolean v6, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3, v0, v1, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "BluetoothBondStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In stable state, received invalid newState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
