.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;
.super Landroid/os/Handler;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v1, "[ADVANCED OPP] unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BAOI"

    const-string/jumbo v1, "CONNECTION_FAILURE"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v0, v3, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_0
    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v1, "[ADVANCED OPP] Connection Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BtOppObexClient[ADVANCED OPP] Connection Failure"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/16 v1, 0x1f2

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
