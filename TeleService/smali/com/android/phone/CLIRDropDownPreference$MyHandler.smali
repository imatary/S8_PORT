.class Lcom/android/phone/CLIRDropDownPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRDropDownPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRDropDownPreference;Lcom/android/phone/CLIRDropDownPreference$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;-><init>(Lcom/android/phone/CLIRDropDownPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x190

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v2, v3, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    iput-object v4, v2, Lcom/android/phone/CLIRDropDownPreference;->clirArray:[I

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "CLIRDropDownPreference"

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

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    const-string/jumbo v2, "disable_edit_callerid"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v2, v3, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v2, v3, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "CLIRDropDownPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResponse: CLIR successfully queried, clirArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clirArray[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/CLIRDropDownPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CLIRDropDownPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCLIRResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    const-string/jumbo v1, "CLIRDropDownPreference"

    const-string/jumbo v2, "handleSetCLIRResponse: re get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get3(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
