.class Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallNotifierPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cdma_call_forwarding_indicator"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v0}, Lcom/android/phone/CallNotifier;->-get1(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    const-string/jumbo v1, "return onCfiChanged()"

    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->-wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->-get3(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->-get1(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->-get1(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget v2, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->mSubId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    return-void
.end method
