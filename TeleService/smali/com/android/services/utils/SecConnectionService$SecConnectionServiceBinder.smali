.class final Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;
.super Lcom/android/services/telephony/common/ISecConnectionService$Stub;
.source "SecConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/utils/SecConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecConnectionServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/utils/SecConnectionService;


# direct methods
.method private constructor <init>(Lcom/android/services/utils/SecConnectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/services/utils/SecConnectionService;Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;-><init>(Lcom/android/services/utils/SecConnectionService;)V

    return-void
.end method


# virtual methods
.method public blindTransfer(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantsCount()I
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->getParticipantsCount()I

    move-result v0

    return v0
.end method

.method public getSilence()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getSilence()Z

    move-result v0

    return v0
.end method

.method public requestJanskyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestOfSecVideoProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestRingtoneUri()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->requestRingtoneUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestTPhoneStart(I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendEmptyFlash()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v0}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendRequestVideoCallForTPhone(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendSessionModificationState(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendVideoCallResultForTPhone(Ljava/lang/String;II)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v1}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDisconnectVolteGroupCall(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->setDisconnectVolteGroupCall(Ljava/lang/String;)V

    return-void
.end method

.method public setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v0}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public transfer(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;->this$0:Lcom/android/services/utils/SecConnectionService;

    invoke-static {v0}, Lcom/android/services/utils/SecConnectionService;->-get0(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
