.class Lcom/android/phone/TPhoneService$TBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$TBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TBroadcastReceiver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/android/phone/TPhoneService;->-wrap2(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    const-string/jumbo v9, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->-set0(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get7(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v9, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->-set0(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get7(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/TPhoneManager;->disconnectTInCallScreen()V

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-wrap4(Lcom/android/phone/TPhoneService;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v8}, Lcom/android/phone/TPhoneService;->-get7(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneManager;

    move-result-object v8

    iget v8, v8, Lcom/android/phone/TPhoneManager;->mCoverType:I

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v9}, Lcom/android/phone/TPhoneService;->-get7(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneManager;

    move-result-object v9

    iget v9, v9, Lcom/android/phone/TPhoneManager;->mCoverState:I

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get1(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "[tphone] TPhoneService"

    const-string/jumbo v9, "isRinging call state don\'t finish InCallScreen"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "[tphone] TPhoneService"

    const-string/jumbo v9, "finish InCallScreen"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get0(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v9, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get9(Lcom/android/phone/TPhoneService;)Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    return-void

    :cond_8
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_9

    const-string/jumbo v7, "[tphone] TPhoneService"

    const-string/jumbo v9, "Emegency mode set MODE_ENABLED"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    if-ne v4, v12, :cond_a

    const-string/jumbo v7, "[tphone] TPhoneService"

    const-string/jumbo v9, "Emegency mode set MODE_ENABLING"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get1(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get9(Lcom/android/phone/TPhoneService;)Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    const-string/jumbo v7, "[tphone] TPhoneService"

    const-string/jumbo v9, "Emegency mode set MODE_DISABLED"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get1(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get9(Lcom/android/phone/TPhoneService;)Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get2(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    const/16 v10, 0x72

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v9, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v8}, Lcom/android/phone/TPhoneService;->-get7(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/phone/TPhoneManager;->displayTPhone(I)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v9, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string/jumbo v0, "EXTRA_STATE"

    const-string/jumbo v9, "EXTRA_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TBroadcastReceiver : wbState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/android/phone/TPhoneService;->-wrap2(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v9}, Lcom/android/phone/TPhoneService;->-get1(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_0

    if-eqz v6, :cond_e

    if-eq v6, v12, :cond_e

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v9, "[tphone] TPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "WBMode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v9}, Lcom/android/phone/TPhoneService;->-get4(Lcom/android/phone/TPhoneService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v3, v9, :cond_d

    const-string/jumbo v9, "[tphone] TPhoneService"

    const-string/jumbo v10, "WBMode is changed so sendPhoneState again"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v9}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    :cond_d
    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    if-eqz v3, :cond_f

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/phone/TPhoneService;->-set1(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_1

    :cond_f
    move v7, v8

    goto :goto_2

    :cond_10
    const-string/jumbo v8, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const-string/jumbo v9, "TBroadcastReceiver : TPHONE_UPDATE_REQUEST"

    invoke-static {v8, v9, v7}, Lcom/android/phone/TPhoneService;->-wrap2(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v7}, Lcom/android/phone/TPhoneService;->-get6(Lcom/android/phone/TPhoneService;)Lcom/android/phone/TPhoneInstallReceiver;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/android/phone/TPhoneInstallReceiver;->StartPackageUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
