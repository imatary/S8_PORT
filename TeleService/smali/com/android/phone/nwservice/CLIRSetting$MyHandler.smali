.class Lcom/android/phone/nwservice/CLIRSetting$MyHandler;
.super Landroid/os/Handler;
.source "CLIRSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nwservice/CLIRSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CLIRSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/nwservice/CLIRSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nwservice/CLIRSetting;Lcom/android/phone/nwservice/CLIRSetting$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    iget-boolean v2, v2, Lcom/android/phone/nwservice/CLIRSetting;->mIsForeground:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    iput-object v3, v2, Lcom/android/phone/nwservice/CLIRSetting;->clirArray:[I

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CLIRListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Lcom/android/phone/nwservice/CLIRSetting;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "CLIRListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResponse: CLIR successfully queried, clirArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clirArray[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-virtual {v2, v1}, Lcom/android/phone/nwservice/CLIRSetting;->handleGetCLIRResult([I)V

    goto :goto_0
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CLIRListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "CLIRListPreference"

    const-string/jumbo v2, "handleSetCallWaitingResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-static {v1}, Lcom/android/phone/nwservice/CLIRSetting;->-get0(Lcom/android/phone/nwservice/CLIRSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->removeDialog(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->removeDialog(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
