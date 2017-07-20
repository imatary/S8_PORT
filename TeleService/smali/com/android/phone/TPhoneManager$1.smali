.class Lcom/android/phone/TPhoneManager$1;
.super Landroid/os/Handler;
.source "TPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneManager;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneManager$1;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "[tphone] TPhoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/phone/tphone/TPhoneConst;->phoneEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendNewIncomingCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendDisconnectCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/TPhoneService;->sendPostOnDialChars(Landroid/os/AsyncResult;C)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/phone/TPhoneManager$1;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-static {v1, v0}, Lcom/android/phone/TPhoneManager;->-wrap1(Lcom/android/phone/TPhoneManager;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_7
    .end sparse-switch
.end method
