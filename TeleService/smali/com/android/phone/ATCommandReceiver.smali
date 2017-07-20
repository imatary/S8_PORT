.class public Lcom/android/phone/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ATCommandReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

.field private static mServiceClass:I

.field public static sIsATCommandExecuting:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    new-instance v0, Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/ATCommandReceiver$MyHandler;-><init>(Lcom/android/phone/ATCommandReceiver$MyHandler;)V

    sput-object v0, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private commandExecute(ILandroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "commandExecute() request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "parameter"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v3, "REQUEST_ANSWER_A_CALL"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ATA"

    const-string/jumbo v4, "OK"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "ATA"

    const-string/jumbo v4, "ERROR"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "REQUEST_CALL_FORWARDING"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v7, v1, :cond_1

    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleGetCallForwarding(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-eq v3, v1, :cond_2

    const/4 v3, 0x4

    if-ne v3, v1, :cond_3

    :cond_2
    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallForwarding(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "REQUEST_CALL_FORWARDING mode is not vaild - mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "REQUEST_CALL_WAITING"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v7, v1, :cond_4

    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleGetCallWaiting(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-ne v5, v1, :cond_6

    :cond_5
    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallWaiting(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "REQUEST_CALL_WAITING mode is not vaild - mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v3, "REQUEST_CALL_BARRING"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallBarring(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v3, "REQUEST_HOLD_UNHOLD_CALL"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    const-string/jumbo v3, "CHLD"

    const-string/jumbo v4, "OK"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "REQUEST_HOLD_UNHOLD_CALL call is not vaild"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "CHLD"

    const-string/jumbo v4, "ERROR"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v3, "REQUEST_CALL_CHANGE"

    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallChange(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private commandMuteExecute(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commandMuteExecute() parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    const-string/jumbo v1, "=A"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "setMute()"

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->setMute(Z)V

    const-string/jumbo v1, "CMUT"

    const-string/jumbo v2, "\r\nOK\r\n"

    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    return-void

    :cond_1
    const-string/jumbo v1, "=0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "setUnMute()"

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/services/utils/SecTelecomAdapter;->setMute(Z)V

    const-string/jumbo v1, "CMUT"

    const-string/jumbo v2, "\r\nOK\r\n"

    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMute() : flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "CMUT"

    if-eqz v0, :cond_3

    const-string/jumbo v1, "\r\n+CMUT:A\r\n\r\nOK\r\n"

    :goto_1
    invoke-static {v2, v1}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\r\n+CMUT:0\r\n\r\nOK\r\n"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "=?"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "get Mute list"

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string/jumbo v1, "CMUT"

    const-string/jumbo v2, "\r\n+CMUT:0A\r\n\r\nOK\r\n"

    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhone, simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleGetCallForwarding(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string/jumbo v2, "reason"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "class"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetCallForwarding() reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mServiceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    sget v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    if-gez v2, :cond_1

    const/4 v2, 0x1

    sput v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    :cond_1
    sget-object v2, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public static handleGetCallWaiting(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0xb

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string/jumbo v1, "handleGetCallWaiting"

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method public static handleSetCallBarring(Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const-string/jumbo v6, "\""

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v3, v5, v6

    aget-object v1, v5, v9

    const/4 v0, 0x0

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleSetCallBarring() mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", facility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    if-gez v2, :cond_1

    const-string/jumbo v6, "CLCK"

    const-string/jumbo v7, "ERROR"

    invoke-static {v6, v7}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-ne v2, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    sget-object v6, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    sget-object v7, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/16 v8, 0x15

    invoke-virtual {v6, v8, v2, v9, v7}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v0, v1, v3, v6}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    return-void
.end method

.method public static handleSetCallChange(Landroid/os/Bundle;)V
    .locals 12

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const-string/jumbo v7, "parameter"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSetCallChange() parameter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    const-string/jumbo v7, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while trying to acceptCall "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    sget-object v7, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    sget-object v8, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/16 v9, 0x16

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v0, v8, v9}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while trying to changeConnectionType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v7}, Lcom/android/internal/telephony/Phone;->acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while trying to acceptConnectionTypeChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v7, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/Phone;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while trying to rejectConnectionTypeChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "4"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_5

    :try_start_4
    sget-object v7, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    sget-object v8, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/16 v9, 0x16

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v0, v8, v9}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while trying to changeConnectionType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "CCHAN"

    const-string/jumbo v8, "ERROR"

    invoke-static {v7, v8}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static handleSetCallForwarding(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string/jumbo v5, "mode"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "reason"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "number"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "time"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "class"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    sget v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    if-gez v5, :cond_0

    sput v7, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSetCallForwarding() action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSetCallForwarding() number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mServiceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    if-gez v4, :cond_1

    const/16 v4, 0x14

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "CCFC"

    const-string/jumbo v6, "ERROR"

    invoke-static {v5, v6}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    sget-object v6, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    invoke-virtual {v6, v7, v1, v7}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public static handleSetCallWaiting(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const-string/jumbo v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    const-string/jumbo v3, "CCWA"

    const-string/jumbo v4, "OK"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "CCWA"

    const-string/jumbo v4, "ERROR"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isATcommandExecuting()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isATcommandExecuting() sIsATCommandExecuting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ATCommandReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponse() command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->isATcommandExecuting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    return-void
.end method

.method private static setATcommandExecuting(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setATcommandExecuting() isExecuting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    return-void
.end method

.method private testUpdateSecCallDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const-string/jumbo v6, "bgcall"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_1

    const-string/jumbo v6, "ATCommandReceiver"

    const-string/jumbo v7, "telephonyConnection null, return!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    const-string/jumbo v6, "null"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "testUpdateSecCallDetails "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/android/services/telephony/TelephonyConnection;->updateSecCallDetails(Lcom/android/internal/telephony/CallDetails;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x4

    const-string/jumbo v6, "Received CUSTOMER_TEST_REQUSET"

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v6, "There is no extras"

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v6, "command"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "parameter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", parameter : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSupportATCommand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v6, "ATA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v8, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "CCFC"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xb

    invoke-direct {p0, v6, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "CCWA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xc

    invoke-direct {p0, v6, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "CMUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v3}, Lcom/android/phone/ATCommandReceiver;->commandMuteExecute(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "CLCK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0xd

    invoke-direct {p0, v6, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "CHLD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "2,0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "21"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const/4 v6, 0x5

    invoke-direct {p0, v6, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v6, "2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v8, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v6, "CCHAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0xe

    invoke-direct {p0, v6, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_a
    const-string/jumbo v6, "sectest"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "parameter2"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "parameter3"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/phone/ATCommandReceiver;->testUpdateSecCallDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
