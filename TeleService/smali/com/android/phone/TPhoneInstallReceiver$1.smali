.class Lcom/android/phone/TPhoneInstallReceiver$1;
.super Landroid/os/Handler;
.source "TPhoneInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneInstallReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneInstallReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v5, "TPhoneDialer install start!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-wrap0(Lcom/android/phone/TPhoneInstallReceiver;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v5, "TPhoneInternal install error!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-wrap1(Lcom/android/phone/TPhoneInstallReceiver;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    invoke-static {v7}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneUpgradeInstallingState(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-get3(Lcom/android/phone/TPhoneInstallReceiver;)Landroid/content/pm/PackageInstaller;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    iget-object v5, v5, Lcom/android/phone/TPhoneInstallReceiver;->sessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v5, "TPhoneDialer install complete!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.skt.prod.dialer.TPHONE_UPDATE_COMPLETE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lcom/android/phone/TPhoneInstallReceiver;->-set0(Lcom/android/phone/TPhoneInstallReceiver;I)I

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-wrap1(Lcom/android/phone/TPhoneInstallReceiver;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_2

    invoke-static {v7}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneUpgradeInstallingState(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-get3(Lcom/android/phone/TPhoneInstallReceiver;)Landroid/content/pm/PackageInstaller;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver$1;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    iget-object v5, v5, Lcom/android/phone/TPhoneInstallReceiver;->sessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v5, "TPhoneDialer install error!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
